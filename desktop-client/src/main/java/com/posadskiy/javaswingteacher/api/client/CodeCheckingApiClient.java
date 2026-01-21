package com.posadskiy.javaswingteacher.api.client;

import com.posadskiy.javaswingteacher.domain.dto.CheckerResultDto;
import com.posadskiy.javaswingteacher.domain.request.CodeCheckRequest;
import com.posadskiy.javaswingteacher.domain.request.ValidationRequest;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.client.RestClient;
import org.springframework.web.client.RestClientException;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

/**
 * REST API client for code checking operations.
 */
@Slf4j
public class CodeCheckingApiClient {

    private final RestClient client;

    public CodeCheckingApiClient(RestClient client) {
        this.client = client;
    }

    /**
     * Checks user code against expected solution.
     */
    public List<CheckerResultDto> checkCode(String expectedSolution, String userSolution) {
        try {
            var request = new CodeCheckRequest(expectedSolution, userSolution);
            var response = client.post()
                .uri("/api/code-checking/check")
                .body(request)
                .retrieve()
                .body(CheckerResultDto[].class);

            return Optional.ofNullable(response)
                .map(arr -> Arrays.asList(arr))
                .orElse(List.of());
        } catch (RestClientException ex) {
            log.error("Failed to check code", ex);
            throw new RuntimeException("Failed to check code: " + ex.getMessage(), ex);
        }
    }

    /**
     * Validates login format.
     */
    public boolean isValidLogin(String login) {
        try {
            var request = new ValidationRequest(login, null);
            Boolean result = client.post()
                .uri("/api/code-checking/validate/login")
                .body(request)
                .retrieve()
                .body(Boolean.class);

            return Optional.ofNullable(result).orElse(false);
        } catch (RestClientException ex) {
            log.error("Failed to validate login", ex);
            return false;
        }
    }

    /**
     * Validates password and confirmation.
     */
    public boolean isValidPassword(String password, String passwordRepeat) {
        try {
            var request = new ValidationRequest(password, passwordRepeat);
            Boolean result = client.post()
                .uri("/api/code-checking/validate/password")
                .body(request)
                .retrieve()
                .body(Boolean.class);

            return Optional.ofNullable(result).orElse(false);
        } catch (RestClientException ex) {
            log.error("Failed to validate password", ex);
            return false;
        }
    }

    /**
     * Validates email format.
     */
    public boolean isValidEmail(String email) {
        try {
            var request = new ValidationRequest(email, null);
            Boolean result = client.post()
                .uri("/api/code-checking/validate/email")
                .body(request)
                .retrieve()
                .body(Boolean.class);

            return Optional.ofNullable(result).orElse(false);
        } catch (RestClientException ex) {
            log.error("Failed to validate email", ex);
            return false;
        }
    }
}

