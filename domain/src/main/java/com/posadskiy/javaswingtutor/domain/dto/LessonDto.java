package com.posadskiy.javaswingtutor.domain.dto;

import java.util.List;

public record LessonDto(
    Long id,
    String lessonName,
    Long taskCategoryId,
    List<TaskDto> tasks
) {
}

