package com.posadskiy.javaswingtutor.service.web;

import com.posadskiy.javaswingtutor.domain.dto.CompletedTaskDto;
import com.posadskiy.javaswingtutor.domain.request.CompletedTaskRequest;
import com.posadskiy.javaswingtutor.service.application.CompletedTaskService;
import io.micronaut.http.HttpResponse;
import io.micronaut.http.annotation.Body;
import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.annotation.PathVariable;
import io.micronaut.http.annotation.Post;
import io.micronaut.http.annotation.QueryValue;
import jakarta.validation.Valid;

import java.util.List;

@Controller("/api/completed-tasks")
public class CompletedTaskController {
    private final CompletedTaskService completedTaskService;

    public CompletedTaskController(CompletedTaskService completedTaskService) {
        this.completedTaskService = completedTaskService;
    }

    @Get
    public List<CompletedTaskDto> byUser(@QueryValue("userId") Long userId) {
        return completedTaskService.findByUser(userId);
    }

    @Get("/{userId}/{taskId}")
    public HttpResponse<CompletedTaskDto> byUserAndTask(
        @PathVariable("userId") Long userId,
        @PathVariable("taskId") Long taskId
    ) {
        return completedTaskService.findByUserAndTask(userId, taskId)
            .map(HttpResponse::ok)
            .orElseGet(HttpResponse::notFound);
    }

    @Post
    public CompletedTaskDto create(@Valid @Body CompletedTaskRequest request) {
        return completedTaskService.create(request);
    }
}

