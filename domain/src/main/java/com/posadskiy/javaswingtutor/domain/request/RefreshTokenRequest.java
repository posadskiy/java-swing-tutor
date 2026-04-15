package com.posadskiy.javaswingtutor.domain.request;

import io.micronaut.core.annotation.Introspected;
import jakarta.validation.constraints.NotBlank;

@Introspected
public record RefreshTokenRequest(@NotBlank String refreshToken) {
}




