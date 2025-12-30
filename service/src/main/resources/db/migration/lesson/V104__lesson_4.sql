-- Flyway migration V104: Lesson 4 tasks
-- Extracted from V5__lesson_4_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (35,
        4,
        1,
        'JTextField-add',
        '',
        35,
        12.0,
        0.0,
        'JTextField field = new JTextField();
add(field);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (36,
        4,
        2,
        'JTextField-setText,add',
        '',
        36,
        14.0,
        0.0,
        'JTextField field = new JTextField();
field.setText("Enter name");
add(field);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (37,
        4,
        3,
        'JTextField-setColumns,add',
        '',
        37,
        16.0,
        0.0,
        'JTextField field = new JTextField();
field.setColumns(20);
add(field);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (38,
        4,
        4,
        'JTextField-setBackground,setForeground,add',
        '',
        38,
        18.0,
        0.0,
        'JTextField field = new JTextField();
field.setBackground(Color.YELLOW);
field.setForeground(Color.BLACK);
add(field);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (39,
        4,
        5,
        'JTextField-setEditable,add',
        '',
        39,
        16.0,
        0.0,
        'JTextField field = new JTextField("Text");
field.setEditable(false);
add(field);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (40,
        4,
        6,
        'JTextField-setToolTipText,add',
        '',
        40,
        20.0,
        0.0,
        'JTextField textField = new JTextField();
textField.setToolTipText("Enter your name");
add(textField);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (41,
        4,
        7,
        'JTextField-add',
        '',
        41,
        27.0,
        0.0,
        'JTextField textField = new JTextField();
AbstractDocument doc = (AbstractDocument) textField.getDocument();
doc.setDocumentFilter(new DocumentFilter() {
    @Override
    public void insertString(FilterBypass fb, int offset, String string, AttributeSet attr) throws BadLocationException {
        if (string.matches("\\\\d+")) {
            super.insertString(fb, offset, string, attr);
        }
    }
});
add(textField);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (42,
        4,
        8,
        'JTextField-setCaretPosition,add',
        '',
        42,
        22.0,
        0.0,
        'JTextField textField = new JTextField("Text");
textField.setCaretPosition(0);
add(textField);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (43,
        4,
        9,
        'JTextField-selectAll,add',
        '',
        43,
        21.0,
        0.0,
        'JTextField textField = new JTextField("Text");
textField.selectAll();
add(textField);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (44,
        4,
        10,
        'JTextField-select,replaceSelection,add',
        '',
        44,
        23.0,
        0.0,
        'JTextField textField = new JTextField("Old text");
textField.select(0, 5);
textField.replaceSelection("New text");
add(textField);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (45,
        4,
        11,
        'JTextField-add',
        '',
        45,
        27.0,
        0.0,
        'JTextField textField = new JTextField();
AbstractDocument doc = (AbstractDocument) textField.getDocument();
doc.setDocumentFilter(new DocumentFilter() {
    @Override
    public void insertString(FilterBypass fb, int offset, String string, AttributeSet attr) throws BadLocationException {
        if (string.matches("[0-9]+")) {
            super.insertString(fb, offset, string, attr);
        }
    }
});
add(textField);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (46,
        4,
        12,
        'JTextField-setCaretPosition,add',
        '',
        46,
        22.0,
        0.0,
        'JTextField textField = new JTextField("Text");
textField.setCaretPosition(5);
add(textField);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (47,
        4,
        13,
        'JTextField-selectAll,add',
        '',
        47,
        21.0,
        0.0,
        'JTextField textField = new JTextField("Text");
textField.selectAll();
add(textField);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (48,
        4,
        14,
        'JTextField-setHorizontalAlignment,add',
        '',
        48,
        22.0,
        0.0,
        'JTextField textField = new JTextField("Text");
textField.setHorizontalAlignment(JTextField.CENTER);
add(textField);');

