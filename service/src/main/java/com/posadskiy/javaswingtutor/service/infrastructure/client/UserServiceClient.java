package com.posadskiy.javaswingtutor.service.infrastructure.client;

import com.posadskiy.javaswingtutor.domain.dto.UserDto;
import io.micronaut.core.annotation.Nullable;
import io.micronaut.http.annotation.Body;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.annotation.Header;
import io.micronaut.http.annotation.PathVariable;
import io.micronaut.http.annotation.Post;
import io.micronaut.http.annotation.Put;
import io.micronaut.http.client.annotation.Client;
import io.micronaut.http.client.exceptions.HttpClientResponseException;
import java.util.Map;
import java.util.Optional;

@Client("${service.urls.user}")
public interface UserServiceClient {

    @Get("/v0/user/{id}")
    Map<String, Object> getUserByIdRequest(
        @PathVariable Long id, @Header("Authorization") @Nullable String authorization);

    @Get("/v0/user/me")
    Map<String, Object> getCurrentUserRequest(@Header("Authorization") String authorization);

    @Post("/signup")
    Map<String, Object> registerUserRequest(@Body Map<String, Object> request);

    @Put("/v0/user/{id}")
    Map<String, Object> updateUserRequest(
        @PathVariable Long id,
        @Body Map<String, Object> request,
        @Header("Authorization") String authorization);

    default Optional<UserDto> getUserById(Long id, String token) {
        try {
            String auth = token != null ? "Bearer " + token : null;
            Map<String, Object> body = getUserByIdRequest(id, auth);
            return Optional.of(mapToUserDto(body));
        } catch (HttpClientResponseException e) {
            return Optional.empty();
        } catch (Exception e) {
            throw new RuntimeException("Failed to communicate with user-service", e);
        }
    }

    default Optional<UserDto> getCurrentUser(String token) {
        try {
            Map<String, Object> body = getCurrentUserRequest("Bearer " + token);
            return Optional.of(mapToUserDto(body));
        } catch (HttpClientResponseException e) {
            return Optional.empty();
        } catch (Exception e) {
            throw new RuntimeException("Failed to communicate with user-service", e);
        }
    }

    default Optional<UserDto> registerUser(String username, String password, String email) {
        try {
            Map<String, Object> request = Map.of(
                "username", username,
                "password", password,
                "email", email
            );
            Map<String, Object> body = registerUserRequest(request);
            return Optional.of(mapToUserDto(body));
        } catch (HttpClientResponseException e) {
            return Optional.empty();
        } catch (Exception e) {
            throw new RuntimeException("Failed to communicate with user-service", e);
        }
    }

    default Optional<String> getPreferredLanguage(Long userId, String token) {
        Optional<UserDto> user = getUserById(userId, token);
        if (user.isPresent()) {
            return Optional.of(user.get().preferredLanguage() != null ? user.get().preferredLanguage() : "en");
        }
        return Optional.of("en");
    }

    default void setPreferredLanguage(Long userId, String languageCode, String token) {
        try {
            Optional<UserDto> currentUser = getUserById(userId, token);
            if (currentUser.isPresent()) {
                Map<String, Object> updateRequest = Map.of(
                    "username", currentUser.get().login() != null ? currentUser.get().login() : ""
                );

                updateUserRequest(userId, updateRequest, "Bearer " + token);
            }
        } catch (Exception e) {
            // best effort
        }
    }

    private UserDto mapToUserDto(Map<String, Object> userMap) {
        Long id = extractLong(userMap.get("id"));
        String email = extractString(userMap.get("email"));
        String username = extractString(userMap.get("username"));
        String login = username != null ? username : extractString(userMap.get("login"));

        Integer logins = extractInteger(userMap.get("logins"));
        Integer lastLogin = extractInteger(userMap.get("lastLogin"));
        Boolean completeTraining = extractBoolean(userMap.get("completeTraining"));
        String preferredLanguage = extractString(userMap.get("preferredLanguage"));

        return new UserDto(
            id,
            email,
            login,
            logins,
            lastLogin,
            completeTraining,
            preferredLanguage);
    }

    private Long extractLong(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof Number) {
            return ((Number) value).longValue();
        }
        if (value instanceof String) {
            try {
                return Long.parseLong((String) value);
            } catch (NumberFormatException e) {
                return null;
            }
        }
        return null;
    }

    private Integer extractInteger(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof Number) {
            return ((Number) value).intValue();
        }
        if (value instanceof String) {
            try {
                return Integer.parseInt((String) value);
            } catch (NumberFormatException e) {
                return null;
            }
        }
        return null;
    }

    private Boolean extractBoolean(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof Boolean) {
            return (Boolean) value;
        }
        if (value instanceof String) {
            return Boolean.parseBoolean((String) value);
        }
        return null;
    }

    private String extractString(Object value) {
        if (value == null) {
            return null;
        }
        return value.toString();
    }
}
