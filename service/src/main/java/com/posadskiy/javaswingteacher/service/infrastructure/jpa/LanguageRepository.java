package com.posadskiy.javaswingteacher.service.infrastructure.jpa;

import com.posadskiy.javaswingteacher.service.domain.entity.LanguageEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface LanguageRepository extends JpaRepository<LanguageEntity, Long> {
    Optional<LanguageEntity> findByCode(String code);
}
