package com.posadskiy.javaswingteacher.service.domain.checker.validation;

import java.util.Arrays;
import java.util.List;

/**
 * Represents an expected component in the solution.
 * Format: "JButton-setText,add" means JButton with methods setText and add
 */
public record SolutionComponent(String className, List<String> expectedMethods) {
    
    /**
     * Parses a component definition like "JButton-setText,add" or "UIManager-SwingUtilities"
     * If the part after dash contains commas, it's methods. Otherwise, it might be another class name.
     */
    public static SolutionComponent parse(String definition) {
        if (definition == null || definition.isBlank()) {
            return new SolutionComponent("", List.of());
        }
        
        var parts = definition.split("-", 2);
        var className = parts[0].trim();
        
        if (parts.length < 2 || parts[1].isBlank()) {
            return new SolutionComponent(className, List.of());
        }

        var afterDash = parts[1].trim();

        // Check if it contains commas - if so, it's a method list
        if (afterDash.contains(",")) {
            var methods = Arrays.stream(afterDash.split(","))
                .map(String::trim)
                .filter(s -> !s.isEmpty())
                .toList();
            return new SolutionComponent(className, methods);
        }

        // Check if it looks like a class name (starts with capital, no parentheses)
        // vs a method name (might have parentheses or be lowercase)
        if (afterDash.matches("^[A-Z][A-Za-z0-9]*$") && !afterDash.contains("(")) {
            // Likely another class name - return as method list with this as a "method" to check for
            // This allows checking for class usage
            return new SolutionComponent(className, List.of(afterDash));
        }

        // Otherwise treat as a single method
        return new SolutionComponent(className, List.of(afterDash));
    }
    
    public boolean hasExpectedMethods() {
        return expectedMethods != null && !expectedMethods.isEmpty();
    }
}




