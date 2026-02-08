package com.posadskiy.javaswingtutor.service.infrastructure.client.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

public record AuthServiceUserResponse(
    @JsonProperty("id") String id,
    @JsonProperty("username") String username
) {
}
