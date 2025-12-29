package com.posadskiy.swingteacherdesktop.domain.request;

import jakarta.validation.constraints.NotBlank;

public record CodeCheckRequest(
    @NotBlank String expectedSolution,
    @NotBlank String userSolution
) {
}

