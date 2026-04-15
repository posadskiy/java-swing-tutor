package com.posadskiy.javaswingtutor.service.web;

import com.posadskiy.javaswingtutor.domain.dto.CheckerResultDto;
import com.posadskiy.javaswingtutor.domain.request.CodeCheckRequest;
import com.posadskiy.javaswingtutor.domain.request.ValidationRequest;
import com.posadskiy.javaswingtutor.service.application.CodeCheckingService;
import io.micronaut.http.annotation.Body;
import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Post;
import jakarta.validation.Valid;

import java.util.List;

@Controller("/api/code-checking")
public class CodeCheckingController {

    private final CodeCheckingService codeCheckingService;

    public CodeCheckingController(CodeCheckingService codeCheckingService) {
        this.codeCheckingService = codeCheckingService;
    }

    @Post("/check")
    public List<CheckerResultDto> checkCode(@Body CodeCheckRequest request) {
        // Handle null/blank solutions - convert to empty strings
        String expectedSolution = request.expectedSolution() != null ? request.expectedSolution() : "";
        String userSolution = request.userSolution() != null ? request.userSolution() : "";
        return codeCheckingService.checkCode(expectedSolution, userSolution);
    }

    @Post("/validate/login")
    public boolean validateLogin(@Valid @Body ValidationRequest request) {
        return codeCheckingService.isValidLogin(request.value());
    }

    @Post("/validate/password")
    public boolean validatePassword(@Valid @Body ValidationRequest request) {
        return codeCheckingService.isValidPassword(request.value(), request.value2());
    }

    @Post("/validate/email")
    public boolean validateEmail(@Valid @Body ValidationRequest request) {
        return codeCheckingService.isValidEmail(request.value());
    }
}

