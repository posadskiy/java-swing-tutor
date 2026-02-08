package com.posadskiy.javaswingtutor.infrastructure.config;

import com.posadskiy.javaswingtutor.application.service.AuthenticationService;
import com.posadskiy.javaswingtutor.infrastructure.storage.TokenStorage;
import org.springframework.context.annotation.Lazy;
import org.springframework.http.HttpRequest;
import org.springframework.http.client.ClientHttpRequestExecution;
import org.springframework.http.client.ClientHttpRequestInterceptor;
import org.springframework.http.client.ClientHttpResponse;
import org.springframework.stereotype.Component;

import java.io.IOException;

/**
 * Refreshes the access token before requests when it is expired.
 * Avoids recursion for auth endpoints.
 */
@Component
public class TokenRefreshInterceptor implements ClientHttpRequestInterceptor {

    private static final Object REFRESH_LOCK = new Object();

    private final TokenStorage tokenStorage;
    private final AuthenticationService authService;

    public TokenRefreshInterceptor(TokenStorage tokenStorage, @Lazy AuthenticationService authService) {
        this.tokenStorage = tokenStorage;
        this.authService = authService;
    }

    @Override
    public ClientHttpResponse intercept(
        HttpRequest request,
        byte[] body,
        ClientHttpRequestExecution execution
    ) throws IOException {
        String path = request.getURI().getPath();
        // Skip token refresh for public endpoints
        if (path != null && (
            path.startsWith("/api/auth/") ||
                path.startsWith("/api/users/register") ||
                path.startsWith("/api/code-checking/")
        )) {
            return execution.execute(request, body);
        }

        if (tokenStorage.isExpired() && tokenStorage.getRefreshToken() != null) {
            synchronized (REFRESH_LOCK) {
                if (tokenStorage.isExpired() && tokenStorage.getRefreshToken() != null) {
                    boolean refreshed = authService.refreshToken();
                    if (!refreshed) {
                        // If refresh fails, let the request proceed (it will likely 401)
                        // Token storage is cleared on 401 in refresh flow, or on connection errors
                    }
                }
            }
        }

        return execution.execute(request, body);
    }
}

