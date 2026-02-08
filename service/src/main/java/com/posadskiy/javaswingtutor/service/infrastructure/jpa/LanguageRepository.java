package com.posadskiy.javaswingtutor.service.infrastructure.jpa;

import com.posadskiy.javaswingtutor.service.domain.entity.LanguageEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface LanguageRepository extends JpaRepository<LanguageEntity, Long> {
    Optional<LanguageEntity> findByCode(String code);
}
