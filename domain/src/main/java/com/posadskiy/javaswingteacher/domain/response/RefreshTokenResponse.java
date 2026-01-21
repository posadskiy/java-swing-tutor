package com.posadskiy.javaswingteacher.domain.response;

import java.time.Instant;

public record RefreshTokenResponse(String accessToken, String refreshToken, Instant expiresAt) {
}




