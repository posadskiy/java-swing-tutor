package com.posadskiy.javaswingtutor.service.infrastructure.jpa;

import com.posadskiy.javaswingtutor.service.domain.entity.LessonTranslationEntity;
import io.micronaut.data.jdbc.annotation.JdbcRepository;
import io.micronaut.data.repository.CrudRepository;

import java.util.Optional;

import static io.micronaut.data.model.query.builder.sql.Dialect.POSTGRES;

@JdbcRepository(dialect = POSTGRES)
public interface LessonTranslationRepository extends CrudRepository<LessonTranslationEntity, Long> {
    Optional<LessonTranslationEntity> findByLessonIdAndLanguageCode(Long lessonId, String languageCode);
}
