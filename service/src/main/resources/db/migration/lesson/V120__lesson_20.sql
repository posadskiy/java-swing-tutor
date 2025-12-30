-- Flyway migration V120: Lesson 20 tasks
-- Extracted from V21__lesson_20_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (170,
        20,
        1,
        'JScrollPane-add',
        '',
        170,
        16.0,
        0.0,
        'JTextArea area = new JTextArea("Long text...");
JScrollPane scrollPane = new JScrollPane(area);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (171,
        20,
        11,
        'JPanel-setDoubleBuffered,add',
        '',
        171,
        20.0,
        0.0,
        'JPanel panel = new JPanel();
panel.setDoubleBuffered(true);
add(panel);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (172,
        20,
        12,
        'JPanel-setPreferredSize,add',
        '',
        172,
        22.0,
        0.0,
        'JPanel panel = new JPanel();
panel.setPreferredSize(new Dimension(200, 100));
add(panel);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (173,
        20,
        13,
        'JPanel-setMinimumSize,add',
        '',
        173,
        22.0,
        0.0,
        'JPanel panel = new JPanel();
panel.setMinimumSize(new Dimension(100, 50));
add(panel);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (174,
        20,
        14,
        'JPanel-setMaximumSize,add',
        '',
        174,
        22.0,
        0.0,
        'JPanel panel = new JPanel();
panel.setMaximumSize(new Dimension(500, 300));
add(panel);');

