package com.posadskiy.javaswingtutor.domain.repository;

import com.posadskiy.javaswingtutor.domain.model.Keyword;

import java.sql.SQLException;
import java.util.List;

/**
 * Repository interface for Keyword entities.
 */
public interface KeywordRepository {

    List<Keyword> getAllKeywords() throws SQLException;
}




