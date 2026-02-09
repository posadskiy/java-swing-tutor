-- Flyway migration V108: Lesson 8 tasks
-- Extracted from V9__lesson_8_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (72,
        8,
        1,
        'JRadioButton-add',
        '',
        72,
        12.0,
        0.0,
        'JRadioButton radio = new JRadioButton("Option 1");
add(radio);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (73,
        8,
        2,
        'JRadioButton-add;JRadioButton-add',
        '',
        73,
        18.0,
        0.0,
        'ButtonGroup group = new ButtonGroup();
JRadioButton radio1 = new JRadioButton("Option 1");
JRadioButton radio2 = new JRadioButton("Option 2");
group.add(radio1);
group.add(radio2);
add(radio1);
add(radio2);');

