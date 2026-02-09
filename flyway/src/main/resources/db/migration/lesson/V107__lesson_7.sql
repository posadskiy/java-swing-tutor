-- Flyway migration V107: Lesson 7 tasks
-- Extracted from V8__lesson_7_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (62,
        7,
        1,
        'JCheckBox-add',
        '',
        62,
        12.0,
        0.0,
        'JCheckBox checkBox = new JCheckBox("Enable");
add(checkBox);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (63,
        7,
        2,
        'JCheckBox-setSelected,add',
        '',
        63,
        14.0,
        0.0,
        'JCheckBox checkBox = new JCheckBox("Enable");
checkBox.setSelected(true);
add(checkBox);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (64,
        7,
        3,
        'JPasswordField-setEchoChar,add',
        '',
        64,
        22.0,
        0.0,
        'JPasswordField passwordField = new JPasswordField();
passwordField.setEchoChar(''●'');
add(passwordField);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (65,
        7,
        4,
        'JPasswordField-getPassword,add',
        '',
        65,
        25.0,
        0.0,
        'JPasswordField passwordField = new JPasswordField();
char[] password = passwordField.getPassword();
JLabel label = new JLabel();
if (password.length < 8) {
    label.setText("Weak password!");
}
add(passwordField);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (66,
        7,
        5,
        'JPasswordField-add',
        '',
        66,
        26.0,
        0.0,
        'JPasswordField passwordField = new JPasswordField();
AbstractDocument doc = (AbstractDocument) passwordField.getDocument();
doc.setDocumentFilter(new DocumentFilter() {
    @Override
    public void remove(FilterBypass fb, int offset, int length) throws BadLocationException {
        // Запретить удаление
    }
});
add(passwordField);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (67,
        7,
        6,
        'JPasswordField-setEchoChar,add',
        '',
        67,
        23.0,
        0.0,
        'JPasswordField passwordField = new JPasswordField();
passwordField.setEchoChar(''●'');
add(passwordField);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (68,
        7,
        7,
        'JPasswordField-getEchoChar,setEchoChar,add',
        '',
        68,
        24.0,
        0.0,
        'JPasswordField passwordField = new JPasswordField();
char echoChar = passwordField.getEchoChar();
passwordField.setEchoChar((char) 0);
// Показать пароль, затем восстановить:
// passwordField.setEchoChar(echoChar);
add(passwordField);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (69,
        7,
        8,
        'JPasswordField-getPassword,add',
        '',
        69,
        26.0,
        0.0,
        'JPasswordField passwordField = new JPasswordField();
char[] password = passwordField.getPassword();
boolean isStrong = password.length >= 8 && new String(password).matches(".*[A-Z].*");
add(passwordField);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (70,
        7,
        9,
        'JPasswordField-add',
        '',
        70,
        27.0,
        0.0,
        'JPasswordField passwordField = new JPasswordField();
char[] password = passwordField.getPassword();
StringSelection selection = new StringSelection(new String(password));
Toolkit.getDefaultToolkit().getSystemClipboard().setContents(selection, null);
add(passwordField);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (71,
        7,
        10,
        'JPasswordField-setEchoChar,add',
        '',
        71,
        22.0,
        0.0,
        'JPasswordField passwordField = new JPasswordField();
passwordField.setEchoChar(''*'');
add(passwordField);');

