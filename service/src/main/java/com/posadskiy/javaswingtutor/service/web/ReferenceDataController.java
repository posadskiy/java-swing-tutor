package com.posadskiy.javaswingtutor.service.web;

import com.posadskiy.javaswingtutor.domain.dto.*;
import com.posadskiy.javaswingtutor.service.application.ReferenceDataService;
import io.micronaut.http.HttpResponse;
import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.annotation.PathVariable;
import io.micronaut.http.annotation.QueryValue;

import java.util.List;

@Controller("/api/ref")
public class ReferenceDataController {
    private final ReferenceDataService referenceDataService;

    public ReferenceDataController(ReferenceDataService referenceDataService) {
        this.referenceDataService = referenceDataService;
    }

    @Get("/keywords")
    public List<KeywordDto> keywords() {
        return referenceDataService.getKeywords();
    }

    @Get("/shorthands")
    public List<ShorthandDto> shorthands() {
        return referenceDataService.getShorthands();
    }

    @Get("/documentation/{id}")
    public HttpResponse<DocumentationDto> documentation(
        @PathVariable("id") Long id,
        @QueryValue(value = "lang", defaultValue = "en") String languageCode
    ) {
        return referenceDataService.getDocumentation(id, languageCode)
            .map(HttpResponse::ok)
            .orElseGet(HttpResponse::notFound);
    }

    @Get("/errors/{id}")
    public HttpResponse<ErrorDto> error(@PathVariable("id") Long id) {
        return referenceDataService.getError(id)
            .map(HttpResponse::ok)
            .orElseGet(HttpResponse::notFound);
    }

    @Get("/task-categories")
    public List<TaskCategoryDto> categories() {
        return referenceDataService.getTaskCategories();
    }
}

