package com.posadskiy.swingteacherdesktop.infrastructure.storage;

import org.springframework.stereotype.Component;

import java.time.Instant;
import java.util.prefs.Preferences;

/**
 * Persists auth tokens in Java Preferences (plain text).
 */
@Component
public class PreferencesTokenStore {

    private static final String KEY_ACCESS_TOKEN = "auth.accessToken";
    private static final String KEY_REFRESH_TOKEN = "auth.refreshToken";
    private static final String KEY_EXPIRES_AT_EPOCH_MS = "auth.expiresAtEpochMs";

    private final Preferences prefs = Preferences.userNodeForPackage(PreferencesTokenStore.class);

    public TokenData load() {
        String access = prefs.get(KEY_ACCESS_TOKEN, null);
        String refresh = prefs.get(KEY_REFRESH_TOKEN, null);
        long epochMs = prefs.getLong(KEY_EXPIRES_AT_EPOCH_MS, -1L);
        Instant expiresAt = epochMs > 0 ? Instant.ofEpochMilli(epochMs) : null;
        if (access == null && refresh == null && expiresAt == null) {
            return null;
        }
        return new TokenData(access, refresh, expiresAt);
    }

    public void save(String accessToken, String refreshToken, Instant expiresAt) {
        if (accessToken == null) {
            prefs.remove(KEY_ACCESS_TOKEN);
        } else {
            prefs.put(KEY_ACCESS_TOKEN, accessToken);
        }

        if (refreshToken == null) {
            prefs.remove(KEY_REFRESH_TOKEN);
        } else {
            prefs.put(KEY_REFRESH_TOKEN, refreshToken);
        }

        if (expiresAt == null) {
            prefs.putLong(KEY_EXPIRES_AT_EPOCH_MS, -1L);
        } else {
            prefs.putLong(KEY_EXPIRES_AT_EPOCH_MS, expiresAt.toEpochMilli());
        }
    }

    public void clear() {
        prefs.remove(KEY_ACCESS_TOKEN);
        prefs.remove(KEY_REFRESH_TOKEN);
        prefs.remove(KEY_EXPIRES_AT_EPOCH_MS);
    }

    public record TokenData(String accessToken, String refreshToken, Instant expiresAt) {
    }
}

