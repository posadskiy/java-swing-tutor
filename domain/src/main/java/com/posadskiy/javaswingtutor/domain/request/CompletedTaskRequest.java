package com.posadskiy.javaswingtutor.domain.request;

import io.micronaut.core.annotation.Introspected;
import jakarta.validation.constraints.NotNull;

@Introspected
public record CompletedTaskRequest(
    @NotNull Long userId,
    @NotNull Long taskId
) {
}

