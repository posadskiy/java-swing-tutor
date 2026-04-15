package com.posadskiy.javaswingtutor.service.web;

import com.posadskiy.javaswingtutor.domain.dto.UserDto;
import com.posadskiy.javaswingtutor.domain.request.RegisterRequest;
import com.posadskiy.javaswingtutor.service.infrastructure.client.AuthServiceClient;
import com.posadskiy.javaswingtutor.service.infrastructure.client.UserServiceClient;
import io.micronaut.http.HttpRequest;
import io.micronaut.http.HttpResponse;
import io.micronaut.http.HttpStatus;
import io.micronaut.http.annotation.Body;
import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.annotation.PathVariable;
import io.micronaut.http.annotation.Post;
import io.micronaut.http.annotation.Put;
import io.micronaut.http.annotation.QueryValue;
import io.micronaut.scheduling.annotation.ExecuteOn;

import static io.micronaut.scheduling.TaskExecutors.BLOCKING;

@Controller("/api/users")
@ExecuteOn(BLOCKING)
public class UserController {
    private final UserServiceClient userServiceClient;
    private final AuthServiceClient authServiceClient;

    public UserController(UserServiceClient userServiceClient, AuthServiceClient authServiceClient) {
        this.userServiceClient = userServiceClient;
        this.authServiceClient = authServiceClient;
    }

    @Get("/me")
    public HttpResponse<UserDto> getCurrentUser(HttpRequest<?> request) {
        String token = extractToken(request);
        if (token == null) {
            return HttpResponse.status(HttpStatus.UNAUTHORIZED);
        }
        return authServiceClient.getUserIdFromToken(token)
            .flatMap(userId -> userServiceClient.getUserById(userId, token))
            .map(HttpResponse::ok)
            .orElseGet(() -> HttpResponse.status(HttpStatus.UNAUTHORIZED));
    }

    @Get("/{id}")
    public HttpResponse<UserDto> getUser(
        @PathVariable("id") Long id, HttpRequest<?> request) {
        String token = extractToken(request);
        return userServiceClient
            .getUserById(id, token)
            .map(HttpResponse::ok)
            .orElseGet(HttpResponse::notFound);
    }

    @Put("/me/language")
    public HttpResponse<Void> updatePreferredLanguage(
        @QueryValue("lang") String languageCode,
        HttpRequest<?> request) {
        String token = extractToken(request);
        if (token == null) {
            return HttpResponse.status(HttpStatus.UNAUTHORIZED);
        }
        return authServiceClient.getUserIdFromToken(token)
            .map(userId -> {
            userServiceClient.setPreferredLanguage(userId, languageCode, token);
                return HttpResponse.<Void>ok();
            })
            .orElseGet(() -> HttpResponse.status(HttpStatus.UNAUTHORIZED));
    }

    @Post("/register")
    public HttpResponse<UserDto> register(@Body RegisterRequest request) {
        return userServiceClient
            .registerUser(request.login(), request.password(), request.email())
            .map(HttpResponse::ok)
            .orElseGet(() -> HttpResponse.status(HttpStatus.BAD_REQUEST));
    }

    private String extractToken(HttpRequest<?> request) {
        String authHeader = request.getHeaders().get("Authorization");
        if (authHeader != null && authHeader.startsWith("Bearer ")) {
            return authHeader.substring(7);
        }
        return null;
    }
}

