package com.posadskiy.javaswingteacher.service.infrastructure.jpa;

import com.posadskiy.javaswingteacher.service.domain.entity.ErrorEntryEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ErrorEntryRepository extends JpaRepository<ErrorEntryEntity, Long> {
}




