package com.posadskiy.javaswingtutor.service.infrastructure.jpa;

import com.posadskiy.javaswingtutor.service.domain.entity.LessonEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface LessonRepository extends JpaRepository<LessonEntity, Long> {
    List<LessonEntity> findByTaskCategoryId(Long taskCategoryId);
    
    @Query("SELECT DISTINCT l FROM LessonEntity l LEFT JOIN FETCH l.tasks WHERE l.taskCategoryId = :categoryId")
    List<LessonEntity> findByTaskCategoryIdWithTasks(@Param("categoryId") Long categoryId);
    
    @Query("SELECT DISTINCT l FROM LessonEntity l LEFT JOIN FETCH l.tasks")
    List<LessonEntity> findAllWithTasks();
    
    @Query("SELECT DISTINCT l FROM LessonEntity l LEFT JOIN FETCH l.tasks WHERE l.id = :id")
    Optional<LessonEntity> findByIdWithTasks(@Param("id") Long id);
}

