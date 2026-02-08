package com.posadskiy.javaswingtutor.service.infrastructure.client.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

public record AuthServiceResponse(
    @JsonProperty("access_token") String accessToken,
    @JsonProperty("refresh_token") String refreshToken,
    @JsonProperty("token_type") String tokenType,
    @JsonProperty("expires_in") Long expiresIn,
    @JsonProperty("username") String username
) {
}
