package com.posadskiy.swingteacherdesktop.utils;
import javax.swing.*;
import java.awt.*;

public class Answer extends CreateFrame {
 public Answer() {
setTitle("Твой фрейм");
JFrame frame = new JFrame("Урок 1 — Кнопка-новичок");
            frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            frame.setSize(320, 200);
            frame.setLocationRelativeTo(null);

            JButton button = new JButton("Старт!");
            button.addActionListener(e -> System.out.println("Кнопка нажата!"));

            frame.setLayout(new FlowLayout());
            frame.add(button);

            frame.setVisible(true);
setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
setPreferredSize(new Dimension(700, 400));
pack();
setLocationRelativeTo(null);
setVisible(true);
}}