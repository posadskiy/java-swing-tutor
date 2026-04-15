package com.posadskiy.javaswingtutor.service.web;

import com.posadskiy.javaswingtutor.domain.request.AuthRequest;
import com.posadskiy.javaswingtutor.domain.request.RefreshTokenRequest;
import com.posadskiy.javaswingtutor.domain.request.RegisterRequest;
import com.posadskiy.javaswingtutor.domain.response.AuthResponse;
import com.posadskiy.javaswingtutor.domain.response.RefreshTokenResponse;
import com.posadskiy.javaswingtutor.service.infrastructure.client.AuthServiceClient;
import io.micronaut.http.HttpResponse;
import io.micronaut.http.HttpStatus;
import io.micronaut.http.annotation.Body;
import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Post;
import io.micronaut.scheduling.annotation.ExecuteOn;
import jakarta.validation.Valid;

import static io.micronaut.scheduling.TaskExecutors.BLOCKING;

@Controller("/api/auth")
@ExecuteOn(BLOCKING)
public class AuthController {
    private final AuthServiceClient authServiceClient;

    public AuthController(AuthServiceClient authServiceClient) {
        this.authServiceClient = authServiceClient;
    }

    @Post("/login")
    public HttpResponse<AuthResponse> login(@Valid @Body AuthRequest request) {
        return authServiceClient
            .login(request)
            .map(HttpResponse::ok)
            .orElseGet(() -> HttpResponse.status(HttpStatus.UNAUTHORIZED));
    }

    @Post("/register")
    public HttpResponse<AuthResponse> register(@Valid @Body RegisterRequest request) {
        return authServiceClient
            .register(request)
                .map(HttpResponse::ok)
            .orElseGet(() -> HttpResponse.status(HttpStatus.BAD_REQUEST));
    }

    @Post("/refresh")
    public HttpResponse<RefreshTokenResponse> refresh(
        @Valid @Body RefreshTokenRequest request) {
        return authServiceClient
            .refreshToken(request.refreshToken())
            .map(HttpResponse::ok)
            .orElseGet(() -> HttpResponse.status(HttpStatus.UNAUTHORIZED));
    }

    @Post("/logout")
    public HttpResponse<Void> logout(@Valid @Body RefreshTokenRequest request) {
        authServiceClient.logout(request.refreshToken());
        return HttpResponse.ok();
    }
}

