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
@MappedEntity("documentation")
public class DocumentationEntity {
    @Id
    @GeneratedValue(GeneratedValue.Type.IDENTITY)
    private Long id;
}

