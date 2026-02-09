-- Flyway migration V149: Lesson 49 tasks
-- Extracted from V50__lesson_49_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (437,
        49,
        1,
        'JCheckBox-addItemListener,add',
        '',
        437,
        18.0,
        0.0,
        'JCheckBox checkBox = new JCheckBox("Select");
JLabel label = new JLabel();
checkBox.addItemListener(e -> {
    if (e.getStateChange() == ItemEvent.SELECTED) {
        label.setText("Selected!");
    } else {
        label.setText("Unchecked!");
    }
});
add(checkBox);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (438,
        49,
        2,
        'JSlider-addChangeListener,getValue,add',
        '',
        438,
        18.0,
        0.0,
        'JSlider slider = new JSlider(0, 100, 50);
JLabel label = new JLabel();
slider.addChangeListener(e -> {
    int value = slider.getValue();
    label.setText("Value: " + value);
});
add(slider);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (439,
        49,
        3,
        'JComboBox-addItemListener,add',
        '',
        439,
        19.0,
        0.0,
        'JComboBox<String> comboBox = new JComboBox<>(new String[]{"Item 1", "Item 2"});
JLabel label = new JLabel();
comboBox.addItemListener(e -> {
    if (e.getStateChange() == ItemEvent.SELECTED) {
        Object item = e.getItem();
        label.setText("Selected: " + item);
    }
});
add(comboBox);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (440,
        49,
        4,
        'JSpinner-addChangeListener,getValue,add',
        '',
        440,
        19.0,
        0.0,
        'JSpinner spinner = new JSpinner(new SpinnerNumberModel(10, 0, 100, 1));
spinner.addChangeListener(e -> {
    Object value = spinner.getValue();
    label.setText("Value: " + value);
});
add(spinner);');

