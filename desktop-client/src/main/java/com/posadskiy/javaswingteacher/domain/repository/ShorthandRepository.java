package com.posadskiy.javaswingteacher.domain.repository;

import com.posadskiy.javaswingteacher.domain.model.Shorthand;

import java.sql.SQLException;
import java.util.List;

/**
 * Repository interface for Shorthand entities.
 */
public interface ShorthandRepository {

    List<Shorthand> getAllShorthands() throws SQLException;
}




