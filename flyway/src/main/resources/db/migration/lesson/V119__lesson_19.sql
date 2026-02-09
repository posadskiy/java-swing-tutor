-- Flyway migration V119: Lesson 19 tasks
-- Extracted from V20__lesson_19_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (163,
        19,
        1,
        'JWindow-setSize,setVisible',
        '',
        163,
        15.0,
        0.0,
        'JFrame frame = new JFrame();
JWindow window = new JWindow(frame);
window.setSize(400, 300);
window.setVisible(true);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (164,
        19,
        2,
        'JWindow-setSize,setVisible',
        '',
        164,
        16.0,
        0.0,
        'JFrame frame = new JFrame();
JWindow window = new JWindow(frame);
window.setSize(500, 400);
window.setVisible(true);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (165,
        19,
        3,
        'JWindow-setSize,setLocation,setVisible',
        '',
        165,
        16.0,
        0.0,
        'JFrame frame = new JFrame();
JWindow window = new JWindow(frame);
window.setSize(400, 300);
window.setLocation(100, 100);
window.setVisible(true);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (166,
        19,
        4,
        'JWindow-setSize,setAlwaysOnTop,setVisible',
        '',
        166,
        17.0,
        0.0,
        'JFrame frame = new JFrame();
JWindow window = new JWindow(frame);
window.setSize(400, 300);
window.setAlwaysOnTop(true);
window.setVisible(true);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (167,
        19,
        5,
        'JWindow-setSize,setBackground,setVisible',
        '',
        167,
        17.0,
        0.0,
        'JFrame frame = new JFrame();
JWindow window = new JWindow(frame);
window.setSize(400, 300);
window.setBackground(Color.WHITE);
window.setVisible(true);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (168,
        19,
        6,
        'JWindow-setSize,setOpacity,setVisible',
        '',
        168,
        18.0,
        0.0,
        'JFrame frame = new JFrame();
JWindow window = new JWindow(frame);
window.setSize(400, 300);
window.setOpacity(0.8f);
window.setVisible(true);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (169,
        19,
        7,
        'JWindow-setSize,setVisible,dispose',
        '',
        169,
        16.0,
        0.0,
        'JFrame frame = new JFrame();
JWindow window = new JWindow(frame);
window.setSize(400, 300);
window.setVisible(true);
window.dispose();');

