package com.posadskiy.javaswingtutor.service.web;

import com.posadskiy.javaswingtutor.domain.request.AuthRequest;
import com.posadskiy.javaswingtutor.domain.request.RefreshTokenRequest;
import com.posadskiy.javaswingtutor.domain.request.RegisterRequest;
import com.posadskiy.javaswingtutor.domain.response.AuthResponse;
import com.posadskiy.javaswingtutor.domain.response.RefreshTokenResponse;
import com.posadskiy.javaswingtutor.service.infrastructure.client.AuthServiceClient;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/auth")
public class AuthController {
    private final AuthServiceClient authServiceClient;

    public AuthController(AuthServiceClient authServiceClient) {
        this.authServiceClient = authServiceClient;
    }

    @PostMapping("/login")
    public ResponseEntity<AuthResponse> login(@Valid @RequestBody AuthRequest request) {
        return authServiceClient
            .login(request)
            .map(ResponseEntity::ok)
            .orElseGet(() -> ResponseEntity.status(401).build());
    }

    @PostMapping("/register")
    public ResponseEntity<AuthResponse> register(@Valid @RequestBody RegisterRequest request) {
        return authServiceClient
            .register(request)
                .map(ResponseEntity::ok)
            .orElseGet(() -> ResponseEntity.status(400).build());
    }

    @PostMapping("/refresh")
    public ResponseEntity<RefreshTokenResponse> refresh(
        @Valid @RequestBody RefreshTokenRequest request) {
        return authServiceClient
            .refreshToken(request.refreshToken())
            .map(ResponseEntity::ok)
            .orElseGet(() -> ResponseEntity.status(401).build());
    }

    @PostMapping("/logout")
    public ResponseEntity<Void> logout(@Valid @RequestBody RefreshTokenRequest request) {
        authServiceClient.logout(request.refreshToken());
        return ResponseEntity.ok().build();
    }
}

