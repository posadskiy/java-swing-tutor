package com.posadskiy.javaswingtutor;

import com.posadskiy.javaswingtutor.application.service.SessionRestoreService;
import com.posadskiy.javaswingtutor.infrastructure.config.AppConfig;
import com.posadskiy.javaswingtutor.presentation.navigation.AppNavigator;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.core.env.ConfigurableEnvironment;
import org.springframework.core.env.MutablePropertySources;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.support.ResourcePropertySource;

import javax.swing.*;
import java.io.IOException;

/**
 * Application entry point.
 */
public class Start {
    static void main() {
        // Set Look and Feel before creating any Swing components
        setLookAndFeel();

        // Initialize Spring context and show UI on EDT
        SwingUtilities.invokeLater(() -> {
            var ctx = new AnnotationConfigApplicationContext();

            // Resolve env: app.env, JAVA_SWING_TUTOR_ENV, or spring.profiles.active (legacy)
            String activeProfile = System.getProperty("app.env");
            if (activeProfile == null || activeProfile.isEmpty()) {
                String envVar = System.getenv("JAVA_SWING_TUTOR_ENV");
                activeProfile = envVar != null && !envVar.isEmpty() ? envVar : System.getProperty("spring.profiles.active");
            }
            if (activeProfile != null && !activeProfile.isEmpty()) {
                ConfigurableEnvironment env = ctx.getEnvironment();
                env.setActiveProfiles(activeProfile.split(","));

                // Load env-specific properties (application-dev.properties, application-prod.properties, etc.)
                MutablePropertySources propertySources = env.getPropertySources();
                for (String profile : env.getActiveProfiles()) {
                    String profileResource = "application-" + profile + ".properties";
                    try {
                        ClassPathResource resource = new ClassPathResource(profileResource);
                        if (resource.exists()) {
                            propertySources.addLast(new ResourcePropertySource(resource));
                        }
                    } catch (IOException e) {
                        // Profile-specific file doesn't exist, ignore
                    }
                }
            }

            ctx.register(AppConfig.class);
            ctx.refresh();
            ctx.registerShutdownHook();

            var navigator = ctx.getBean(AppNavigator.class);
            boolean restored = ctx.getBean(SessionRestoreService.class).tryRestoreSession();
            if (restored) {
                // Ensure auth window is not left open behind the main frame
                navigator.hideAuth();
                navigator.showMainFrame();
            } else {
                navigator.showAuth();
            }
        });
    }

    private static void setLookAndFeel() {
        try {
            UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException
                 | UnsupportedLookAndFeelException ex) {
            System.err.println("Failed to set system Look&Feel: " + ex.getMessage());
            try {
                UIManager.setLookAndFeel(UIManager.getCrossPlatformLookAndFeelClassName());
            } catch (Exception e) {
                System.err.println("Failed to set fallback Look&Feel: " + e.getMessage());
            }
        }
    }
}
