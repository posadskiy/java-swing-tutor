package com.posadskiy.javaswingteacher.application.service;

import com.posadskiy.javaswingteacher.api.client.CodeCheckingApiClient;
import com.posadskiy.javaswingteacher.domain.dto.CheckerResultDto;
import com.posadskiy.javaswingteacher.domain.repository.ErrorRepository;
import com.posadskiy.javaswingteacher.infrastructure.i18n.I18nService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Application service for task checking operations.
 * Orchestrates code validation and error message formatting.
 */
@Slf4j
@Service
public class TaskCheckingService {

    private final CodeCheckingApiClient codeCheckingApiClient;
    private final ErrorRepository errorRepository;
    private final I18nService i18nService;

    public TaskCheckingService(
        CodeCheckingApiClient codeCheckingApiClient,
        ErrorRepository errorRepository,
        I18nService i18nService
    ) {
        this.codeCheckingApiClient = codeCheckingApiClient;
        this.errorRepository = errorRepository;
        this.i18nService = i18nService;
    }
    
    /**
     * Validates user code against expected solution.
     * 
     * @param expectedAnswer Expected solution format
     * @param userAnswer User's submitted code
     * @return Error message string (empty if valid)
     */
    public String validateCode(String expectedAnswer, String userAnswer) {
        List<CheckerResultDto> checkerResults = codeCheckingApiClient.checkCode(expectedAnswer, userAnswer);
        
        return checkerResults.stream()
            .filter(result -> result.errorCode() != 0)
            .map(this::formatErrorMessage)
            .collect(Collectors.joining("\n"));
    }
    
    /**
     * Gets the raw checker results for detailed analysis.
     */
    public List<CheckerResultDto> checkCode(String expectedAnswer, String userAnswer) {
        return codeCheckingApiClient.checkCode(expectedAnswer, userAnswer);
    }
    
    /**
     * Validates login format.
     */
    public boolean isValidLogin(String login) {
        return codeCheckingApiClient.isValidLogin(login);
    }
    
    /**
     * Validates password and confirmation.
     */
    public boolean isValidPassword(String password, String passwordRepeat) {
        return codeCheckingApiClient.isValidPassword(password, passwordRepeat);
    }
    
    /**
     * Validates email format.
     */
    public boolean isValidEmail(String email) {
        return codeCheckingApiClient.isValidEmail(email);
    }

    private String formatErrorMessage(CheckerResultDto result) {
        var errorText = getErrorText(result.errorCode());
        return i18nService.getString("error.message.format", result.className(), errorText);
    }
    
    private String getErrorText(int errorCode) {
        try {
            return errorRepository.getError(errorCode)
                .map(error -> {
                    String i18nKey = error.errorCode();
                    String translated = i18nService.getString(i18nKey);
                    // If translation not found, return the key or fallback
                    return translated != null && !translated.equals(i18nKey)
                        ? translated
                        : i18nService.getString("error.unknown");
                })
                .orElse(i18nService.getString("error.unknown"));
        } catch (SQLException ex) {
            log.error("Failed to get error text for code: {}", errorCode, ex);
            return i18nService.getString("error.unknown");
        }
    }
}




