package com.posadskiy.swingteacherdesktop.service.domain.checker.validation;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/**
 * Parses user code to extract components and method calls.
 */
public final class UserCodeParser {
    
    private UserCodeParser() {
        // Utility class - prevent instantiation
    }
    
    /**
     * Extracts user components from code based on expected class names.
     * 
     * @param expectedClassNames List of class names to look for
     * @param userCode The user's code to parse
     * @return Map of class name to UserComponent
     */
    public static Map<String, UserComponent> extractComponents(
            List<String> expectedClassNames, 
            String userCode) {
        return extractComponents(expectedClassNames, userCode, new HashMap<>());
    }

    /**
     * Extracts user components from code based on expected class names.
     *
     * @param expectedClassNames List of class names to look for
     * @param userCode           The user's code to parse
     * @param expectedMethodsMap Map of className to expected methods (for better method extraction)
     * @return Map of class name to UserComponent
     */
    public static Map<String, UserComponent> extractComponents(
        List<String> expectedClassNames,
        String userCode,
        Map<String, List<String>> expectedMethodsMap) {
        
        var result = new HashMap<String, UserComponent>();
        
        for (var className : expectedClassNames) {
            var expectedMethods = expectedMethodsMap.getOrDefault(className, List.of());
            var component = extractComponent(className, userCode, expectedMethods);
            result.put(className, component);
        }
        
        return result;
    }
    
    private static UserComponent extractComponent(String className, String userCode) {
        return extractComponent(className, userCode, List.of());
    }

    private static UserComponent extractComponent(String className, String userCode, List<String> expectedMethods) {
        // Pattern to match: ClassName varName = new ClassName(...)
        // or: ClassName<...> varName = new ClassName<>(...)
        // or: InterfaceName varName = new InterfaceName() { ... } (anonymous inner class)
        // or just: new ClassName(...)
        // Handles generics like <String> or <>
        // Handles anonymous inner classes with empty parentheses and braces
        var constructorPattern = Pattern.compile(
            "(?:" + Pattern.quote(className) + "(?:<[^>]*>)?\\s+(\\w+)\\s*=\\s*)?" +
                "new\\s+" + Pattern.quote(className) + "(?:<[^>]*>)?\\s*\\([^)]*\\)(?:\\s*\\{)?",
            Pattern.MULTILINE
        );
        
        var matcher = constructorPattern.matcher(userCode);
        String variableName = null;

        if (matcher.find()) {
            variableName = matcher.group(1);
            if (variableName == null || variableName.isBlank()) {
                // Anonymous construction - still valid
                variableName = "_anonymous_" + className;
            }
        } else {
            // Check if class is used as a base class: class X extends ClassName
            var extendsPattern = Pattern.compile(
                "class\\s+\\w+\\s+extends\\s+" + Pattern.quote(className),
                Pattern.MULTILINE
            );
            if (extendsPattern.matcher(userCode).find()) {
                // Class is used as base class - create a component for it
                variableName = "_extends_" + className;
            } else {
                // No constructor found - check for static method calls or variable declarations
                // Pattern for: ClassName varName; or ClassName varName = ... (without new)
                var varDeclPattern = Pattern.compile(
                    Pattern.quote(className) + "(?:<[^>]*>)?\\s+(\\w+)\\s*[=;]",
                    Pattern.MULTILINE
                );
                var varMatcher = varDeclPattern.matcher(userCode);
                if (varMatcher.find()) {
                    variableName = varMatcher.group(1);
                } else {
                    // Check for static method calls: ClassName.methodName(...)
                    var staticMethodPattern = Pattern.compile(
                        Pattern.quote(className) + "\\s*\\.\\s*\\w+\\s*\\(",
                        Pattern.MULTILINE
                    );
                    if (staticMethodPattern.matcher(userCode).find()) {
                        // Static methods found - create a component with class name as variable
                        variableName = "_static_" + className;
                    } else {
                        return UserComponent.empty(className);
                    }
                }
            }
        }
        
        // Extract method calls on this variable
        var methodCalls = extractMethodCalls(variableName, userCode, expectedMethods, className);
        
        return new UserComponent(className, variableName, methodCalls);
    }

