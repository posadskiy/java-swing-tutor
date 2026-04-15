package com.posadskiy.javaswingtutor.service.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import io.micronaut.context.annotation.Requires;
import io.micronaut.http.HttpRequest;
import io.micronaut.http.HttpResponse;
import io.micronaut.http.annotation.Produces;
import io.micronaut.http.server.exceptions.ExceptionHandler;
import jakarta.inject.Singleton;

@Produces
@Singleton
@Requires(classes = {Exception.class, ExceptionHandler.class})
public class GlobalExceptionHandler implements ExceptionHandler<Exception, HttpResponse<GlobalExceptionHandler.ErrorResponse>> {
    private static final Logger log = LoggerFactory.getLogger(GlobalExceptionHandler.class);

    @Override
    public HttpResponse<ErrorResponse> handle(HttpRequest request, Exception ex) {
        log.error("Unhandled exception", ex);
        return HttpResponse.serverError(new ErrorResponse("Internal Server Error", ex.getMessage()));
    }

    public record ErrorResponse(String error, String message) {
    }
}




