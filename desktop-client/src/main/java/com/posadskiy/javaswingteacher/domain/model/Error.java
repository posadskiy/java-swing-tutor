package com.posadskiy.javaswingteacher.domain.model;

import java.io.Serializable;

/**
 * Immutable error entity.
 */
public record Error(
    Integer id,
    String errorCode
) implements Serializable {
    
    private static final long serialVersionUID = -5527566248002796042L;

    public static Error of(Integer id, String errorCode) {
        return new Error(id, errorCode);
    }
}




