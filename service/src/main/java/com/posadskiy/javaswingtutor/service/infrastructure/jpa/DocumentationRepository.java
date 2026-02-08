package com.posadskiy.javaswingtutor.service.infrastructure.jpa;

import com.posadskiy.javaswingtutor.service.domain.entity.DocumentationEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DocumentationRepository extends JpaRepository<DocumentationEntity, Long> {
}




