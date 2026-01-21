package com.posadskiy.javaswingteacher;

import com.posadskiy.javaswingteacher.application.service.SessionRestoreService;
import com.posadskiy.javaswingteacher.infrastructure.config.AppConfig;
import com.posadskiy.javaswingteacher.presentation.navigation.AppNavigator;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import javax.swing.*;

/**
 * Application entry point.
 */
public class Start {
    public static void main(String[] args) {
        // Set Look and Feel before creating any Swing components
        setLookAndFeel();

        // Initialize Spring context and show UI on EDT
        SwingUtilities.invokeLater(() -> {
            var ctx = new AnnotationConfigApplicationContext(AppConfig.class);
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
