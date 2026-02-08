package com.posadskiy.javaswingtutor.infrastructure.storage;

import org.springframework.stereotype.Component;

import java.util.prefs.Preferences;

/**
 * Simple Preferences-based storage for app-level settings (non-secure).
 * Note: user chose plain Preferences storage.
 */
@Component
public class AppPreferences {

    private static final String KEY_UI_LANGUAGE = "ui.language";

    private final Preferences prefs = Preferences.userNodeForPackage(AppPreferences.class);

    public String getUiLanguage() {
        return prefs.get(KEY_UI_LANGUAGE, "en");
    }

    public void setUiLanguage(String languageCode) {
        String lang = (languageCode == null || languageCode.isBlank()) ? "en" : languageCode.trim().toLowerCase();
        prefs.put(KEY_UI_LANGUAGE, lang);
    }
}