    private static List<String> extractMethodCalls(String variableName, String userCode, List<String> expectedMethods, String className) {
        var methodCalls = new ArrayList<String>();

        // Handle anonymous constructions - still check for standalone methods
        // Don't return early, continue to Pattern 4 to find standalone method calls

        // Handle static method calls
        if (variableName.startsWith("_static_")) {
            // Extract static method calls: ClassName.methodName(...)
            var staticMethodPattern = Pattern.compile(
                Pattern.quote(className) + "\\s*\\.\\s*(\\w+)\\s*\\([^)]*\\)",
                Pattern.MULTILINE
            );
            var staticMatcher = staticMethodPattern.matcher(userCode);
            while (staticMatcher.find()) {
                var fullCall = staticMatcher.group(0);
                methodCalls.add(fullCall);
            }
            return methodCalls;
        }
        
        // Pattern 1: Match methods called on the variable: varName.methodName(...)
        var methodOnVariablePattern = Pattern.compile(
            variableName + "\\s*\\.\\s*(\\w+)\\s*\\([^)]*\\)",
            Pattern.MULTILINE
        );
        
        var matcher = methodOnVariablePattern.matcher(userCode);
        while (matcher.find()) {
            var fullCall = matcher.group(0);
            methodCalls.add(fullCall);
        }

        // Pattern 1b: Match methods called on objects returned from this variable
        // e.g., Type var = varName.getSomething(); var.methodName()
        // This handles cases like: model = colorChooser.getSelectionModel(); model.setSelectedColor(...)
        if (!expectedMethods.isEmpty()) {
            // Find all assignments where the variable is used: Type newVar = varName.methodName(...)
            var returnPattern = Pattern.compile(
                "\\w+\\s+(\\w+)\\s*=\\s*" + Pattern.quote(variableName) + "\\s*\\.\\s*(\\w+)\\s*\\(",
                Pattern.MULTILINE
            );
            var returnMatcher = returnPattern.matcher(userCode);
            var returnedVars = new java.util.ArrayList<String>(); // List of returned variable names

            while (returnMatcher.find()) {
                var returnedVar = returnMatcher.group(1);
                var getterMethod = returnMatcher.group(2);

                // Check if getter matches an expected method (exact match or starts with "get")
                boolean getterMatches = expectedMethods.stream()
                    .anyMatch(m -> m.equals(getterMethod) ||
                        (m.toLowerCase().startsWith("get") && getterMethod.toLowerCase().equals(m.toLowerCase())));

                if (getterMatches) {
                    returnedVars.add(returnedVar);
                    // Also add the getter method call itself
                    methodCalls.add(variableName + "." + getterMethod + "()");
                }
            }

            // For each returned variable, find methods called on it that match expected methods
            for (var returnedVar : returnedVars) {
                var returnedVarMethodPattern = Pattern.compile(
                    Pattern.quote(returnedVar) + "\\s*\\.\\s*(\\w+)\\s*\\(",
                    Pattern.MULTILINE
                );
                var returnedVarMatcher = returnedVarMethodPattern.matcher(userCode);
                while (returnedVarMatcher.find()) {
                    var methodOnReturned = returnedVarMatcher.group(1);
                    // Check if this method matches any expected method
                    for (var expected : expectedMethods) {
                        if (methodOnReturned.equals(expected)) {
                            // Add the method call - MethodMatcher will match it
                            methodCalls.add(returnedVar + "." + methodOnReturned + "()");
                        }
                    }
                }
            }
        }
        
        // Pattern 2: Match standalone method calls where variable is passed as parameter
        // e.g., add(button) or add(button, BorderLayout.NORTH)
        // This handles cases where methods are called on the container, not the component
        var standaloneMethodPattern = Pattern.compile(
            "(\\w+)\\s*\\([^)]*\\b" + Pattern.quote(variableName) + "\\b[^)]*\\)",
            Pattern.MULTILINE
        );
        
        var standaloneMatcher = standaloneMethodPattern.matcher(userCode);
        while (standaloneMatcher.find()) {
            var fullCall = standaloneMatcher.group(0);
            // Only add if it's not already added (avoid duplicates)
            if (!methodCalls.contains(fullCall)) {
                methodCalls.add(fullCall);
            }
        }

        // Pattern 3: Match field assignments (e.g., gbc.gridwidth = 2)
        // This handles cases where fields are set instead of methods being called
        if (!expectedMethods.isEmpty()) {
            for (var expectedField : expectedMethods) {
                // Match: variableName.fieldName = value
                var fieldAssignmentPattern = Pattern.compile(
                    Pattern.quote(variableName) + "\\s*\\.\\s*" + Pattern.quote(expectedField) + "\\s*=",
                    Pattern.MULTILINE
                );
                var fieldMatcher = fieldAssignmentPattern.matcher(userCode);
                if (fieldMatcher.find()) {
                    // Add as a method-like call for validation purposes
                    var fullCall = fieldMatcher.group(0).trim();
                    if (!methodCalls.contains(fullCall)) {
                        methodCalls.add(fullCall);
                    }
                }
            }
        }

        // Pattern 4: Match standalone method calls that match expected method names
        // This handles cases like requestFocus() where the method is called but not
        // directly related to the component variable (common for interfaces)
        if (!expectedMethods.isEmpty()) {
            for (var expectedMethod : expectedMethods) {
                var standaloneExpectedPattern = Pattern.compile(
                    "\\b" + Pattern.quote(expectedMethod) + "\\s*\\(",
                    Pattern.MULTILINE
                );
                var expectedMatcher = standaloneExpectedPattern.matcher(userCode);
                while (expectedMatcher.find()) {
                    // Find the full method call including parameters
                    var start = expectedMatcher.start();
                    var end = findMatchingParen(userCode, expectedMatcher.end() - 1);
                    if (end > start) {
                        var fullCall = userCode.substring(start, end + 1);
                        if (!methodCalls.contains(fullCall)) {
                            methodCalls.add(fullCall);
                        }
                    }
                }
            }
        }

        // Pattern 5: Match method definitions in custom classes (e.g., @Override protected void paintComponent(...))
        // This handles cases where methods are defined in custom classes extending the expected class
        if (!expectedMethods.isEmpty() && variableName != null && variableName.startsWith("_extends_")) {
            for (var expectedMethod : expectedMethods) {
                // Look for method definitions - simpler: find methodName( and check if there's a return type before it
                var methodDefPattern = Pattern.compile(
                    "\\b" + Pattern.quote(expectedMethod) + "\\s*\\(",
                    Pattern.MULTILINE
                );
                var methodDefMatcher = methodDefPattern.matcher(userCode);
                while (methodDefMatcher.find()) {
                    var pos = methodDefMatcher.start();
                    // Look backwards to see if there's a return type (word) before the method name
                    if (pos > 0) {
                        var before = userCode.substring(Math.max(0, pos - 100), pos);
                        // Check if there's a return type word before it (void, int, String, etc.)
                        // Pattern: word (return type) whitespace methodName(
                        var returnTypePattern = Pattern.compile(
                            "\\b\\w+\\s+" + Pattern.quote(expectedMethod) + "\\s*\\("
                        );
                        if (returnTypePattern.matcher(before).find()) {
                            methodCalls.add(expectedMethod + "()");
                            break;
                        }
                    }
                }
            }
        }

        // Pattern 6: Match class name usage (for cases like "UIManager-SwingUtilities" where both should exist)
        // Also handle static methods on the class itself (e.g., Spring.constant(), Spring.sum())
        if (!expectedMethods.isEmpty()) {
            for (var expectedItem : expectedMethods) {
                // If it's a class name (starts with capital, no parentheses), check for its usage
                if (expectedItem.matches("^[A-Z][A-Za-z0-9]*$") && !expectedItem.contains("(")) {
                    // Check for static method calls: ClassName.method(...)
                    var classUsagePattern = Pattern.compile(
                        Pattern.quote(expectedItem) + "\\s*\\.\\s*\\w+\\s*\\(",
                        Pattern.MULTILINE
                    );
                    if (classUsagePattern.matcher(userCode).find()) {
                        methodCalls.add(expectedItem + ".method()");
                    }
                    // Also check for variable declarations: ClassName var = ...
                    var classVarPattern = Pattern.compile(
                        Pattern.quote(expectedItem) + "\\s+\\w+\\s*[=;]",
                        Pattern.MULTILINE
                    );
                    if (classVarPattern.matcher(userCode).find()) {
                        methodCalls.add(expectedItem + " usage");
                    }
                } else if (className.equals("Spring") || className.matches("^[A-Z][A-Za-z0-9]*$")) {
                    // For static method classes, also check if expected methods are static calls
                    // e.g., Spring.constant(), Spring.sum()
                    var staticCallPattern = Pattern.compile(
                        Pattern.quote(className) + "\\s*\\.\\s*" + Pattern.quote(expectedItem) + "\\s*\\(",
                        Pattern.MULTILINE
                    );
                    if (staticCallPattern.matcher(userCode).find()) {
                        methodCalls.add(className + "." + expectedItem + "()");
                    }
                }
            }
        }

        // Pattern 7: Match methods on other objects that are expected for this class
        // e.g., "Spring-putConstraint" where putConstraint is called on layout (SpringLayout), not Spring
        if (!expectedMethods.isEmpty() && className.matches("^[A-Z][A-Za-z0-9]*$")) {
            for (var expectedMethod : expectedMethods) {
                // Look for the method called on any object (not just our variable)
                var anyObjectMethodPattern = Pattern.compile(
                    "\\w+\\s*\\.\\s*" + Pattern.quote(expectedMethod) + "\\s*\\(",
                    Pattern.MULTILINE
                );
                if (anyObjectMethodPattern.matcher(userCode).find()) {
                    methodCalls.add("obj." + expectedMethod + "()");
                }
            }
        }
        
        return methodCalls;
    }

    private static int findMatchingParen(String text, int openParenPos) {
        int depth = 1;
        for (int i = openParenPos + 1; i < text.length(); i++) {
            char c = text.charAt(i);
            if (c == '(') depth++;
            else if (c == ')') {
                depth--;
                if (depth == 0) return i;
            }
        }
        return -1;
    }
}

