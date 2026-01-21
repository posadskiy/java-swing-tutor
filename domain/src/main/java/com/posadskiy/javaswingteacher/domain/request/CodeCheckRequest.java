package com.posadskiy.javaswingteacher.domain.request;

public record CodeCheckRequest(
    String expectedSolution,  // Can be blank - some tasks might not have expected solution
    String userSolution        // Can be blank - user might not have written anything yet
) {
}

