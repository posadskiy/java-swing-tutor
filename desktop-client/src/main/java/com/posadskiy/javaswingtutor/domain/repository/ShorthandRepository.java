package com.posadskiy.javaswingtutor.domain.repository;

import com.posadskiy.javaswingtutor.domain.model.Shorthand;

import java.sql.SQLException;
import java.util.List;

/**
 * Repository interface for Shorthand entities.
 */
public interface ShorthandRepository {

    List<Shorthand> getAllShorthands() throws SQLException;
}




