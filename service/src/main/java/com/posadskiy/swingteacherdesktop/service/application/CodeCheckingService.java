package com.posadskiy.swingteacherdesktop.service.application;

import com.posadskiy.swingteacherdesktop.domain.dto.CheckerResultDto;
import com.posadskiy.swingteacherdesktop.service.domain.checker.CheckerResult;
import com.posadskiy.swingteacherdesktop.service.domain.checker.CodeChecker;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Application service for code checking operations.
 * Orchestrates code validation using CodeChecker.
 */
@Service
public class CodeCheckingService {

    private final CodeChecker codeChecker;

    public CodeCheckingService() {
        this.codeChecker = new CodeChecker();
    }

    /**
     * Validates user code against expected solution.
     *
     * @param expectedSolution Expected solution format
     * @param userSolution     User's submitted code
     * @return List of validation results
     */
    public List<CheckerResultDto> checkCode(String expectedSolution, String userSolution) {
        List<CheckerResult> results = codeChecker.check(expectedSolution, userSolution);
        return results.stream()
            .map(result -> new CheckerResultDto(result.className(), result.errorCode()))
            .toList();
    }

    /**
     * Validates login format.
     */
    public boolean isValidLogin(String login) {
        return codeChecker.checkLogin(login);
    }

    /**
     * Validates password and confirmation.
     */
    public boolean isValidPassword(String password, String passwordRepeat) {
        return codeChecker.checkPassword(password, passwordRepeat);
    }

    /**
     * Validates email format.
     */
    public boolean isValidEmail(String email) {
        return codeChecker.checkEMail(email);
    }
}

