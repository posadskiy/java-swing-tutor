-- Flyway migration V135: Lesson 35 tasks
-- Extracted from V36__lesson_35_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (291,
        35,
        1,
        'JFileChooser-showOpenDialog',
        '',
        291,
        22.0,
        0.0,
        'JFileChooser fileChooser = new JFileChooser();
int result = fileChooser.showOpenDialog(this);
JLabel label = new JLabel();
if (result == JFileChooser.APPROVE_OPTION) {
    File file = fileChooser.getSelectedFile();
    label.setText("Selected file: " + file.getName());
}
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (292,
        35,
        2,
        'JFileChooser-showSaveDialog',
        '',
        292,
        24.0,
        0.0,
        'JFrame frame = new JFrame();
JFileChooser fileChooser = new JFileChooser();
int result = fileChooser.showSaveDialog(frame);
if (result == JFileChooser.APPROVE_OPTION) {
    File file = fileChooser.getSelectedFile();
    label.setText("Save to: " + file.getPath());
}');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (293,
        35,
        3,
        'JFileChooser-setFileFilter',
        '',
        293,
        25.0,
        0.0,
        'JFileChooser fileChooser = new JFileChooser();
FileNameExtensionFilter filter = new FileNameExtensionFilter(
    "Text files",
    "txt", "text"
);
fileChooser.setFileFilter(filter);
int result = fileChooser.showOpenDialog(this);
JLabel label = new JLabel();
if (result == JFileChooser.APPROVE_OPTION) {
    File file = fileChooser.getSelectedFile();
    label.setText("Selected file: " + file.getName());
}
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (294,
        35,
        4,
        'JFileChooser-setMultiSelectionEnabled,getSelectedFiles',
        '',
        294,
        25.0,
        0.0,
        'JFrame frame = new JFrame();
JFileChooser fileChooser = new JFileChooser();
fileChooser.setMultiSelectionEnabled(true);
int result = fileChooser.showOpenDialog(frame);
JLabel label = new JLabel();
if (result == JFileChooser.APPROVE_OPTION) {
    File[] files = fileChooser.getSelectedFiles();
    for (File file : files) {
        label.setText("Selected: " + file.getName());
    }
}
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (295,
        35,
        5,
        'JFileChooser-addChoosableFileFilter',
        '',
        295,
        26.0,
        0.0,
        'JFileChooser fileChooser = new JFileChooser();
FileFilter filter = new FileNameExtensionFilter("Text files", "txt");
fileChooser.addChoosableFileFilter(filter);
int result = fileChooser.showOpenDialog(this);
JLabel label = new JLabel();
if (result == JFileChooser.APPROVE_OPTION) {
    File file = fileChooser.getSelectedFile();
    label.setText("Selected file: " + file.getName());
}
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (296,
        35,
        6,
        'JFileChooser-setCurrentDirectory',
        '',
        296,
        23.0,
        0.0,
        'JFileChooser fileChooser = new JFileChooser();
File dir = new File("/path/to/directory");
fileChooser.setCurrentDirectory(dir);
int result = fileChooser.showOpenDialog(this);
JLabel label = new JLabel();
if (result == JFileChooser.APPROVE_OPTION) {
    File file = fileChooser.getSelectedFile();
    label.setText("Selected file: " + file.getName());
}
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (297,
        35,
        7,
        'JFileChooser-setDialogTitle',
        '',
        297,
        21.0,
        0.0,
        'JFrame frame = new JFrame();
JFileChooser fileChooser = new JFileChooser();
fileChooser.setDialogTitle("Choose file");
int result = fileChooser.showOpenDialog(frame);
JLabel label = new JLabel();
if (result == JFileChooser.APPROVE_OPTION) {
    File file = fileChooser.getSelectedFile();
    label.setText("Selected file: " + file.getName());
}
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (298,
        35,
        8,
        'JEditorPane-addHyperlinkListener,add',
        '',
        298,
        26.0,
        0.0,
        'JEditorPane editorPane = new JEditorPane();
editorPane.setContentType("text/html");
editorPane.setText("<html><body><a href=\"http://example.com\">Link</a></body></html>");
JLabel label = new JLabel();
editorPane.addHyperlinkListener(e -> {
    if (e.getEventType() == HyperlinkEvent.EventType.ACTIVATED) {
        label.setText("Link: " + e.getURL());
    }
});
add(editorPane);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (299,
        35,
        9,
        'JEditorPane-setContentType,add',
        '',
        299,
        23.0,
        0.0,
        'JEditorPane editorPane = new JEditorPane();
editorPane.setContentType("text/html");
editorPane.setText("<html><body><h1>Hello!</h1></body></html>");
JScrollPane scrollPane = new JScrollPane(editorPane);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (300,
        35,
        10,
        'JEditorPane-setEditable,add',
        '',
        300,
        21.0,
        0.0,
        'JEditorPane editorPane = new JEditorPane();
editorPane.setText("Read-only text");
editorPane.setEditable(false);
JScrollPane scrollPane = new JScrollPane(editorPane);
add(scrollPane);');

