-- Flyway migration V137: Lesson 37 tasks
-- Extracted from V38__lesson_37_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (313,
        37,
        1,
        'BorderLayout-add',
        '',
        313,
        18.0,
        0.0,
        'setLayout(new BorderLayout());
add(new JButton("North"), BorderLayout.NORTH);
add(new JButton("South"), BorderLayout.SOUTH);
add(new JButton("Center"), BorderLayout.CENTER);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (314,
        37,
        2,
        'BorderLayout-add',
        '',
        314,
        20.0,
        0.0,
        'setLayout(new BorderLayout());
add(new JButton("North"), BorderLayout.NORTH);
add(new JButton("South"), BorderLayout.SOUTH);
add(new JButton("West"), BorderLayout.WEST);
add(new JButton("East"), BorderLayout.EAST);
add(new JButton("Center"), BorderLayout.CENTER);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (315,
        37,
        3,
        'BorderLayout-add',
        '',
        315,
        20.0,
        0.0,
        'setLayout(new BorderLayout(10, 10));
add(new JButton("North"), BorderLayout.NORTH);
add(new JButton("Center"), BorderLayout.CENTER);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (316,
        37,
        4,
        'BorderLayout-JButton-setPreferredSize,add',
        '',
        316,
        22.0,
        0.0,
        'JButton button = new JButton("Button");
button.setPreferredSize(new Dimension(100, 30));
setLayout(new BorderLayout());
add(button, BorderLayout.NORTH);');

