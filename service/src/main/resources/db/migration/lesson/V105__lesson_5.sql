-- Flyway migration V105: Lesson 5 tasks
-- Extracted from V6__lesson_5_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (49,
        5,
        1,
        'JTextArea-add',
        '',
        49,
        12.0,
        0.0,
        'JTextArea area = new JTextArea();
add(area);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (50,
        5,
        2,
        'JTextArea-setLineWrap,setWrapStyleWord,add',
        '',
        50,
        18.0,
        0.0,
        'JTextArea area = new JTextArea();
area.setLineWrap(true);
area.setWrapStyleWord(true);
add(area);');

