-- Flyway migration V112: Lesson 12 tasks
-- Extracted from V13__lesson_12_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (101,
        12,
        2,
        'JToggleButton-addActionListener,isSelected,add',
        '',
        101,
        23.0,
        0.0,
        'JToggleButton toggleButton = new JToggleButton("Enable");
JLabel label = new JLabel();
toggleButton.addActionListener(e -> {
    if (toggleButton.isSelected()) {
        label.setText("Enabled!");
    } else {
        label.setText("Disabled!");
    }
});
add(toggleButton);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (102,
        12,
        3,
        'JToggleButton-setMnemonic,add',
        '',
        102,
        23.0,
        0.0,
        'JToggleButton toggleButton = new JToggleButton("Enable (&T)");
toggleButton.setMnemonic(KeyEvent.VK_T);
add(toggleButton);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (103,
        12,
        4,
        'JToggleButton-addItemListener,isSelected,add',
        '',
        103,
        24.0,
        0.0,
        'JToggleButton toggleButton = new JToggleButton("Enable");
toggleButton.addItemListener(e -> {
    boolean selected = toggleButton.isSelected();
    label.setText("Enabled: " + selected);
});
add(toggleButton);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (104,
        12,
        5,
        'JToggleButton-setActionCommand,addActionListener,add',
        '',
        104,
        24.0,
        0.0,
        'JToggleButton toggleButton = new JToggleButton("Enable");
toggleButton.setActionCommand("TOGGLE");
toggleButton.addActionListener(e -> {
    String cmd = e.getActionCommand();
    label.setText("Command: " + cmd);
});
add(toggleButton);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (105,
        12,
        6,
        'JToggleButton-setFont,add',
        '',
        105,
        22.0,
        0.0,
        'JToggleButton toggleButton = new JToggleButton("Enable");
Font font = new Font("Serif", Font.PLAIN, 16);
toggleButton.setFont(font);
add(toggleButton);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (106,
        12,
        7,
        'JToggleButton-setBorderPainted,add',
        '',
        106,
        21.0,
        0.0,
        'JToggleButton toggleButton = new JToggleButton("Enable");
toggleButton.setBorderPainted(true);
add(toggleButton);');

