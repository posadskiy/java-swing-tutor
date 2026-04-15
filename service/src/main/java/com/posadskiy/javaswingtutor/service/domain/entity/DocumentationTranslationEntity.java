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
@MappedEntity("documentation_translation")
public class DocumentationTranslationEntity {
    @Id
    @GeneratedValue(GeneratedValue.Type.IDENTITY)
    private Long id;

    @MappedProperty("documentation_id")
    private Long documentationId;
    
    @MappedProperty("language_code")
    private String languageCode;
    
    @MappedProperty("text")
    private String text;
}
