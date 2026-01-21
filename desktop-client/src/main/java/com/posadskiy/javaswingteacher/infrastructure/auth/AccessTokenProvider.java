package com.posadskiy.javaswingteacher.infrastructure.auth;

import java.util.Optional;

public interface AccessTokenProvider {
    Optional<String> getAccessToken();
}
