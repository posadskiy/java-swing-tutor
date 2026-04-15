package com.posadskiy.javaswingtutor.service.infrastructure.security;

import com.posadskiy.javaswingtutor.service.infrastructure.client.AuthServiceClient;
import io.micronaut.http.HttpRequest;
import io.micronaut.security.authentication.Authentication;
import io.micronaut.security.filters.AuthenticationFetcher;
import jakarta.inject.Singleton;
import java.util.Collections;
import org.reactivestreams.Publisher;
import reactor.core.publisher.Mono;

@Singleton
public class BearerAuthenticationFetcher implements AuthenticationFetcher<HttpRequest<?>> {
    private static final String AUTHORIZATION_HEADER = "Authorization";
    private static final String BEARER_PREFIX = "Bearer ";

    private final AuthServiceClient authServiceClient;

    public BearerAuthenticationFetcher(AuthServiceClient authServiceClient) {
        this.authServiceClient = authServiceClient;
    }

    @Override
    public Publisher<Authentication> fetchAuthentication(HttpRequest<?> request) {
        String header = request.getHeaders().get(AUTHORIZATION_HEADER);
        if (header == null || !header.startsWith(BEARER_PREFIX)) {
            return Mono.empty();
        }

        String token = header.substring(BEARER_PREFIX.length());
        return authServiceClient.getUserIdFromToken(token)
            .<Publisher<Authentication>>map(userId -> Mono.just(Authentication.build(userId.toString(), Collections.emptyMap())))
            .orElseGet(Mono::empty);
    }
}
