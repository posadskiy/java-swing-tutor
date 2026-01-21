package com.posadskiy.javaswingteacher.service.infrastructure.jpa;

import com.posadskiy.javaswingteacher.service.domain.entity.ShorthandEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ShorthandRepository extends JpaRepository<ShorthandEntity, Long> {
}




