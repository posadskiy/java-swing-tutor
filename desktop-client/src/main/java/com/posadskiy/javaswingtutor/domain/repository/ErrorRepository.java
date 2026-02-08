package com.posadskiy.javaswingtutor.domain.repository;

import com.posadskiy.javaswingtutor.domain.model.Error;

import java.sql.SQLException;
import java.util.Optional;

/**
 * Repository interface for Error entities.
 */
public interface ErrorRepository {

    Optional<Error> getError(int id) throws SQLException;
}




