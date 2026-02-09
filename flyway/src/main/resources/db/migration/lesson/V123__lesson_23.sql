-- Flyway migration V123: Lesson 23 tasks
-- Extracted from V24__lesson_23_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (190,
        23,
        1,
        'JToolBar-add',
        '',
        190,
        16.0,
        0.0,
        'JToolBar toolbar = new JToolBar();
toolbar.add(new JButton("Button 1"));
toolbar.add(new JButton("Button 2"));
setLayout(new BorderLayout());
add(toolbar, BorderLayout.NORTH);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (191,
        23,
        2,
        'JToolBar-setOrientation,add',
        '',
        191,
        17.0,
        0.0,
        'JToolBar toolbar = new JToolBar();
toolbar.add(new JButton("Button"));
toolbar.setOrientation(JToolBar.VERTICAL);
add(toolbar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (192,
        23,
        3,
        'JToolBar-setFloatable,add',
        '',
        192,
        17.0,
        0.0,
        'JToolBar toolbar = new JToolBar();
toolbar.add(new JButton("Button"));
toolbar.setFloatable(true);
add(toolbar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (193,
        23,
        4,
        'JToolBar-setRollover,add',
        '',
        193,
        17.0,
        0.0,
        'JToolBar toolbar = new JToolBar();
toolbar.add(new JButton("Button"));
toolbar.setRollover(true);
add(toolbar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (194,
        23,
        5,
        'JToolBar-addSeparator,add',
        '',
        194,
        17.0,
        0.0,
        'JToolBar toolbar = new JToolBar();
toolbar.add(new JButton("Button 1"));
toolbar.addSeparator();
toolbar.add(new JButton("Button 2"));
add(toolbar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (195,
        23,
        6,
        'JToolBar-setBorder,add',
        '',
        195,
        18.0,
        0.0,
        'JToolBar toolbar = new JToolBar();
toolbar.add(new JButton("Button"));
toolbar.setBorder(BorderFactory.createEtchedBorder());
add(toolbar);');

