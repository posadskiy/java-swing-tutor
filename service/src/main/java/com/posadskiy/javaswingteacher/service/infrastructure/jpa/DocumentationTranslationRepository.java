package com.posadskiy.javaswingteacher.service.infrastructure.jpa;

import com.posadskiy.javaswingteacher.service.domain.entity.DocumentationTranslationEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Optional;

public interface DocumentationTranslationRepository extends JpaRepository<DocumentationTranslationEntity, Long> {
    Optional<DocumentationTranslationEntity> findByDocumentationIdAndLanguageCode(Long documentationId, String languageCode);

    @Query("SELECT dt FROM DocumentationTranslationEntity dt WHERE dt.documentationId = :documentationId AND dt.languageCode = :languageCode")
    Optional<DocumentationTranslationEntity> findTranslation(@Param("documentationId") Long documentationId, @Param("languageCode") String languageCode);
}
