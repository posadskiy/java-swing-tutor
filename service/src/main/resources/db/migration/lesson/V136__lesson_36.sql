-- Flyway migration V136: Lesson 36 tasks
-- Extracted from V37__lesson_36_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (301,
        36,
        1,
        'JColorChooser-showDialog',
        '',
        301,
        20.0,
        0.0,
        'JFrame frame = new JFrame();
Color color = JColorChooser.showDialog(frame, "Choose color", Color.WHITE);
JLabel label = new JLabel();
if (color != null) {
    label.setText("Selected color: " + color);
}
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (302,
        36,
        2,
        'JColorChooser-createDialog,setVisible',
        '',
        302,
        27.0,
        0.0,
        'JFrame frame = new JFrame();
JColorChooser colorChooser = new JColorChooser(Color.WHITE);
JDialog dialog = JColorChooser.createDialog(
    frame,
    "Choose color",
    true,
    colorChooser,
    null,
    null
);
dialog.setVisible(true);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (304,
        36,
        2,
        'BorderLayout-add,add,add,add,add',
        '',
        304,
        26.0,
        0.0,
        'setLayout(new BorderLayout());
JButton buttonNorth = new JButton("North");
JButton buttonSouth = new JButton("South");
JButton buttonEast = new JButton("East");
JButton buttonWest = new JButton("West");
JPanel panelCenter = new JPanel();
add(buttonNorth, BorderLayout.NORTH);
add(buttonSouth, BorderLayout.SOUTH);
add(buttonEast, BorderLayout.EAST);
add(buttonWest, BorderLayout.WEST);
add(panelCenter, BorderLayout.CENTER);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (303,
        36,
        3,
        'JColorChooser-setChooserPanels,setVisible',
        '',
        303,
        28.0,
        0.0,
        'JColorChooser colorChooser = new JColorChooser();
AbstractColorChooserPanel[] panels = ColorChooserComponentFactory.getDefaultChooserPanels();
colorChooser.setChooserPanels(panels);
JFrame frame = new JFrame();
JDialog dialog = JColorChooser.createDialog(frame, "Choose color", true, colorChooser, null, null);
dialog.setVisible(true);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (306,
        36,
        3,
        'BorderLayout-setHgap,setVgap,add',
        '',
        306,
        24.0,
        0.0,
        'BorderLayout layout = new BorderLayout();
layout.setHgap(10);
layout.setVgap(10);
setLayout(layout);
JButton button = new JButton("Button");
add(button, BorderLayout.CENTER);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (305,
        36,
        4,
        'JColorChooser-setPreviewPanel,addChangeListener,setVisible',
        '',
        305,
        27.0,
        0.0,
        'JColorChooser colorChooser = new JColorChooser();
JPanel previewPanel = new JPanel();
previewPanel.setPreferredSize(new Dimension(100, 50));
colorChooser.setPreviewPanel(previewPanel);
colorChooser.getSelectionModel().addChangeListener(e -> {
    previewPanel.setBackground(colorChooser.getColor());
});
JFrame frame = new JFrame();
JDialog dialog = JColorChooser.createDialog(frame, "Choose color", true, colorChooser, null, null);
dialog.setVisible(true);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (307,
        36,
        5,
        '',
        '',
        307,
        25.0,
        0.0,
        'JColorChooser colorChooser = new JColorChooser();
ColorSelectionModel model = colorChooser.getSelectionModel();
model.setSelectedColor(Color.RED);
JFrame frame = new JFrame();
JDialog dialog = JColorChooser.createDialog(frame, "Choose color", true, colorChooser, null, null);
dialog.setVisible(true);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (308,
        36,
        6,
        'JColorChooser-showDialog',
        '',
        308,
        24.0,
        0.0,
        'JFrame frame = new JFrame();
Color color = JColorChooser.showDialog(frame, "Choose color", Color.WHITE);
JLabel label = new JLabel();
if (color != null) {
    label.setText("Selected color: " + color);
}
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (309,
        36,
        7,
        '',
        '',
        309,
        25.0,
        0.0,
        'JColorChooser colorChooser = new JColorChooser();
DefaultColorSelectionModel model = new DefaultColorSelectionModel();
model.setSelectedColor(Color.RED);
colorChooser.setColorSelectionModel(model);
JFrame frame = new JFrame();
JDialog dialog = JColorChooser.createDialog(frame, "Choose color", true, colorChooser, null, null);
dialog.setVisible(true);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (310,
        36,
        9,
        'JTextPane-insertIcon,add',
        '',
        310,
        24.0,
        0.0,
        'JTextPane textPane = new JTextPane();
ImageIcon icon = new ImageIcon("icon.png");
textPane.insertIcon(icon);
JScrollPane scrollPane = new JScrollPane(textPane);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (311,
        36,
        10,
        'JTextPane-getStyledDocument',
        '',
        311,
        24.0,
        0.0,
        'JTextPane textPane = new JTextPane();
StyledDocument doc = textPane.getStyledDocument();
JScrollPane scrollPane = new JScrollPane(textPane);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (312,
        36,
        11,
        'JTextPane-setEditable',
        '',
        312,
        21.0,
        0.0,
        'JTextPane textPane = new JTextPane();
textPane.setText("Text for reading");
textPane.setEditable(false);
JScrollPane scrollPane = new JScrollPane(textPane);
add(scrollPane);');

