package com.posadskiy.javaswingtutor.service.infrastructure.jpa;

import com.posadskiy.javaswingtutor.service.domain.entity.ShorthandEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ShorthandRepository extends JpaRepository<ShorthandEntity, Long> {
}




