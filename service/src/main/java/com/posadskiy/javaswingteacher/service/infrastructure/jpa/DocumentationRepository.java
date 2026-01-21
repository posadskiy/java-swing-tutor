package com.posadskiy.javaswingteacher.service.infrastructure.jpa;

import com.posadskiy.javaswingteacher.service.domain.entity.DocumentationEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DocumentationRepository extends JpaRepository<DocumentationEntity, Long> {
}




