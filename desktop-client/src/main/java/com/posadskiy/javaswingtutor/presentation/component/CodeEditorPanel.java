package com.posadskiy.javaswingtutor.presentation.component;

import org.fife.ui.rtextarea.RTextScrollPane;

import javax.swing.*;
import javax.swing.plaf.basic.BasicScrollBarUI;
import java.awt.*;
import java.awt.geom.RoundRectangle2D;

/**
 * Code editor panel with line numbers and status bar.
 */
public class CodeEditorPanel extends JPanel {
    private final ModernTextArea textArea;
    private final RTextScrollPane scrollPane;
    private final StatusBar statusBar;

    public CodeEditorPanel() {
        this("");
    }

    public CodeEditorPanel(String text) {
        setLayout(new BorderLayout());
        setOpaque(false);

        textArea = new ModernTextArea(text);
        textArea.setCodeFoldingEnabled(true);
        
        // Create scroll pane with line numbers
        scrollPane = new RTextScrollPane(textArea);
        scrollPane.setLineNumbersEnabled(true);
        scrollPane.setFoldIndicatorEnabled(true);
        scrollPane.setViewportBorder(null);
        scrollPane.setBorder(null);
        scrollPane.setOpaque(false);
        scrollPane.getViewport().setOpaque(false);
        scrollPane.getGutter().setBackground(new Color(30, 30, 46));
        scrollPane.getGutter().setBorderColor(UITheme.CARD_BORDER);
        scrollPane.getGutter().setLineNumberColor(UITheme.TEXT_SECONDARY);
        scrollPane.getGutter().setLineNumberFont(UITheme.getFont(Font.PLAIN, 11));
        scrollPane.getVerticalScrollBar().setUI(new ModernScrollBarUI());
        scrollPane.getHorizontalScrollBar().setUI(new ModernScrollBarUI());
        scrollPane.getVerticalScrollBar().setOpaque(false);
        scrollPane.getHorizontalScrollBar().setOpaque(false);
        
        statusBar = new StatusBar();
        textArea.setStatusBar(statusBar);
        
        add(scrollPane, BorderLayout.CENTER);
        add(statusBar, BorderLayout.SOUTH);
    }

    public ModernTextArea getTextArea() {
        return textArea;
    }

    public String getText() {
        return textArea.getText();
    }

    public void setText(String text) {
        textArea.setText(text);
    }

    private static final class ModernScrollBarUI extends BasicScrollBarUI {
        @Override
        protected void configureScrollBarColors() {
            thumbColor = UITheme.INPUT_BORDER;
            trackColor = UITheme.CARD_BACKGROUND;
        }

        @Override
        protected JButton createDecreaseButton(int orientation) {
            return createEmptyButton();
        }

        @Override
        protected JButton createIncreaseButton(int orientation) {
            return createEmptyButton();
        }

        private JButton createEmptyButton() {
            JButton button = new JButton();
            button.setPreferredSize(new Dimension(0, 0));
            button.setMinimumSize(new Dimension(0, 0));
            button.setMaximumSize(new Dimension(0, 0));
            button.setOpaque(false);
            button.setContentAreaFilled(false);
            button.setBorderPainted(false);
            return button;
        }

        @Override
        protected void paintThumb(Graphics g, JComponent c, Rectangle thumbBounds) {
            if (thumbBounds.isEmpty() || !scrollbar.isEnabled()) {
                return;
            }

            Graphics2D g2d = (Graphics2D) g.create();
            g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);

            g2d.setColor(isDragging ? UITheme.TEXT_SECONDARY : UITheme.INPUT_BORDER);
            g2d.fill(new RoundRectangle2D.Float(
                thumbBounds.x + 2, thumbBounds.y + 2,
                thumbBounds.width - 4, thumbBounds.height - 4,
                6, 6
            ));

            g2d.dispose();
        }

        @Override
        protected void paintTrack(Graphics g, JComponent c, Rectangle trackBounds) {
            // Don't paint track - transparent
        }
    }
}



