package com.posadskiy.javaswingtutor.service.domain.checker.validation;

import java.util.regex.Pattern;

/**
 * Utility class for matching expected methods against actual method calls.
 */
public final class MethodMatcher {
    
    private MethodMatcher() {
        // Utility class - prevent instantiation
    }
    
    /**
     * Checks if an actual method call matches the expected method name.
     *
     * @param expectedMethod The expected method name (e.g., "setText") or field name (e.g., "gridwidth")
     * @param actualCall The actual method call from user code (e.g., "button.setText(\"Hello\")") 
     *                   or field assignment (e.g., "gbc.gridwidth =")
     * @return true if the call matches the expected method/field
     */
    public static boolean matches(String expectedMethod, String actualCall) {
        if (expectedMethod == null || actualCall == null) {
            return false;
        }
        
        var cleanExpected = expectedMethod.trim();
        var cleanActual = actualCall.trim();
        
        if (cleanExpected.isEmpty() || cleanActual.isEmpty()) {
            return false;
        }

        // Pattern 1: Match method name in actual call
        // Handles: varName.methodName(...) or just methodName(...)
        var methodPattern = Pattern.compile(
            "(?:\\w+\\s*\\.\\s*)?" + Pattern.quote(cleanExpected) + "\\s*\\(",
            Pattern.CASE_INSENSITIVE
        );

        if (methodPattern.matcher(cleanActual).find()) {
            return true;
        }

        // Pattern 2: Match field assignment
        // Handles: varName.fieldName = value
        var fieldPattern = Pattern.compile(
            "(?:\\w+\\s*\\.\\s*)?" + Pattern.quote(cleanExpected) + "\\s*=",
            Pattern.CASE_INSENSITIVE
        );

        return fieldPattern.matcher(cleanActual).find();
    }
    
    /**
     * Extracts the method name from a full method call.
     * 
     * @param methodCall Full method call like "button.setText(\"Hello\")"
     * @return Method name like "setText", or null if not parseable
     */
    public static String extractMethodName(String methodCall) {
        if (methodCall == null) {
            return null;
        }
        
        var pattern = Pattern.compile("(?:\\w+\\s*\\.\\s*)?(\\w+)\\s*\\(");
        var matcher = pattern.matcher(methodCall.trim());
        
        if (matcher.find()) {
            return matcher.group(1);
        }
        
        return null;
    }
}




