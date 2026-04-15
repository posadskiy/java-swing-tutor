package com.posadskiy.javaswingtutor.service.domain.entity;

import io.micronaut.data.annotation.GeneratedValue;
import io.micronaut.data.annotation.Id;
import io.micronaut.data.annotation.MappedEntity;
import io.micronaut.data.annotation.MappedProperty;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@MappedEntity("task")
public class TaskEntity {
    @Id
    @GeneratedValue(GeneratedValue.Type.IDENTITY)
    private Long id;

    @MappedProperty("id_lesson")
    private Long lessonId;
    
    @MappedProperty("task_number")
    private Integer taskNumber;

    private String answer;
    private String imports;
    private String solution;

    @MappedProperty("id_documentation")
    private Long documentationId;

    private Double difficult;
    private Double rating;
}

