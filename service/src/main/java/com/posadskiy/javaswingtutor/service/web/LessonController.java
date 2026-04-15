package com.posadskiy.javaswingtutor.service.web;

import com.posadskiy.javaswingtutor.domain.dto.LessonDto;
import com.posadskiy.javaswingtutor.service.application.LessonService;
import com.posadskiy.javaswingtutor.service.infrastructure.client.AuthServiceClient;
import com.posadskiy.javaswingtutor.service.infrastructure.client.UserServiceClient;
import io.micronaut.http.HttpRequest;
import io.micronaut.http.HttpResponse;
import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.annotation.PathVariable;
import io.micronaut.http.annotation.QueryValue;

import java.util.List;
import java.util.Optional;

@Controller("/api/lessons")
public class LessonController {
    private final LessonService lessonService;
    private final UserServiceClient userServiceClient;
    private final AuthServiceClient authServiceClient;

    public LessonController(
        LessonService lessonService, UserServiceClient userServiceClient, AuthServiceClient authServiceClient) {
        this.lessonService = lessonService;
        this.userServiceClient = userServiceClient;
        this.authServiceClient = authServiceClient;
    }

    @Get
    public List<LessonDto> getLessons(
        @QueryValue("categoryId") Optional<Long> categoryId,
        @QueryValue(value = "lang", defaultValue = "") String languageCode,
        HttpRequest<?> request) {
        String lang = determineLanguage(languageCode, request);
        return lessonService.getByCategory(categoryId.orElse(null), lang);
    }

    @Get("/{id}")
    public HttpResponse<LessonDto> getLesson(
        @PathVariable("id") Long id,
        @QueryValue(value = "lang", defaultValue = "") String languageCode,
        HttpRequest<?> request) {
        String lang = determineLanguage(languageCode, request);
        return lessonService.getById(id, lang)
            .map(HttpResponse::ok)
            .orElseGet(HttpResponse::notFound);
    }

    private String determineLanguage(String languageCode, HttpRequest<?> request) {
        if (languageCode != null && !languageCode.isBlank()) {
            return languageCode;
        }
        String token = extractToken(request);
        if (token != null) {
            return authServiceClient.getUserIdFromToken(token)
                .flatMap(userId -> userServiceClient.getPreferredLanguage(userId, token))
                .orElse("en");
        }
        return "en";
    }

    private String extractToken(HttpRequest<?> request) {
        String authHeader = request.getHeaders().get("Authorization");
        if (authHeader != null && authHeader.startsWith("Bearer ")) {
            return authHeader.substring(7);
        }
        return null;
    }
}

