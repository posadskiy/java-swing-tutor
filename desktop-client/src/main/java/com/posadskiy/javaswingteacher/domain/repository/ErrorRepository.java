package com.posadskiy.javaswingteacher.domain.repository;

import com.posadskiy.javaswingteacher.domain.model.Error;

import java.sql.SQLException;
import java.util.Optional;

/**
 * Repository interface for Error entities.
 */
public interface ErrorRepository {

    Optional<Error> getError(int id) throws SQLException;
}




