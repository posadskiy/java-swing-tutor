package com.posadskiy.javaswingtutor.domain.request;

import io.micronaut.core.annotation.Introspected;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

@Introspected
public record RegisterRequest(
    @NotBlank String login,
    @NotBlank String password,
    @Email String email
) {
}

