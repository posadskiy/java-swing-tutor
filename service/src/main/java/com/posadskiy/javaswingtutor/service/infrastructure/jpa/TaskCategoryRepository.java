package com.posadskiy.javaswingtutor.service.infrastructure.jpa;

import com.posadskiy.javaswingtutor.service.domain.entity.TaskCategoryEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TaskCategoryRepository extends JpaRepository<TaskCategoryEntity, Long> {
}



