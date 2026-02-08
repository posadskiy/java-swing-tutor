package com.posadskiy.javaswingtutor.application.service;

import com.posadskiy.javaswingtutor.api.mapper.DtoMapper;
import com.posadskiy.javaswingtutor.domain.dto.UserDto;
import com.posadskiy.javaswingtutor.infrastructure.i18n.I18nService;
import com.posadskiy.javaswingtutor.infrastructure.state.AppState;
import com.posadskiy.javaswingtutor.infrastructure.storage.AppPreferences;
import com.posadskiy.javaswingtutor.infrastructure.storage.TokenStorage;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClient;
import org.springframework.web.client.RestClientException;

/**
 * Restores an authenticated session from persisted tokens.
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class SessionRestoreService {

    private final RestClient restClient;
    private final AuthenticationService authService;
    private final TokenStorage tokenStorage;
    private final AppState appState;
    private final I18nService i18n;
    private final AppPreferences appPreferences;

    /**
     * @return true when session and current user were restored successfully.
     */
    public boolean tryRestoreSession() {
        // Ensure UI language is applied even before user is restored
        String lang = appPreferences.getUiLanguage();
        appState.setCurrentLanguage(lang);
        i18n.setLocale(lang);

        if (!tokenStorage.hasValidTokens()) {
            if (tokenStorage.getRefreshToken() == null) {
                return false;
            }
            try {
                if (!authService.refreshToken()) {
                    return false;
                }
            } catch (RuntimeException ex) {
                log.debug("Token refresh failed during session restore", ex);
                return false;
            }
        }

        try {
            var dto = restClient.get()
                .uri("/api/users/me")
                .retrieve()
                .body(UserDto.class);

            var userOpt = DtoMapper.toUserOptional(dto);
            if (userOpt.isEmpty()) {
                return false;
            }

            var user = userOpt.get();
            appState.setCurrentUser(user);

            // Apply user-preferred language if available
            if (user.preferredLanguage() != null && !user.preferredLanguage().isBlank()) {
                String userLang = user.getPreferredLanguageOrDefault();
                appState.setCurrentLanguage(userLang);
                i18n.setLocale(userLang);
                appPreferences.setUiLanguage(userLang);
            }

            return true;
        } catch (RestClientException ex) {
            log.debug("Failed to restore user via /api/users/me", ex);
            return false;
        }
    }
}

