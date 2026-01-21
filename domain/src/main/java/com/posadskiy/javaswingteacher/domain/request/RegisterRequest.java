package com.posadskiy.javaswingteacher.domain.request;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

public record RegisterRequest(
    @NotBlank String login,
    @NotBlank String password,
    @Email String email
) {
}

