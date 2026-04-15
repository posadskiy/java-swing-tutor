package com.posadskiy.javaswingtutor.service.web;

import com.posadskiy.javaswingtutor.domain.dto.TaskDto;
import com.posadskiy.javaswingtutor.service.application.TaskService;
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

@Controller("/api/tasks")
public class TaskController {
    private final TaskService taskService;
    private final UserServiceClient userServiceClient;
    private final AuthServiceClient authServiceClient;

    public TaskController(
        TaskService taskService, UserServiceClient userServiceClient, AuthServiceClient authServiceClient) {
        this.taskService = taskService;
        this.userServiceClient = userServiceClient;
        this.authServiceClient = authServiceClient;
    }

    @Get
    public List<TaskDto> getTasks(
        @QueryValue("lessonId") Optional<Long> lessonId,
        @QueryValue(value = "lang", defaultValue = "") String languageCode,
        HttpRequest<?> request) {
        String lang = determineLanguage(languageCode, request);
        return taskService.getByLesson(lessonId.orElse(null), lang);
    }

    @Get("/{id}")
    public HttpResponse<TaskDto> getTask(
        @PathVariable("id") Long id,
        @QueryValue(value = "lang", defaultValue = "") String languageCode,
        HttpRequest<?> request) {
        String lang = determineLanguage(languageCode, request);
        return taskService.getById(id, lang)
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

