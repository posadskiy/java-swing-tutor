package com.posadskiy.javaswingteacher.application.service;

import com.posadskiy.javaswingteacher.domain.model.Keyword;
import com.posadskiy.javaswingteacher.domain.model.Shorthand;
import com.posadskiy.javaswingteacher.domain.repository.KeywordRepository;
import com.posadskiy.javaswingteacher.domain.repository.ShorthandRepository;
import lombok.extern.slf4j.Slf4j;
import org.fife.ui.autocomplete.BasicCompletion;
import org.fife.ui.autocomplete.CompletionProvider;
import org.fife.ui.autocomplete.DefaultCompletionProvider;
import org.fife.ui.autocomplete.ShorthandCompletion;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/**
 * Application service for code completion functionality.
 */
@Slf4j
@Service
public class CodeCompletionService {

    private static final String[] JAVA_KEYWORDS_FALLBACK = {
        "abstract", "assert", "boolean", "break", "byte", "case", "catch", "char", "class",
        "const", "continue", "default", "do", "double", "else", "enum", "extends", "final",
        "finally", "float", "for", "goto", "if", "implements", "import", "instanceof", "int",
        "interface", "long", "native", "new", "package", "private", "protected", "public",
        "return", "short", "static", "strictfp", "super", "switch", "synchronized", "this",
        "throw", "throws", "transient", "try", "void", "volatile", "while",
        // common literals
        "true", "false", "null"
    };
    
    private final KeywordRepository keywordRepository;
    private final ShorthandRepository shorthandRepository;
    
    public CodeCompletionService(
        KeywordRepository keywordRepository,
        ShorthandRepository shorthandRepository
    ) {
        this.keywordRepository = keywordRepository;
        this.shorthandRepository = shorthandRepository;
    }
    
    public List<Keyword> getKeywords() {
        try {
            return keywordRepository.getAllKeywords();
        } catch (SQLException ex) {
            log.error("Failed to load keywords", ex);
            return List.of();
        }
    }
    
    public List<Shorthand> getShorthands() {
        try {
            return shorthandRepository.getAllShorthands();
        } catch (SQLException ex) {
            log.error("Failed to load shorthands", ex);
            return List.of();
        }
    }
    
    /**
     * Creates a completion provider with all keywords and shorthands.
     */
    public CompletionProvider createCompletionProvider() {
        var provider = new DefaultCompletionProvider();

        // Add keyword completions
        Set<String> uniqueKeywords = new LinkedHashSet<>();
        getKeywords().stream()
            .map(Keyword::keywordText)
            .filter(Objects::nonNull)
            .map(String::trim)
            .filter(s -> !s.isEmpty())
            .forEach(uniqueKeywords::add);
        uniqueKeywords.stream()
            .map(text -> new BasicCompletion(provider, text))
            .forEach(provider::addCompletion);

        // If backend-provided keywords are empty, provide a safe built-in fallback
        if (uniqueKeywords.isEmpty()) {
            for (String kw : JAVA_KEYWORDS_FALLBACK) {
                provider.addCompletion(new BasicCompletion(provider, kw));
            }
        }

        // Add shorthand completions
        Set<String> seenShorthandTriggers = new LinkedHashSet<>();
        getShorthands().stream()
            .filter(Objects::nonNull)
            .filter(s -> s.shortText() != null && !s.shortText().trim().isEmpty())
            .filter(s -> s.fullText() != null && !s.fullText().trim().isEmpty())
            .filter(s -> seenShorthandTriggers.add(s.shortText().trim()))
            .map(s -> new ShorthandCompletion(provider, s.shortText().trim(), s.fullText(), s.fullText()))
            .forEach(provider::addCompletion);

        return provider;
    }
}




