-- Flyway migration V115: Lesson 15 tasks
-- Extracted from V16__lesson_15_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (119,
        15,
        1,
        'JScrollBar-add',
        '',
        119,
        15.0,
        0.0,
        'JScrollBar scrollBar = new JScrollBar(JScrollBar.VERTICAL, 0, 10, 0, 100);
add(scrollBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (120,
        15,
        2,
        'JScrollBar-setOrientation,add',
        '',
        120,
        16.0,
        0.0,
        'JScrollBar scrollBar = new JScrollBar();
scrollBar.setOrientation(JScrollBar.HORIZONTAL);
add(scrollBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (121,
        15,
        3,
        'JScrollBar-setMinimum,setMaximum,add',
        '',
        121,
        16.0,
        0.0,
        'JScrollBar scrollBar = new JScrollBar();
scrollBar.setMinimum(0);
scrollBar.setMaximum(1000);
add(scrollBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (122,
        15,
        4,
        'JScrollBar-setValue,add',
        '',
        122,
        17.0,
        0.0,
        'JScrollBar scrollBar = new JScrollBar(JScrollBar.VERTICAL, 0, 10, 0, 1000);
scrollBar.setValue(500);
add(scrollBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (123,
        15,
        5,
        'JScrollBar-setUnitIncrement,add',
        '',
        123,
        17.0,
        0.0,
        'JScrollBar scrollBar = new JScrollBar(JScrollBar.VERTICAL, 0, 10, 0, 100);
scrollBar.setUnitIncrement(10);
add(scrollBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (124,
        15,
        6,
        'JScrollBar-setBlockIncrement,add',
        '',
        124,
        17.0,
        0.0,
        'JScrollBar scrollBar = new JScrollBar(JScrollBar.VERTICAL, 0, 10, 0, 100);
scrollBar.setBlockIncrement(50);
add(scrollBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (125,
        15,
        7,
        'JScrollBar-setForeground,add',
        '',
        125,
        18.0,
        0.0,
        'JScrollBar scrollBar = new JScrollBar(JScrollBar.VERTICAL, 0, 10, 0, 100);
scrollBar.setForeground(Color.BLUE);
add(scrollBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (126,
        15,
        8,
        'JScrollBar-setPreferredSize,add',
        '',
        126,
        18.0,
        0.0,
        'JScrollBar scrollBar = new JScrollBar(JScrollBar.VERTICAL, 0, 10, 0, 100);
scrollBar.setPreferredSize(new Dimension(20, 200));
add(scrollBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (127,
        15,
        9,
        'JScrollBar-setToolTipText',
        '',
        127,
        16.0,
        0.0,
        'JScrollBar scrollBar = new JScrollBar(JScrollBar.VERTICAL, 0, 10, 0, 100);
scrollBar.setToolTipText("Scroll content");
add(scrollBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (128,
        15,
        10,
        'JScrollBar-addAdjustmentListener,getValue,add',
        '',
        128,
        19.0,
        0.0,
        'JScrollBar scrollBar = new JScrollBar(JScrollBar.VERTICAL, 0, 10, 0, 100);
JLabel label = new JLabel();
scrollBar.addAdjustmentListener(e -> {
    int value = scrollBar.getValue();
    label.setText("Position: " + value);
});
add(scrollBar);
add(label);');

