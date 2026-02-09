-- Flyway migration V146: Lesson 46 tasks
-- Extracted from V47__lesson_46_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (406,
        46,
        1,
        'JPanel-addMouseListener,add',
        '',
        406,
        20.0,
        0.0,
        'JPanel panel = new JPanel();
JLabel label = new JLabel();
panel.addMouseListener(new MouseAdapter() {
    public void mouseClicked(MouseEvent e) {
        label.setText("Click!");
    }
});
add(panel);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (407,
        46,
        1,
        'JRadioButtonMenuItem-add',
        '',
        407,
        23.0,
        0.0,
        'ButtonGroup group = new ButtonGroup();
JRadioButtonMenuItem item1 = new JRadioButtonMenuItem("Small");
JRadioButtonMenuItem item2 = new JRadioButtonMenuItem("Medium");
group.add(item1);
group.add(item2);
JMenu sizeMenu = new JMenu("Size");
sizeMenu.add(item1);
sizeMenu.add(item2);
JMenuBar menuBar = new JMenuBar();
menuBar.add(sizeMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (408,
        46,
        2,
        'JRadioButtonMenuItem-addActionListener-isSelected-getText',
        '',
        408,
        23.0,
        0.0,
        'JRadioButtonMenuItem item = new JRadioButtonMenuItem("Small");
JLabel label = new JLabel();
item.addActionListener(e -> {
    if (item.isSelected()) {
        label.setText("Selected: " + item.getText());
    }
});
JMenu sizeMenu = new JMenu("Size");
sizeMenu.add(item);
JMenuBar menuBar = new JMenuBar();
menuBar.add(sizeMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (409,
        46,
        3,
        'JOptionPane-showConfirmDialog',
        '',
        409,
        23.0,
        0.0,
        'JFrame frame = new JFrame();
int result = JOptionPane.showConfirmDialog(
    frame,
    "Are you sure?",
    "Confirmation",
    JOptionPane.YES_NO_OPTION
);
JLabel label = new JLabel();
if (result == JOptionPane.YES_OPTION) {
    label.setText("User agreed!");
}
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (412,
        46,
        3,
        'JRadioButtonMenuItem-add',
        '',
        412,
        23.0,
        0.0,
        'ButtonGroup group = new ButtonGroup();
JRadioButtonMenuItem item1 = new JRadioButtonMenuItem("Small");
JRadioButtonMenuItem item2 = new JRadioButtonMenuItem("Medium");
group.add(item1);
group.add(item2);
JMenu sizeMenu = new JMenu("Size");
sizeMenu.add(item1);
sizeMenu.add(item2);
JMenuBar menuBar = new JMenuBar();
menuBar.add(sizeMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (410,
        46,
        4,
        'JOptionPane-showInputDialog',
        '',
        410,
        24.0,
        0.0,
        'JFrame frame = new JFrame();
String input = JOptionPane.showInputDialog(
    frame,
    "Enter your name:",
    "Input",
    JOptionPane.QUESTION_MESSAGE
);
JLabel label = new JLabel();
if (input != null && !input.isEmpty()) {
    label.setText("Entered: " + input);
}
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (414,
        46,
        4,
        'JRadioButtonMenuItem-addItemListener,getStateChange,add',
        '',
        414,
        24.0,
        0.0,
        'JRadioButtonMenuItem item = new JRadioButtonMenuItem("Small");
JLabel label = new JLabel();
item.addItemListener(e -> {
    if (e.getStateChange() == ItemEvent.SELECTED) {
        label.setText("Selected!");
    }
});
JMenu sizeMenu = new JMenu("Size");
sizeMenu.add(item);
JMenuBar menuBar = new JMenuBar();
menuBar.add(sizeMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (411,
        46,
        5,
        'JOptionPane-showOptionDialog',
        '',
        411,
        26.0,
        0.0,
        'JFrame frame = new JFrame();
String[] options = {"Yes", "No", "Cancel"};
int result = JOptionPane.showOptionDialog(
    frame,
    "Choose action",
    "Question",
    JOptionPane.YES_NO_CANCEL_OPTION,
    JOptionPane.QUESTION_MESSAGE,
    null,
    options,
    options[0]
);
JLabel label = new JLabel();
if (result >= 0) {
    label.setText("Selected: " + options[result]);
}
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (416,
        46,
        5,
        'JRadioButtonMenuItem-setIcon,add',
        '',
        416,
        22.0,
        0.0,
        'JRadioButtonMenuItem item = new JRadioButtonMenuItem("Small");
item.setIcon(new ImageIcon("icon.png"));
JMenu sizeMenu = new JMenu("Size");
sizeMenu.add(item);
JMenuBar menuBar = new JMenuBar();
menuBar.add(sizeMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (413,
        46,
        6,
        'JOptionPane-showInputDialog',
        '',
        413,
        23.0,
        0.0,
        'JFrame frame = new JFrame();
String input = JOptionPane.showInputDialog(frame, "Enter name:");
JLabel label = new JLabel();
if (input != null) {
    label.setText("Name: " + input);
}
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (415,
        46,
        7,
        'JFrame;JLabel-add',
        '',
        415,
        24.0,
        0.0,
        'JFrame frame = new JFrame();
int result = JOptionPane.showConfirmDialog(frame, "Delete?", "Confirmation", JOptionPane.YES_NO_OPTION);
JLabel label = new JLabel();
if (result == JOptionPane.YES_OPTION) {
    label.setText("Yes!");
}
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (417,
        46,
        8,
        'JFrame',
        '',
        417,
        23.0,
        0.0,
        'JFrame frame = new JFrame();
JOptionPane.showMessageDialog(frame, "Message", "Title", JOptionPane.INFORMATION_MESSAGE);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (418,
        46,
        12,
        'JTable-getColumnModel;JScrollPane-add',
        '',
        418,
        25.0,
        0.0,
        'String[] columns = {"Name", "Age"};
String[][] data = {{"John", "25"}, {"Mary", "30"}};
JTable table = new JTable(data, columns);
TableColumnModel columnModel = table.getColumnModel();
TableColumn column = columnModel.getColumn(0);
column.setPreferredWidth(200);
JScrollPane scrollPane = new JScrollPane(table);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (419,
        46,
        13,
        'JTable-setRowHeight',
        '',
        419,
        22.0,
        0.0,
        'String[] columns = {"Name", "Age"};
String[][] data = {{"John", "25"}, {"Mary", "30"}};
JTable table = new JTable(data, columns);
table.setRowHeight(30);
JScrollPane scrollPane = new JScrollPane(table);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (420,
        46,
        14,
        'JTable-setAutoResizeMode',
        '',
        420,
        24.0,
        0.0,
        'String[] columns = {"Name", "Age"};
String[][] data = {{"John", "25"}, {"Mary", "30"}};
JTable table = new JTable(data, columns);
table.setAutoResizeMode(JTable.AUTO_RESIZE_ALL_COLUMNS);
JScrollPane scrollPane = new JScrollPane(table);
add(scrollPane);');

