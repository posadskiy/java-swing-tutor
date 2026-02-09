-- Flyway migration V117: Lesson 17 tasks
-- Extracted from V18__lesson_17_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (141,
        17,
        1,
        'JFrame-setSize,setVisible',
        '',
        141,
        14.0,
        0.0,
        'JFrame frame = new JFrame("My application");
frame.setSize(800, 600);
frame.setVisible(true);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (142,
        17,
        1,
        'JProgressBar-setValue,add',
        '',
        142,
        20.0,
        0.0,
        'JProgressBar progressBar = new JProgressBar(0, 100);
progressBar.setValue(50);
add(progressBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (143,
        17,
        2,
        'JFrame-setDefaultCloseOperation,setVisible',
        '',
        143,
        16.0,
        0.0,
        'JFrame frame = new JFrame("Application");
frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
frame.setVisible(true);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (144,
        17,
        2,
        'JProgressBar-setStringPainted,setString,add',
        '',
        144,
        22.0,
        0.0,
        'JProgressBar progressBar = new JProgressBar(0, 100);
progressBar.setStringPainted(true);
progressBar.setString("50%");
add(progressBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (145,
        17,
        3,
        'JProgressBar-setIndeterminate,add',
        '',
        145,
        21.0,
        0.0,
        'JProgressBar progressBar = new JProgressBar(0, 100);
progressBar.setIndeterminate(true);
add(progressBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (146,
        17,
        4,
        'JProgressBar-setStringPainted,setString,add',
        '',
        146,
        22.0,
        0.0,
        'JProgressBar progressBar = new JProgressBar(0, 100);
progressBar.setStringPainted(true);
progressBar.setString("Loading...");
add(progressBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (147,
        17,
        5,
        'JProgressBar-setBorderPainted,add',
        '',
        147,
        21.0,
        0.0,
        'JProgressBar progressBar = new JProgressBar(0, 100);
progressBar.setBorderPainted(true);
add(progressBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (148,
        17,
        6,
        'JProgressBar-setIndeterminate',
        '',
        148,
        23.0,
        0.0,
        'JProgressBar progressBar = new JProgressBar(0, 100);
progressBar.setIndeterminate(true);
add(progressBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (149,
        17,
        8,
        'JProgressBar-setStringPainted,setString,add',
        '',
        149,
        22.0,
        0.0,
        'JProgressBar progressBar = new JProgressBar(0, 100);
progressBar.setStringPainted(true);
progressBar.setString("Loading...");
add(progressBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (150,
        17,
        9,
        'JProgressBar-setStringPainted-String-format',
        '',
        150,
        23.0,
        0.0,
        'JProgressBar progressBar = new JProgressBar(0, 100);
progressBar.setStringPainted(true);
progressBar.setString(String.format("%d%%", progressBar.getValue()));
add(progressBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (151,
        17,
        10,
        'JProgressBar-setValue',
        '',
        151,
        21.0,
        0.0,
        'JProgressBar progressBar = new JProgressBar(0, 100);
progressBar.setValue(50);
add(progressBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (152,
        17,
        11,
        'JProgressBar-setIndeterminate',
        '',
        152,
        23.0,
        0.0,
        'JProgressBar progressBar = new JProgressBar(0, 100);
progressBar.setIndeterminate(true);
add(progressBar);');

