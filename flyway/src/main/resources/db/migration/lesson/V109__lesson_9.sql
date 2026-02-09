-- Flyway migration V109: Lesson 9 tasks
-- Extracted from V10__lesson_9_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (74,
        9,
        1,
        'JToggleButton-add',
        '',
        74,
        12.0,
        0.0,
        'JToggleButton toggle = new JToggleButton("Enable");
add(toggle);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (75,
        9,
        3,
        'JCheckBox-addActionListener,isSelected,add',
        '',
        75,
        23.0,
        0.0,
        'JCheckBox checkBox = new JCheckBox("Option");
JLabel label = new JLabel();
checkBox.addActionListener(e -> {
    if (checkBox.isSelected()) {
        label.setText("Checkbox selected!");
    } else {
        label.setText("Checkbox unchecked!");
    }
});
add(checkBox);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (76,
        9,
        4,
        'JCheckBox-setHorizontalTextPosition,add',
        '',
        76,
        22.0,
        0.0,
        'JCheckBox checkBox = new JCheckBox("Option");
checkBox.setHorizontalTextPosition(SwingConstants.LEFT);
add(checkBox);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (77,
        9,
        5,
        'JCheckBox-getModel,add',
        '',
        77,
        24.0,
        0.0,
        'JCheckBox checkBox = new JCheckBox("Option");
ButtonModel model = checkBox.getModel();
model.setSelected(true);
add(checkBox);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (78,
        9,
        6,
        'JCheckBox-setMnemonic,add',
        '',
        78,
        23.0,
        0.0,
        'JCheckBox checkBox = new JCheckBox("Agree (&C)");
checkBox.setMnemonic(KeyEvent.VK_C);
add(checkBox);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (79,
        9,
        7,
        'JCheckBox-addItemListener,isSelected,add',
        '',
        79,
        24.0,
        0.0,
        'JCheckBox checkBox = new JCheckBox("Option");
JLabel label = new JLabel();
checkBox.addItemListener(e -> {
    boolean selected = checkBox.isSelected();
    label.setText("Selected: " + selected);
});
add(checkBox);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (80,
        9,
        8,
        'JCheckBox-setModel,getModel,add',
        '',
        80,
        26.0,
        0.0,
        'JCheckBox checkBox = new JCheckBox("Option");
ButtonModel model = new JToggleButton.ToggleButtonModel();
checkBox.setModel(model);
checkBox.getModel().setPressed(true);
checkBox.getModel().setArmed(true);
checkBox.getModel().setSelected(false);
add(checkBox);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (81,
        9,
        9,
        'JCheckBox-add',
        '',
        81,
        23.0,
        0.0,
        'JCheckBox checkBox1 = new JCheckBox("Option 1");
JCheckBox checkBox2 = new JCheckBox("Option 2");
JCheckBox checkBox3 = new JCheckBox("Option 3");
List<JCheckBox> group = Arrays.asList(checkBox1, checkBox2, checkBox3);
JLabel label = new JLabel();
group.forEach(cb -> cb.addItemListener(e -> label.setText("Changed")));
add(checkBox1);
add(checkBox2);
add(checkBox3);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (82,
        9,
        10,
        'JCheckBox-setFont,add',
        '',
        82,
        22.0,
        0.0,
        'JCheckBox checkBox = new JCheckBox("Option");
Font font = new Font("Arial", Font.BOLD, 14);
checkBox.setFont(font);
add(checkBox);');
