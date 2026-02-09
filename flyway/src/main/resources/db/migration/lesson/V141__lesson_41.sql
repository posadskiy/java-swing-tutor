-- Flyway migration V141: Lesson 41 tasks
-- Extracted from V42__lesson_41_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (345,
        41,
        1,
        'BoxLayout-add',
        '',
        345,
        24.0,
        0.0,
        'setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));
JButton button1 = new JButton("Button 1");
JButton button2 = new JButton("Button 2");
JButton button3 = new JButton("Button 3");
add(button1);
add(button2);
add(button3);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (346,
        41,
        2,
        'JButton-add',
        '',
        346,
        25.0,
        0.0,
        'setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));
JButton button1 = new JButton("Button 1");
JButton button2 = new JButton("Button 2");
add(button1);
add(Box.createGlue());
add(button2);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (348,
        41,
        2,
        'GridLayout-setHgap,setVgap,add',
        '',
        348,
        24.0,
        0.0,
        'GridLayout layout = new GridLayout(2, 3);
layout.setHgap(10);
layout.setVgap(10);
setLayout(layout);
for (int i = 1; i <= 6; i++) {
    add(new JButton("Button " + i));
}');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (347,
        41,
        3,
        'JButton-setAlignmentX,setAlignmentY',
        '',
        347,
        26.0,
        0.0,
        'setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));
JButton button = new JButton("Button");
button.setAlignmentX(Component.CENTER_ALIGNMENT);
button.setAlignmentY(Component.CENTER_ALIGNMENT);
add(button);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (349,
        41,
        3,
        'GridLayout',
        '',
        349,
        24.0,
        0.0,
        'GridLayout layout = new GridLayout(3, 0);
setLayout(layout);
for (int i = 1; i <= 9; i++) {
    add(new JButton("Button " + i));
}');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (352,
        41,
        7,
        'BoxLayout-createHorizontalGlue,add,add,add',
        '',
        352,
        23.0,
        0.0,
        'setLayout(new BoxLayout(this, BoxLayout.X_AXIS));
JButton button1 = new JButton("Button 1");
JButton button2 = new JButton("Button 2");
Component glue = Box.createHorizontalGlue();
add(button1);
add(glue);
add(button2);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (350,
        41,
        8,
        'JFileChooser-setMultiSelectionEnabled,getSelectedFiles',
        '',
        350,
        24.0,
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
VALUES (353,
        41,
        8,
        'BoxLayout-createHorizontalStrut,add,add,add',
        '',
        353,
        22.0,
        0.0,
        'setLayout(new BoxLayout(this, BoxLayout.X_AXIS));
JButton button1 = new JButton("Button 1");
JButton button2 = new JButton("Button 2");
Component strut = Box.createHorizontalStrut(20);
add(button1);
add(strut);
add(button2);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (351,
        41,
        9,
        'JFileChooser-addChoosableFileFilter',
        '',
        351,
        25.0,
        0.0,
        'JFrame frame = new JFrame();
JFileChooser fileChooser = new JFileChooser();
FileNameExtensionFilter filter = new FileNameExtensionFilter("Изображения", "jpg", "png", "gif");
fileChooser.addChoosableFileFilter(filter);
int result = fileChooser.showOpenDialog(frame);
JLabel label = new JLabel();
if (result == JFileChooser.APPROVE_OPTION) {
    File file = fileChooser.getSelectedFile();
    label.setText("Selected file: " + file.getName());
}
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (355,
        41,
        9,
        'BoxLayout-Box-createRigidArea-Dimension',
        '',
        355,
        23.0,
        0.0,
        'setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));
JButton button1 = new JButton("Button 1");
JButton button2 = new JButton("Button 2");
Component area = Box.createRigidArea(new Dimension(20, 20));
add(button1);
add(area);
add(button2);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (354,
        41,
        10,
        'JFileChooser-setCurrentDirectory',
        '',
        354,
        23.0,
        0.0,
        'JFrame frame = new JFrame();
JFileChooser fileChooser = new JFileChooser();
File dir = new File("/path/to/directory");
fileChooser.setCurrentDirectory(dir);
int result = fileChooser.showOpenDialog(frame);
JLabel label = new JLabel();
if (result == JFileChooser.APPROVE_OPTION) {
    File file = fileChooser.getSelectedFile();
    label.setText("Selected file: " + file.getName());
}
add(label);');

