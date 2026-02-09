-- Flyway migration V133: Lesson 33 tasks
-- Extracted from V34__lesson_33_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (278,
        33,
        1,
        'JTextPane-add',
        '',
        278,
        28.0,
        0.0,
        'JTextPane textPane = new JTextPane();
StyledDocument doc = textPane.getStyledDocument();
Style style = textPane.addStyle("bold", null);
StyleConstants.setBold(style, true);
try {
    doc.insertString(0, "Bold text", style);
} catch (BadLocationException e) {
    e.printStackTrace();
}
add(textPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (279,
        33,
        2,
        'JTextPane-getSelectionStart,getSelectionEnd,add',
        '',
        279,
        29.0,
        0.0,
        'JTextPane textPane = new JTextPane();
textPane.setText("Select this text");
int start = textPane.getSelectionStart();
int end = textPane.getSelectionEnd();
Style style = textPane.addStyle("bold", null);
StyleConstants.setBold(style, true);
StyledDocument doc = textPane.getStyledDocument();
doc.setCharacterAttributes(start, end - start, style, false);
JScrollPane scrollPane = new JScrollPane(textPane);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (280,
        33,
        3,
        'JTextPane-setFont,add',
        '',
        280,
        24.0,
        0.0,
        'JTextPane textPane = new JTextPane();
textPane.setFont(new Font("Arial", Font.BOLD, 14));
JScrollPane scrollPane = new JScrollPane(textPane);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (281,
        33,
        4,
        'JTextPane-getStyledDocument,add',
        '',
        281,
        25.0,
        0.0,
        'JTextPane textPane = new JTextPane();
StyledDocument doc = textPane.getStyledDocument();
try {
    doc.insertString(0, "Text", null);
} catch (BadLocationException e) {
    e.printStackTrace();
}
JScrollPane scrollPane = new JScrollPane(textPane);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (282,
        33,
        5,
        'JTextPane-setCharacterAttributes,add',
        '',
        282,
        27.0,
        0.0,
        'JTextPane textPane = new JTextPane();
textPane.setText("Text for styling");
StyledDocument doc = textPane.getStyledDocument();
Style style = doc.addStyle("bold", null);
StyleConstants.setBold(style, true);
doc.setCharacterAttributes(0, 5, style, false);
JScrollPane scrollPane = new JScrollPane(textPane);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (283,
        33,
        6,
        'JTextPane-getText,add',
        '',
        283,
        21.0,
        0.0,
        'JTextPane textPane = new JTextPane();
textPane.setText("Text");
String text = textPane.getText();
JLabel label = new JLabel("Text: " + text);
JScrollPane scrollPane = new JScrollPane(textPane);
add(scrollPane);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (284,
        33,
        6,
        'JPanel-addMouseListener',
        '',
        284,
        24.0,
        0.0,
        'JPanel component = new JPanel();
component.addMouseListener(new MouseAdapter() {
    @Override
    public void mouseClicked(MouseEvent e) {
        if (e.getButton() == MouseEvent.BUTTON1) {
            label.setText("Left button");
        }
    }
});
add(component);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (285,
        33,
        7,
        'JPanel-addMouseListener',
        '',
        285,
        23.0,
        0.0,
        'JPanel component = new JPanel();
component.addMouseListener(new MouseAdapter() {
    @Override
    public void mouseClicked(MouseEvent e) {
        int x = e.getX();
        int y = e.getY();
        label.setText("Coordinates: " + x + ", " + y);
    }
});
add(component);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (286,
        33,
        8,
        '§',
        '',
        286,
        23.0,
        0.0,
        'JPanel component = new JPanel();
component.addMouseListener(new MouseAdapter() {
    @Override
    public void mouseClicked(MouseEvent e) {
        int count = e.getClickCount();
        if (count == 2) {
            label.setText("Double click");
        }
    }
});
add(component);');

