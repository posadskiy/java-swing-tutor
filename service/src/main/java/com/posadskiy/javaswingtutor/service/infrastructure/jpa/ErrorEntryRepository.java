package com.posadskiy.javaswingtutor.service.infrastructure.jpa;

import com.posadskiy.javaswingtutor.service.domain.entity.ErrorEntryEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ErrorEntryRepository extends JpaRepository<ErrorEntryEntity, Long> {
}




