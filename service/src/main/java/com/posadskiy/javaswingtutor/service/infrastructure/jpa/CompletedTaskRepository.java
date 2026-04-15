package com.posadskiy.javaswingtutor.service.infrastructure.jpa;

import com.posadskiy.javaswingtutor.service.domain.entity.CompletedTaskEntity;
import io.micronaut.data.jdbc.annotation.JdbcRepository;
import io.micronaut.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

import static io.micronaut.data.model.query.builder.sql.Dialect.POSTGRES;

@JdbcRepository(dialect = POSTGRES)
public interface CompletedTaskRepository extends CrudRepository<CompletedTaskEntity, Long> {
    Optional<CompletedTaskEntity> findByUserIdAndTaskId(Long userId, Long taskId);

    List<CompletedTaskEntity> findByUserId(Long userId);
}




