package com.posadskiy.javaswingtutor.presentation.component;
import javax.swing.*;
import java.awt.*;

public class Answer extends CreateFrame {
    public Answer() {
        createFrame();
    }

    @Override
    public void createFrame() {
        String headerText = "Your frame";

        JPanel content = new JPanel(new BorderLayout());
        content.setBackground(new Color(15, 23, 42));
        content.setBorder(BorderFactory.createEmptyBorder(12, 12, 12, 12));

        JLabel header = new JLabel(headerText, SwingConstants.CENTER);
        header.setFont(new Font(Font.SANS_SERIF, Font.BOLD, 16));
        header.setForeground(new Color(248, 250, 252));
        header.setBorder(BorderFactory.createEmptyBorder(10, 12, 10, 12));
        content.add(header, BorderLayout.NORTH);

        JPanel footer = new JPanel(new FlowLayout(FlowLayout.RIGHT));
        footer.setOpaque(false);
        JButton closeBtn = new JButton("Close");
        closeBtn.addActionListener(e -> setVisible(false));
        footer.add(closeBtn);
        content.add(footer, BorderLayout.SOUTH);

        setContentPane(content);

        // User content goes into CENTER by default (BorderLayout.CENTER)
        JTextField field = new JTextField();
add(field);

        setTitle(headerText);
        setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
        applyHalfScreenBounds(false);
        setVisible(true);
    }

    private void applyHalfScreenBounds(boolean openOnLeft) {
        GraphicsDevice device = GraphicsEnvironment.getLocalGraphicsEnvironment().getDefaultScreenDevice();
        try {
            PointerInfo pi = MouseInfo.getPointerInfo();
            if (pi != null && pi.getDevice() != null) {
                device = pi.getDevice();
            }
        } catch (Exception ignored) {}

        GraphicsConfiguration gc = device.getDefaultConfiguration();
        Rectangle bounds = gc.getBounds();
        Insets insets = Toolkit.getDefaultToolkit().getScreenInsets(gc);

        int usableX = bounds.x + insets.left;
        int usableY = bounds.y + insets.top;
        int usableW = bounds.width - insets.left - insets.right;
        int usableH = bounds.height - insets.top - insets.bottom;

        int halfW = usableW / 2;
        int x = openOnLeft ? usableX : (usableX + halfW);
        int w = openOnLeft ? halfW : (usableW - halfW);

        setBounds(x, usableY, w, usableH);
    }
}
