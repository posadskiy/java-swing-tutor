-- Flyway migration V122: Lesson 22 tasks
-- Extracted from V23__lesson_22_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (183,
        22,
        1,
        'JTabbedPane-addTab,add',
        '',
        183,
        16.0,
        0.0,
        'JTabbedPane tabbedPane = new JTabbedPane();
tabbedPane.addTab("Tab 1", new JPanel());
tabbedPane.addTab("Tab 2", new JPanel());
add(tabbedPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (184,
        22,
        2,
        'JTabbedPane-addTab,setTabPlacement,add',
        '',
        184,
        17.0,
        0.0,
        'JTabbedPane tabbedPane = new JTabbedPane();
tabbedPane.addTab("Tab 1", new JPanel());
tabbedPane.setTabPlacement(JTabbedPane.BOTTOM);
add(tabbedPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (185,
        22,
        3,
        'JTabbedPane-addTab,addTab,setSelectedIndex,add',
        '',
        185,
        17.0,
        0.0,
        'JTabbedPane tabbedPane = new JTabbedPane();
tabbedPane.addTab("Tab 1", new JPanel());
tabbedPane.addTab("Tab 2", new JPanel());
tabbedPane.setSelectedIndex(1);
add(tabbedPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (186,
        22,
        4,
        'JTabbedPane-addTab,add',
        '',
        186,
        18.0,
        0.0,
        'JTabbedPane tabbedPane = new JTabbedPane();
ImageIcon icon = new ImageIcon("icon.png");
tabbedPane.addTab("Tab", icon, new JPanel());
add(tabbedPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (187,
        22,
        5,
        'JTabbedPane-addTab,setToolTipTextAt,add',
        '',
        187,
        17.0,
        0.0,
        'JTabbedPane tabbedPane = new JTabbedPane();
tabbedPane.addTab("Tab 1", new JPanel());
tabbedPane.setToolTipTextAt(0, "First tab");
add(tabbedPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (188,
        22,
        6,
        'JTabbedPane-setEnabledAt',
        '',
        188,
        18.0,
        0.0,
        'JTabbedPane tabbedPane = new JTabbedPane();
tabbedPane.addTab("Tab 1", new JPanel());
tabbedPane.setEnabledAt(0, false);
add(tabbedPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (189,
        22,
        7,
        'JTabbedPane-addChangeListener,getSelectedIndex,add',
        '',
        189,
        19.0,
        0.0,
        'JTabbedPane tabbedPane = new JTabbedPane();
tabbedPane.addTab("Tab 1", new JPanel());
tabbedPane.addTab("Tab 2", new JPanel());
JLabel label = new JLabel();
tabbedPane.addChangeListener(e -> {
    int index = tabbedPane.getSelectedIndex();
    label.setText("Selected tab: " + index);
});
add(tabbedPane);
add(label);');

