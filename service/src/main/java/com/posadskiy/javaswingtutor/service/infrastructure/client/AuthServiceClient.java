package com.posadskiy.javaswingtutor.service.infrastructure.client;

import com.posadskiy.javaswingtutor.domain.request.AuthRequest;
import com.posadskiy.javaswingtutor.domain.request.RefreshTokenRequest;
import com.posadskiy.javaswingtutor.domain.request.RegisterRequest;
import com.posadskiy.javaswingtutor.domain.response.AuthResponse;
import com.posadskiy.javaswingtutor.domain.response.RefreshTokenResponse;
import com.posadskiy.javaswingtutor.service.infrastructure.client.dto.AuthServiceResponse;
import com.posadskiy.javaswingtutor.service.infrastructure.client.dto.AuthServiceUserResponse;
import io.micronaut.http.annotation.Body;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.annotation.Header;
import io.micronaut.http.annotation.Post;
import io.micronaut.http.client.annotation.Client;
import io.micronaut.http.client.exceptions.HttpClientResponseException;
import io.micronaut.json.JsonMapper;
import io.micronaut.scheduling.annotation.ExecuteOn;

import java.time.Instant;
import java.util.Base64;
import java.util.Map;
import java.util.Optional;

import static io.micronaut.scheduling.TaskExecutors.BLOCKING;

@Client("${service.urls.auth}")
public interface AuthServiceClient {

    @Post("/login")
    AuthServiceResponse loginRequest(@Body AuthRequest request);

    @Post("/users")
    void registerRequest(@Body RegisterRequest request);

    @Post("/refresh")
    AuthServiceResponse refreshRequest(@Body RefreshTokenRequest request);

    @Post("/logout")
    void logoutRequest(@Body RefreshTokenRequest request);

    @Get("/users/me")
    AuthServiceUserResponse meRequest(@Header("Authorization") String authorization);

    default Optional<AuthResponse> login(AuthRequest request) {
        try {
            AuthServiceResponse authServiceResponse = loginRequest(request);

            Instant expiresAt = authServiceResponse.expiresIn() != null
                ? Instant.now().plusMillis(authServiceResponse.expiresIn())
                : Instant.now().plusSeconds(3600);

            return Optional.of(new AuthResponse(
                authServiceResponse.accessToken(),
                authServiceResponse.refreshToken(),
                expiresAt));
        } catch (HttpClientResponseException e) {
            return Optional.empty();
        } catch (Exception e) {
            throw new RuntimeException("Failed to communicate with auth-service", e);
        }
    }

    default Optional<AuthResponse> register(RegisterRequest request) {
        try {
            registerRequest(request);
            return login(new AuthRequest(request.login(), request.password()));
        } catch (HttpClientResponseException e) {
            return Optional.empty();
        } catch (Exception e) {
            throw new RuntimeException("Failed to communicate with auth-service", e);
        }
    }

    default Optional<RefreshTokenResponse> refreshToken(String refreshToken) {
        try {
            AuthServiceResponse authServiceResponse =
                refreshRequest(new RefreshTokenRequest(refreshToken));

            Instant expiresAt = authServiceResponse.expiresIn() != null
                ? Instant.now().plusMillis(authServiceResponse.expiresIn())
                : Instant.now().plusSeconds(3600);

            return Optional.of(
                new RefreshTokenResponse(
                    authServiceResponse.accessToken(),
                    authServiceResponse.refreshToken(),
                    expiresAt));
        } catch (HttpClientResponseException e) {
            return Optional.empty();
        } catch (Exception e) {
            throw new RuntimeException("Failed to communicate with auth-service", e);
        }
    }

    default void logout(String refreshToken) {
        try {
            logoutRequest(new RefreshTokenRequest(refreshToken));
        } catch (Exception e) {
            // best effort
        }
    }

    default boolean validateToken(String token) {
        try {
            meRequest("Bearer " + token);
            return true;
        } catch (HttpClientResponseException e) {
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    default Optional<Long> getUserIdFromToken(String token) {
        try {
            AuthServiceUserResponse body = meRequest("Bearer " + token);
            Optional<Long> idFromBody = parseLongSafely(body.id())
                .or(() -> parseLongSafely(body.username()));
            if (idFromBody.isPresent()) {
                return idFromBody;
            }
            return parseUserIdFromJwt(token);
        } catch (Exception e) {
            return parseUserIdFromJwt(token);
        }
    }

    private Optional<Long> parseUserIdFromJwt(String token) {
        try {
            String[] parts = token.split("\\.");
            if (parts.length < 2) {
                return Optional.empty();
            }
            byte[] decoded = Base64.getUrlDecoder().decode(parts[1]);
            String payloadJson = new String(decoded, java.nio.charset.StandardCharsets.UTF_8);
            JsonMapper jsonMapper = JsonMapper.createDefault();
            @SuppressWarnings("unchecked")
            Map<String, Object> payload = jsonMapper.readValue(payloadJson, Map.class);
            Object sub = payload.get("sub");
            return parseLongSafely(sub);
        } catch (Exception e) {
            return Optional.empty();
        }
    }

    private Optional<Long> parseLongSafely(Object value) {
        if (value == null) {
            return Optional.empty();
        }
        if (value instanceof Number) {
            return Optional.of(((Number) value).longValue());
        }
        try {
            return Optional.of(Long.parseLong(value.toString()));
        } catch (NumberFormatException e) {
            return Optional.empty();
        }
    }
}
