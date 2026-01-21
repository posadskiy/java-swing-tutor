package com.posadskiy.javaswingteacher.api.client;

import com.posadskiy.javaswingteacher.api.mapper.DtoMapper;
import com.posadskiy.javaswingteacher.application.service.AuthenticationService;
import com.posadskiy.javaswingteacher.domain.dto.UserDto;
import com.posadskiy.javaswingteacher.domain.model.User;
import com.posadskiy.javaswingteacher.domain.repository.UserRepository;
import com.posadskiy.javaswingteacher.domain.request.RegisterRequest;
import org.springframework.http.MediaType;
import org.springframework.web.client.RestClient;
import org.springframework.web.client.RestClientException;

import java.sql.SQLException;
import java.util.Optional;

/**
 * REST API client for User operations.
 */
public class UserApiClient implements UserRepository {
    
    private final RestClient client;
    private final AuthenticationService authService;
    
    public UserApiClient(RestClient client, AuthenticationService authService) {
        this.client = client;
        this.authService = authService;
    }
    
    @Override
    public void addUser(User user) throws SQLException {
        try {
            var request = new RegisterRequest(user.login(), user.password(), user.email());
            var response = client.post()
                .uri("/api/users/register")
                .contentType(MediaType.APPLICATION_JSON)
                .body(request)
                .retrieve()
                .body(UserDto.class);

            if (response == null) {
                throw new SQLException("Failed to register user: " + user.login());
            }
        } catch (RestClientException ex) {
            throw new SQLException("Failed to register user: " + user.login(), ex);
        }
    }
    
    @Override
    public void deleteUser(User user) {
        throw new UnsupportedOperationException("deleteUser is not supported over REST");
    }
    
    @Override
    public void deleteUser(int id) {
        throw new UnsupportedOperationException("deleteUser is not supported over REST");
    }
    
    @Override
    public Optional<User> getUser(int id) throws SQLException {
        try {
            return Optional.ofNullable(
                    client.get()
                        .uri("/api/users/{id}", id)
                        .retrieve()
                        .body(UserDto.class)
                )
                .map(DtoMapper::toUser);
        } catch (RestClientException ex) {
            throw new SQLException("Failed to fetch user by id: " + id, ex);
        }
    }
    
    @Override
    public Optional<User> getUserByLogin(String login) throws SQLException {
        try {
            return Optional.ofNullable(
                    client.get()
                        .uri(uriBuilder -> uriBuilder
                            .path("/api/users")
                            .queryParam("login", login)
                            .build())
                        .retrieve()
                        .body(UserDto.class)
                )
                .map(DtoMapper::toUser);
        } catch (RestClientException ex) {
            throw new SQLException("Failed to fetch user by login: " + login, ex);
        }
    }
    
    @Override
    public Optional<User> getUserByLoginAndPassword(String login, String password) throws SQLException {
        try {
            boolean success = authService.login(login, password);
            if (!success) {
                return Optional.empty();
            }
            
            var userDto = client.get()
                .uri("/api/users/me")
                .retrieve()
                .body(UserDto.class);
            
            return DtoMapper.toUserOptional(userDto);
        } catch (RestClientException ex) {
            throw new SQLException("Authentication failed for user: " + login, ex);
        }
    }

    public void updatePreferredLanguage(String languageCode) throws SQLException {
        try {
            client.put()
                .uri(uriBuilder -> uriBuilder
                    .path("/api/users/me/language")
                    .queryParam("lang", languageCode)
                    .build())
                .retrieve()
                .toBodilessEntity();
        } catch (RestClientException ex) {
            throw new SQLException("Failed to update preferred language: " + languageCode, ex);
        }
    }
}

