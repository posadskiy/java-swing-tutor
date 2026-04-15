package com.posadskiy.javaswingtutor.service.domain.entity;

import io.micronaut.data.annotation.GeneratedValue;
import io.micronaut.data.annotation.Id;
import io.micronaut.data.annotation.MappedEntity;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@MappedEntity("task_category")
public class TaskCategoryEntity {
    @Id
    @GeneratedValue(GeneratedValue.Type.IDENTITY)
    private Long id;

    private String name;
}

