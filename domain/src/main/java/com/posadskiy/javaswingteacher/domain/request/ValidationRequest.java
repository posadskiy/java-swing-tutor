package com.posadskiy.javaswingteacher.domain.request;

import jakarta.validation.constraints.NotBlank;

public record ValidationRequest(
    @NotBlank String value,
    String value2  // Optional second value for password validation
) {
}

