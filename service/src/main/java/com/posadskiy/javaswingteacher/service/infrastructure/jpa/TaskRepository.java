package com.posadskiy.javaswingteacher.service.infrastructure.jpa;

import com.posadskiy.javaswingteacher.service.domain.entity.TaskEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TaskRepository extends JpaRepository<TaskEntity, Long> {
    List<TaskEntity> findByLessonId(Long lessonId);
}




