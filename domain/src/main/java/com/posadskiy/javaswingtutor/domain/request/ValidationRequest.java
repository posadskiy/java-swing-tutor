package com.posadskiy.javaswingtutor.domain.request;

import io.micronaut.core.annotation.Introspected;
import jakarta.validation.constraints.NotBlank;

@Introspected
public record ValidationRequest(
    @NotBlank String value,
    String value2  // Optional second value for password validation
) {
}

