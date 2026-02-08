package com.posadskiy.javaswingtutor.domain.response;

import java.time.Instant;

public record AuthResponse(String accessToken, String refreshToken, Instant expiresAt) {
}




