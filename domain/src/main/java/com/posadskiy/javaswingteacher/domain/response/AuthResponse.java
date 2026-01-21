package com.posadskiy.javaswingteacher.domain.response;

import java.time.Instant;

public record AuthResponse(String accessToken, String refreshToken, Instant expiresAt) {
}




