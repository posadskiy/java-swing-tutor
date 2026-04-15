package com.posadskiy.javaswingtutor.service.infrastructure.jpa;

import com.posadskiy.javaswingtutor.service.domain.entity.TaskEntity;
import io.micronaut.data.jdbc.annotation.JdbcRepository;
import io.micronaut.data.repository.CrudRepository;

import java.util.List;

import static io.micronaut.data.model.query.builder.sql.Dialect.POSTGRES;

@JdbcRepository(dialect = POSTGRES)
public interface TaskRepository extends CrudRepository<TaskEntity, Long> {
    List<TaskEntity> findByLessonId(Long lessonId);
    List<TaskEntity> findByLessonIdInOrderByTaskNumberAsc(List<Long> lessonIds);
}




