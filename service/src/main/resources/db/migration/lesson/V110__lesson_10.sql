-- Flyway migration V110: Lesson 10 tasks
-- Extracted from V11__lesson_10_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (83,
        10,
        1,
        'JComboBox-add',
        '',
        83,
        14.0,
        0.0,
        'String[] items = {"Option 1", "Option 2", "Option 3"};
JComboBox combo = new JComboBox(items);
add(combo);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (84,
        10,
        2,
        'JComboBox-setEditable,add',
        '',
        84,
        18.0,
        0.0,
        'String[] items = {"Option 1", "Option 2", "Option 3"};
JComboBox<String> combo = new JComboBox<>(items);
combo.setEditable(true);
add(combo);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (85,
        10,
        2,
        'JList-setSelectionMode,add',
        '',
        85,
        18.0,
        0.0,
        'String[] items = {"Item 1", "Item 2"};
JList<String> list = new JList<>(items);
list.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
add(list);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (86,
        10,
        3,
        'JRadioButton-add;JRadioButton-add;JRadioButton-add',
        '',
        86,
        24.0,
        0.0,
        'ButtonGroup group = new ButtonGroup();
JRadioButton radio1 = new JRadioButton("Option 1");
JRadioButton radio2 = new JRadioButton("Option 2");
JRadioButton radio3 = new JRadioButton("Option 3");
group.add(radio1);
group.add(radio2);
group.add(radio3);
add(radio1);
add(radio2);
add(radio3);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (87,
        10,
        4,
        'JRadioButton-setIcon,setSelectedIcon,add',
        '',
        87,
        24.0,
        0.0,
        'JRadioButton radioButton = new JRadioButton("Option");
radioButton.setIcon(new ImageIcon("unselected.png"));
radioButton.setSelectedIcon(new ImageIcon("selected.png"));
add(radioButton);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (88,
        10,
        5,
        'JRadioButton-add;JRadioButton-add',
        '',
        88,
        23.0,
        0.0,
        'ButtonGroup group = new ButtonGroup();
JRadioButton radioButton1 = new JRadioButton("Option 1");
JRadioButton radioButton2 = new JRadioButton("Option 2");
group.add(radioButton1);
group.add(radioButton2);
add(radioButton1);
add(radioButton2);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (89,
        10,
        6,
        'JRadioButton-setMnemonic,add',
        '',
        89,
        23.0,
        0.0,
        'JRadioButton radioButton = new JRadioButton("Red (&R)");
radioButton.setMnemonic(KeyEvent.VK_R);
add(radioButton);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (90,
        10,
        7,
        'JRadioButton-addItemListener,add',
        '',
        90,
        24.0,
        0.0,
        'JRadioButton radioButton = new JRadioButton("Option");
JLabel label = new JLabel();
radioButton.addItemListener(e -> {
    if (e.getStateChange() == ItemEvent.SELECTED) {
        label.setText("Selected!");
    }
});
add(radioButton);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (91,
        10,
        8,
        'JRadioButton-setActionCommand,addActionListener,add',
        '',
        91,
        24.0,
        0.0,
        'JRadioButton radioButton = new JRadioButton("Option 1");
radioButton.setActionCommand("OPTION1");
radioButton.addActionListener(e -> {
    String cmd = e.getActionCommand();
        label.setText("Command: " + cmd);
});
add(radioButton);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (92,
        10,
        9,
        'JRadioButton-setFont,add',
        '',
        92,
        22.0,
        0.0,
        'JRadioButton radioButton = new JRadioButton("Option");
Font font = new Font("Arial", Font.ITALIC, 12);
radioButton.setFont(font);
add(radioButton);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (93,
        10,
        10,
        'JRadioButton-setBorderPainted,add',
        '',
        93,
        21.0,
        0.0,
        'JRadioButton radioButton = new JRadioButton("Option");
radioButton.setBorderPainted(true);
add(radioButton);');

