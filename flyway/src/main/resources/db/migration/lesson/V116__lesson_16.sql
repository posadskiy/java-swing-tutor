-- Flyway migration V116: Lesson 16 tasks
-- Extracted from V17__lesson_16_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (129,
        16,
        1,
        'JPanel-add',
        '',
        129,
        12.0,
        0.0,
        'JPanel panel = new JPanel();
JButton button = new JButton("Button");
panel.add(button);
add(panel);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (130,
        16,
        1,
        'JSpinner-add',
        '',
        130,
        22.0,
        0.0,
        'SpinnerNumberModel model = new SpinnerNumberModel(10, 0, 100, 1);
JSpinner spinner = new JSpinner(model);
add(spinner);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (131,
        16,
        2,
        'JPanel-setLayout,add;JButton-add;JButton-add',
        '',
        131,
        18.0,
        0.0,
        'JPanel panel = new JPanel();
panel.setLayout(new FlowLayout());
JButton button1 = new JButton("Button 1");
JButton button2 = new JButton("Button 2");
panel.add(button1);
panel.add(button2);
add(panel);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (132,
        16,
        2,
        'JSpinner-setEditor,add',
        '',
        132,
        26.0,
        0.0,
        'SpinnerDateModel model = new SpinnerDateModel();
JSpinner spinner = new JSpinner(model);
JSpinner.DateEditor editor = new JSpinner.DateEditor(spinner, "dd/MM/yyyy");
spinner.setEditor(editor);
add(spinner);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (133,
        16,
        3,
        'JSpinner-add',
        '',
        133,
        25.0,
        0.0,
        'String[] values = {"January", "February", "March"};
SpinnerListModel model = new SpinnerListModel(values);
JSpinner spinner = new JSpinner(model);
add(spinner);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (134,
        16,
        4,
        'JSpinner-add',
        '',
        134,
        26.0,
        0.0,
        'SpinnerNumberModel model = new SpinnerNumberModel(0, 0, 100, 1);
JSpinner spinner = new JSpinner(model);
add(spinner);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (135,
        16,
        5,
        'JSpinner-addChangeListener,getValue,add',
        '',
        135,
        24.0,
        0.0,
        'JSpinner spinner = new JSpinner();
JLabel label = new JLabel();
spinner.addChangeListener(e -> {
    Object value = spinner.getValue();
    label.setText("Value: " + value);
});
add(spinner);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (136,
        16,
        6,
        'JSpinner-SpinnerDateModel,add',
        '',
        136,
        27.0,
        0.0,
        'SpinnerDateModel model = new SpinnerDateModel();
JSpinner spinner = new JSpinner(model);
JSpinner.DateEditor editor = new JSpinner.DateEditor(spinner, "dd.MM.yyyy");
spinner.setEditor(editor);
add(spinner);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (137,
        16,
        8,
        'JSpinner-setEditor,add',
        '',
        137,
        26.0,
        0.0,
        'JSpinner spinner = new JSpinner();
JSpinner.NumberEditor editor = new JSpinner.NumberEditor(spinner, "#,##0.00");
spinner.setEditor(editor);
add(spinner);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (138,
        16,
        9,
        'JSpinner-setModel,add',
        '',
        138,
        24.0,
        0.0,
        'JSpinner spinner = new JSpinner();
SpinnerNumberModel model = new SpinnerNumberModel(0, 0, 100, 5);
spinner.setModel(model);
add(spinner);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (139,
        16,
        10,
        'JSpinner-setValue',
        '',
        139,
        21.0,
        0.0,
        'JSpinner spinner = new JSpinner();
spinner.setValue(50);
add(spinner);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (140,
        16,
        11,
        'JSpinner-getEditor,add',
        '',
        140,
        25.0,
        0.0,
        'JSpinner spinner = new JSpinner();
JSpinner.DefaultEditor editor = (JSpinner.DefaultEditor) spinner.getEditor();
JTextField field = editor.getTextField();
add(spinner);');

