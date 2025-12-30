-- Flyway migration V152: Lesson 52 tasks
-- Extracted from V53__lesson_52_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (453,
        52,
        1,
        'UIManager-SwingUtilities',
        '',
        453,
        20.0,
        0.0,
        'try {
    UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
    SwingUtilities.updateComponentTreeUI(frame);
} catch (Exception e) {
    e.printStackTrace();
}');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (454,
        52,
        2,
        'UIManager-SwingUtilities',
        '',
        454,
        20.0,
        0.0,
        'try {
    UIManager.setLookAndFeel("javax.swing.plaf.metal.MetalLookAndFeel");
    SwingUtilities.updateComponentTreeUI(frame);
} catch (Exception e) {
    e.printStackTrace();
}');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (455,
        52,
        3,
        'UIManager-SwingUtilities',
        '',
        455,
        21.0,
        0.0,
        'try {
    UIManager.setLookAndFeel("javax.swing.plaf.nimbus.NimbusLookAndFeel");
    SwingUtilities.updateComponentTreeUI(frame);
} catch (Exception e) {
    e.printStackTrace();
}');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (456,
        52,
        4,
        'UIManager-getInstalledLookAndFeels',
        '',
        456,
        20.0,
        0.0,
        'UIManager.LookAndFeelInfo[] lafs = UIManager.getInstalledLookAndFeels();
JLabel label = new JLabel();
for (UIManager.LookAndFeelInfo laf : lafs) {
    label.setText(laf.getName() + ": " + laf.getClassName());
}
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (457,
        52,
        5,
        'UIManager-SwingUtilities',
        '',
        457,
        22.0,
        0.0,
        'try {
    UIManager.setLookAndFeel("com.example.CustomLookAndFeel");
    SwingUtilities.updateComponentTreeUI(frame);
} catch (Exception e) {
    e.printStackTrace();
}');

