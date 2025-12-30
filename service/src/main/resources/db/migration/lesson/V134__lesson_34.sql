-- Flyway migration V134: Lesson 34 tasks
-- Extracted from V35__lesson_34_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (287, 34, 1, 'JOptionPane', '', 287, 18.0, 0.0,
        'JOptionPane.showMessageDialog(null, "Hello, world!", "Greeting", JOptionPane.INFORMATION_MESSAGE);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (288,
        34,
        2,
        'JOptionPane',
        '',
        288,
        20.0,
        0.0,
        'int result = JOptionPane.showConfirmDialog(null, "Are you sure?", "Confirmation", JOptionPane.YES_NO_OPTION);
JLabel label = new JLabel();
if (result == JOptionPane.YES_OPTION) {
    label.setText("User selected Yes");
}
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (289,
        34,
        3,
        'JOptionPane',
        '',
        289,
        20.0,
        0.0,
        'String name = JOptionPane.showInputDialog(null, "Enter your name:", "Input", JOptionPane.QUESTION_MESSAGE);
JLabel label = new JLabel();
if (name != null && !name.isEmpty()) {
    label.setText("Hello, " + name + "!");
}
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (290,
        34,
        4,
        'JOptionPane',
        '',
        290,
        22.0,
        0.0,
        'String[] options = {"Save", "Cancel", "Don''t save"};
int choice = JOptionPane.showOptionDialog(null, "Что делать?", "Выбор", JOptionPane.YES_NO_CANCEL_OPTION, JOptionPane.QUESTION_MESSAGE, null, options, options[0]);
JLabel label = new JLabel("Выбрано: " + choice);
add(label);');

