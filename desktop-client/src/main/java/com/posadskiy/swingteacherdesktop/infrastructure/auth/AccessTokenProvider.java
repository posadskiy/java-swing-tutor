package com.posadskiy.swingteacherdesktop.infrastructure.auth;

import java.util.Optional;

public interface AccessTokenProvider {
    Optional<String> getAccessToken();
}
