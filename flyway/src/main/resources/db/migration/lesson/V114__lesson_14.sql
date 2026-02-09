-- Flyway migration V114: Lesson 14 tasks
-- Extracted from V15__lesson_14_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (108,
        14,
        1,
        'JProgressBar-setValue,add',
        '',
        108,
        14.0,
        0.0,
        'JProgressBar progressBar = new JProgressBar(0, 100);
progressBar.setValue(50);
add(progressBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (109,
        14,
        2,
        'JProgressBar-setMinimum,setMaximum,add',
        '',
        109,
        15.0,
        0.0,
        'JProgressBar progressBar = new JProgressBar();
progressBar.setMinimum(0);
progressBar.setMaximum(100);
add(progressBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (110,
        14,
        3,
        'JProgressBar-setValue,add',
        '',
        110,
        15.0,
        0.0,
        'JProgressBar progressBar = new JProgressBar(0, 100);
progressBar.setValue(75);
add(progressBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (111,
        14,
        4,
        'JProgressBar-setOrientation,add',
        '',
        111,
        16.0,
        0.0,
        'JProgressBar progressBar = new JProgressBar(0, 100);
progressBar.setOrientation(JProgressBar.VERTICAL);
add(progressBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (112,
        14,
        5,
        'JProgressBar-setValue,setStringPainted,add',
        '',
        112,
        16.0,
        0.0,
        'JProgressBar progressBar = new JProgressBar(0, 100);
progressBar.setValue(50);
progressBar.setStringPainted(true);
add(progressBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (113,
        14,
        6,
        'JProgressBar-setValue,setForeground,add',
        '',
        113,
        17.0,
        0.0,
        'JProgressBar progressBar = new JProgressBar(0, 100);
progressBar.setValue(50);
progressBar.setForeground(Color.GREEN);
add(progressBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (114,
        14,
        7,
        'JProgressBar-setStringPainted,setFont,add',
        '',
        114,
        17.0,
        0.0,
        'JProgressBar progressBar = new JProgressBar(0, 100);
progressBar.setStringPainted(true);
Font font = new Font("Arial", Font.BOLD, 14);
progressBar.setFont(font);
add(progressBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (115,
        14,
        8,
        'JProgressBar-setPreferredSize,add',
        '',
        115,
        18.0,
        0.0,
        'JProgressBar progressBar = new JProgressBar(0, 100);
progressBar.setPreferredSize(new Dimension(300, 25));
add(progressBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (116,
        14,
        9,
        'JProgressBar-setToolTipText',
        '',
        116,
        16.0,
        0.0,
        'JProgressBar progressBar = new JProgressBar(0, 100);
progressBar.setToolTipText("Loading progress");
add(progressBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (117,
        14,
        10,
        'JProgressBar-setIndeterminate',
        '',
        117,
        18.0,
        0.0,
        'JProgressBar progressBar = new JProgressBar();
progressBar.setIndeterminate(true);
add(progressBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (118,
        14,
        11,
        'JProgressBar-addChangeListener,getValue,add',
        '',
        118,
        19.0,
        0.0,
        'JProgressBar progressBar = new JProgressBar(0, 100);
JLabel label = new JLabel();
progressBar.addChangeListener(e -> {
    int value = progressBar.getValue();
    label.setText("Progress: " + value + "%");
});
add(progressBar);
add(label);');

