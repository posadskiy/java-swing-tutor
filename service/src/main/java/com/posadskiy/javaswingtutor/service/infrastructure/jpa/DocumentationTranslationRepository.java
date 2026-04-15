package com.posadskiy.javaswingtutor.service.infrastructure.jpa;

import com.posadskiy.javaswingtutor.service.domain.entity.DocumentationTranslationEntity;
import io.micronaut.data.jdbc.annotation.JdbcRepository;
import io.micronaut.data.repository.CrudRepository;

import java.util.Optional;

import static io.micronaut.data.model.query.builder.sql.Dialect.POSTGRES;

@JdbcRepository(dialect = POSTGRES)
public interface DocumentationTranslationRepository extends CrudRepository<DocumentationTranslationEntity, Long> {
    Optional<DocumentationTranslationEntity> findByDocumentationIdAndLanguageCode(Long documentationId, String languageCode);
}
