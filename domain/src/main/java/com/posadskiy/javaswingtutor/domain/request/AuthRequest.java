package com.posadskiy.javaswingtutor.domain.request;

import io.micronaut.core.annotation.Introspected;
import jakarta.validation.constraints.NotBlank;

@Introspected
public record AuthRequest(
    @NotBlank String username,
    @NotBlank String password
) {
}

