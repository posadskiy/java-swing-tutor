package com.posadskiy.javaswingtutor.domain.request;

import jakarta.validation.constraints.NotBlank;

public record AuthRequest(
    @NotBlank String username,
    @NotBlank String password
) {
}

