package com.posadskiy.swingteacherdesktop.domain.dto;

import java.util.List;

public record LessonDto(
    Long id,
    Integer lessonNumber,
    String lessonName,
    Long taskCategoryId,
    List<TaskDto> tasks
) {
}

