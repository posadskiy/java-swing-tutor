-- Flyway migration V118: Lesson 18 tasks
-- Extracted from V19__lesson_18_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (153,
        18,
        1,
        'JDialog-setSize,setVisible',
        '',
        153,
        16.0,
        0.0,
        'JFrame parent = new JFrame();
JDialog dialog = new JDialog(parent, "Dialog", true);
dialog.setSize(400, 300);
dialog.setVisible(true);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (154,
        18,
        1,
        'JScrollBar-add',
        '',
        154,
        23.0,
        0.0,
        'JScrollBar scrollBar = new JScrollBar(JScrollBar.VERTICAL, 0, 10, 0, 100);
add(scrollBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (155,
        18,
        2,
        'JScrollBar-addAdjustmentListener,getValue,add',
        '',
        155,
        23.0,
        0.0,
        'JScrollBar scrollBar = new JScrollBar(JScrollBar.VERTICAL, 0, 10, 0, 100);
JLabel label = new JLabel();
scrollBar.addAdjustmentListener(e -> {
    int value = e.getValue();
    label.setText("Value: " + value);
});
add(scrollBar);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (156,
        18,
        3,
        'JScrollBar-setUnitIncrement,setBlockIncrement,add',
        '',
        156,
        23.0,
        0.0,
        'JScrollBar scrollBar = new JScrollBar(JScrollBar.VERTICAL, 0, 10, 0, 100);
scrollBar.setUnitIncrement(10);
scrollBar.setBlockIncrement(50);
add(scrollBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (157,
        18,
        4,
        'JScrollBar-setUnitIncrement,setBlockIncrement,add',
        '',
        157,
        23.0,
        0.0,
        'JScrollBar scrollBar = new JScrollBar(JScrollBar.VERTICAL, 0, 10, 0, 100);
scrollBar.setUnitIncrement(20);
scrollBar.setBlockIncrement(100);
add(scrollBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (158,
        18,
        5,
        'JScrollBar-setOrientation,add',
        '',
        158,
        22.0,
        0.0,
        'JScrollBar scrollBar = new JScrollBar();
scrollBar.setOrientation(JScrollBar.HORIZONTAL);
add(scrollBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (159,
        18,
        8,
        'JScrollBar-setBlockIncrement,add',
        '',
        159,
        21.0,
        0.0,
        'JScrollBar scrollBar = new JScrollBar(JScrollBar.VERTICAL, 0, 10, 0, 100);
scrollBar.setBlockIncrement(100);
add(scrollBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (160,
        18,
        9,
        'JScrollBar-setUnitIncrement',
        '',
        160,
        21.0,
        0.0,
        'JScrollBar scrollBar = new JScrollBar(JScrollBar.VERTICAL, 0, 10, 0, 100);
scrollBar.setUnitIncrement(10);
add(scrollBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (161,
        18,
        10,
        'JScrollBar-setValue',
        '',
        161,
        21.0,
        0.0,
        'JScrollBar scrollBar = new JScrollBar(JScrollBar.VERTICAL, 0, 10, 0, 200);
scrollBar.setValue(100);
add(scrollBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (162,
        18,
        11,
        'JScrollBar-setBlockIncrement',
        '',
        162,
        22.0,
        0.0,
        'JScrollBar scrollBar = new JScrollBar(JScrollBar.VERTICAL, 0, 10, 0, 100);
scrollBar.setBlockIncrement(50);
add(scrollBar);');

