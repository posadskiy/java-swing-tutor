-- Flyway migration V145: Lesson 45 tasks
-- Extracted from V46__lesson_45_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (397,
        45,
        1,
        'JEditorPane-setContentType,setText,add',
        '',
        397,
        26.0,
        0.0,
        'JEditorPane editor = new JEditorPane();
editor.setContentType("text/html");
editor.setText("<html><b>Bold text</b></html>");
add(editor);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (398,
        45,
        2,
        'JEditorPane-setContentType,setPage',
        '',
        398,
        28.0,
        0.0,
        'JEditorPane editor = new JEditorPane();
editor.setContentType("text/html");
JLabel label = new JLabel();
try {
    editor.setPage(new URL("https://example.com"));
} catch (IOException e) {
    label.setText("Load error: " + e.getMessage());
}
JScrollPane scrollPane = new JScrollPane(editor);
add(scrollPane);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (399,
        45,
        3,
        'JEditorPane-addHyperlinkListener,setPage,add',
        '',
        399,
        27.0,
        0.0,
        'JEditorPane editor = new JEditorPane();
editor.setContentType("text/html");
editor.setText("<html><a href=\"https://example.com\">Link</a></html>");
editor.addHyperlinkListener(e -> {
    if (e.getEventType() == HyperlinkEvent.EventType.ACTIVATED) {
        try {
            editor.setPage(e.getURL());
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }
});
JScrollPane scrollPane = new JScrollPane(editor);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (400,
        45,
        4,
        'JEditorPane-setContentType',
        '',
        400,
        24.0,
        0.0,
        'JEditorPane editor = new JEditorPane();
editor.setContentType("text/html");
editor.setText("<html><b>Текст</b></html>");
JScrollPane scrollPane = new JScrollPane(editor);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (401,
        45,
        5,
        'JEditorPane-addHyperlinkListener,add',
        '',
        401,
        25.0,
        0.0,
        'JEditorPane editor = new JEditorPane();
editor.setContentType("text/html");
editor.setText("<html><a href=\"https://example.com\">Link</a></html>");
JLabel label = new JLabel();
editor.addHyperlinkListener(e -> {
    if (e.getEventType() == HyperlinkEvent.EventType.ACTIVATED) {
        label.setText("Link: " + e.getURL());
    }
});
JScrollPane scrollPane = new JScrollPane(editor);
add(scrollPane);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (403,
        45,
        5,
        'JButton-addActionListener,removeActionListener,add',
        '',
        403,
        23.0,
        0.0,
        'JButton button = new JButton("Button");
JLabel label = new JLabel();
ActionListener listener = e -> label.setText("Action");
button.addActionListener(listener);
button.removeActionListener(listener);
add(button);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (402,
        45,
        6,
        'JEditorPane-setText',
        '',
        402,
        22.0,
        0.0,
        'JEditorPane editor = new JEditorPane();
editor.setContentType("text/html");
editor.setText("<html><h1>Title</h1></html>");
JScrollPane scrollPane = new JScrollPane(editor);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (404,
        45,
        6,
        'JButton-addActionListener',
        '',
        404,
        22.0,
        0.0,
        'JButton button = new JButton("Button");
JLabel label = new JLabel();
button.addActionListener(e -> label.setText("First"));
button.addActionListener(e -> label.setText("Second"));
add(button);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (405,
        45,
        7,
        'JButton-getActionCommand,add',
        '',
        405,
        23.0,
        0.0,
        'JButton button = new JButton("Button");
JLabel label = new JLabel();
button.addActionListener(e -> {
    String cmd = e.getActionCommand();
    label.setText("Command: " + cmd);
});
add(button);
add(label);');

