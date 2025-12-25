package com.posadskiy.swingteacherdesktop.presentation.view;

import com.posadskiy.swingteacherdesktop.presentation.component.*;
import com.posadskiy.swingteacherdesktop.presentation.controller.PopupController;
import com.posadskiy.swingteacherdesktop.presentation.controller.RegistrationController;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.KeyEvent;

/**
 * Modern registration view for new user sign-up.
 * Uses reusable UI components for consistent styling.
 */
@Slf4j
@Lazy
@Component
public class RegistrationView extends JFrame {

    private static final int CARD_WIDTH = 400;
    private static final int CARD_HEIGHT = 520;
    private static final int CONTENT_WIDTH = 320;
    private static final int PADDING = 40;

    private final RegistrationController controller;
    private final PopupController popupController;

    private ModernTextField loginField;
    private ModernPasswordField passwordField;
    private ModernPasswordField passwordRepeatField;
    private ModernTextField emailField;
    private ModernButton registerButton;

    public RegistrationView(
        RegistrationController controller,
        PopupController popupController
    ) {
        this.controller = controller;
        this.popupController = popupController;
        initializeUI();
    }

    private void initializeUI() {
        configureFrame();
        setContentPane(new GradientPanel());
        getContentPane().add(createRegistrationCard());
        setupKeyBindings();
    }

    private void configureFrame() {
        setTitle("Create Account");
        setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
        setSize(900, 620);
        setMinimumSize(new Dimension(700, 550));
        setLocationRelativeTo(null);

        System.setProperty("awt.useSystemAAFontSettings", "on");
        System.setProperty("swing.aatext", "true");
    }

    private JPanel createRegistrationCard() {
        CardPanel card = new CardPanel();
        card.setPreferredSize(new Dimension(CARD_WIDTH, CARD_HEIGHT));
        card.setLayout(null);

        int y = PADDING;

        // Header
        y = addHeader(card, y);

        // Form fields
        y = addFormFields(card, y);

        // Buttons
        addButtons(card, y);

        return card;
    }

    private int addHeader(JPanel card, int y) {
        JLabel header = createLabel("Create Account", Font.BOLD, 28, UITheme.TEXT_PRIMARY, SwingConstants.CENTER);
        header.setBounds(PADDING, y, CONTENT_WIDTH, 40);
        card.add(header);
        y += 45;

        JLabel subHeader = createLabel("Join us and start learning", Font.PLAIN, 14, UITheme.TEXT_SECONDARY, SwingConstants.CENTER);
        subHeader.setBounds(PADDING, y, CONTENT_WIDTH, 24);
        card.add(subHeader);

        return y + 40;
    }

    private int addFormFields(JPanel card, int y) {
        // Username field
        y = addField(card, y, "Username", "Choose a username");
        loginField = (ModernTextField) card.getComponent(card.getComponentCount() - 1);

        // Email field
        y = addField(card, y, "Email", "Enter your email");
        emailField = (ModernTextField) card.getComponent(card.getComponentCount() - 1);

        // Password field
        y = addPasswordField(card, y, "Password", "Create a password");
        passwordField = (ModernPasswordField) card.getComponent(card.getComponentCount() - 1);

        // Confirm password field
        y = addPasswordField(card, y, "Confirm Password", "Repeat your password");
        passwordRepeatField = (ModernPasswordField) card.getComponent(card.getComponentCount() - 1);

        return y;
    }

    private int addField(JPanel card, int y, String labelText, String placeholder) {
        JLabel label = createLabel(labelText, Font.PLAIN, 13, UITheme.TEXT_SECONDARY, SwingConstants.LEFT);
        label.setBounds(PADDING, y, CONTENT_WIDTH, 20);
        card.add(label);
        y += 24;

        ModernTextField field = new ModernTextField(placeholder);
        field.setBounds(PADDING, y, CONTENT_WIDTH, 44);
        card.add(field);

        return y + 54;
    }

    private int addPasswordField(JPanel card, int y, String labelText, String placeholder) {
        JLabel label = createLabel(labelText, Font.PLAIN, 13, UITheme.TEXT_SECONDARY, SwingConstants.LEFT);
        label.setBounds(PADDING, y, CONTENT_WIDTH, 20);
        card.add(label);
        y += 24;

        ModernPasswordField field = new ModernPasswordField(placeholder);
        field.setBounds(PADDING, y, CONTENT_WIDTH, 44);
        card.add(field);

        return y + 54;
    }

    private void addButtons(JPanel card, int y) {
        registerButton = ModernButton.primary("Create Account");
        registerButton.addActionListener(e -> onRegisterClick());
        registerButton.setBounds(PADDING, y, CONTENT_WIDTH, 48);
        card.add(registerButton);
        y += 58;

        LinkButton backButton = new LinkButton("Already have an account? Sign in");
        backButton.addActionListener(e -> setVisible(false));
        backButton.setBounds(PADDING, y, CONTENT_WIDTH, 24);
        card.add(backButton);
    }

    private JLabel createLabel(String text, int fontStyle, int fontSize, Color color, int alignment) {
        JLabel label = new JLabel(text, alignment);
        label.setFont(UITheme.getFont(fontStyle, fontSize));
        label.setForeground(color);
        return label;
    }

    private void setupKeyBindings() {
        KeyStroke enter = KeyStroke.getKeyStroke(KeyEvent.VK_ENTER, 0);
        getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW).put(enter, "register");
        getRootPane().getActionMap().put("register", new AbstractAction() {
            @Override
            public void actionPerformed(ActionEvent e) {
                onRegisterClick();
            }
        });

        KeyStroke escape = KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0);
        getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW).put(escape, "cancel");
        getRootPane().getActionMap().put("cancel", new AbstractAction() {
            @Override
            public void actionPerformed(ActionEvent e) {
                setVisible(false);
            }
        });
    }

    private void onRegisterClick() {
        setLoadingState(true);

        new SwingWorker<RegistrationController.ValidationResult, Void>() {
            @Override
            protected RegistrationController.ValidationResult doInBackground() {
                return controller.register(
                    loginField.getText(),
                    String.copyValueOf(passwordField.getPassword()),
                    String.copyValueOf(passwordRepeatField.getPassword()),
                    emailField.getText()
                );
            }

            @Override
            protected void done() {
                try {
                    var result = get();
                    if (result.isSuccess()) {
                        controller.closeRegistration();
                        popupController.showSuccess("You are registered! Use your credentials to log in");
                    } else if (result.hasErrors()) {
                        popupController.showError("Please check the form and try again");
                    }
                } catch (Exception ex) {
                    log.error("Registration error", ex);
                    popupController.showError("An error occurred. Please try again.");
                } finally {
                    setLoadingState(false);
                }
            }
        }.execute();
    }

    private void setLoadingState(boolean loading) {
        registerButton.setEnabled(!loading);
        registerButton.setText(loading ? "Creating account..." : "Create Account");
    }

    // Getters for testing
    public JTextField getLoginTextField() {
        return loginField;
    }

    public JPasswordField getPasswordField() {
        return passwordField;
    }

    public JPasswordField getPasswordRepeatField() {
        return passwordRepeatField;
    }

    public JTextField getEmailTextField() {
        return emailField;
    }
}
