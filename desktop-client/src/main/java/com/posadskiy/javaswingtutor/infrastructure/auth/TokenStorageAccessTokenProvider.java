package com.posadskiy.javaswingtutor.infrastructure.auth;

import com.posadskiy.javaswingtutor.infrastructure.storage.TokenStorage;
import org.springframework.stereotype.Component;

import java.util.Optional;

@Component
public class TokenStorageAccessTokenProvider implements AccessTokenProvider {
    private final TokenStorage tokenStorage;

    public TokenStorageAccessTokenProvider(TokenStorage tokenStorage) {
        this.tokenStorage = tokenStorage;
    }

    @Override
    public Optional<String> getAccessToken() {
        return Optional.ofNullable(tokenStorage.getAccessToken())
            .filter(token -> !token.isBlank());
    }
}
