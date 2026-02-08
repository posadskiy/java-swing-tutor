package com.posadskiy.javaswingtutor.infrastructure.auth;

import java.util.Optional;

public interface AccessTokenProvider {
    Optional<String> getAccessToken();
}
