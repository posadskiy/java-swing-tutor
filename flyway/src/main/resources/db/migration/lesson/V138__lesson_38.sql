-- Flyway migration V138: Lesson 38 tasks
-- Extracted from V39__lesson_38_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (317,
        38,
        1,
        'FlowLayout-add',
        '',
        317,
        16.0,
        0.0,
        'setLayout(new FlowLayout());
JButton button1 = new JButton("Button 1");
JButton button2 = new JButton("Button 2");
JButton button3 = new JButton("Button 3");
add(button1);
add(button2);
add(button3);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (318,
        38,
        2,
        'JMenuItem-setAccelerator',
        '',
        318,
        25.0,
        0.0,
        'JMenuItem menuItem = new JMenuItem("Save");
KeyStroke stroke = KeyStroke.getKeyStroke(KeyEvent.VK_S, InputEvent.CTRL_DOWN_MASK);
menuItem.setAccelerator(stroke);
JMenu fileMenu = new JMenu("File");
fileMenu.add(menuItem);
JMenuBar menuBar = new JMenuBar();
menuBar.add(fileMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (319,
        38,
        3,
        'JMenuItem-setEnabled',
        '',
        319,
        21.0,
        0.0,
        'JMenuItem menuItem = new JMenuItem("Item");
menuItem.setEnabled(false);
menuItem.setEnabled(true);
JMenu menu = new JMenu("File");
menu.add(menuItem);
JMenuBar menuBar = new JMenuBar();
menuBar.add(menu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (320,
        38,
        4,
        'JMenuItem-setToolTipText',
        '',
        320,
        21.0,
        0.0,
        'JMenuItem menuItem = new JMenuItem("Save");
menuItem.setToolTipText("Save document");
JMenu fileMenu = new JMenu("File");
fileMenu.add(menuItem);
JMenuBar menuBar = new JMenuBar();
menuBar.add(fileMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (324,
        38,
        4,
        'JRadioButtonMenuItem-setToolTipText',
        '',
        324,
        21.0,
        0.0,
        'JRadioButtonMenuItem radioButtonMenuItem = new JRadioButtonMenuItem("Theme");
radioButtonMenuItem.setToolTipText("Select theme");
JMenu viewMenu = new JMenu("View");
viewMenu.add(radioButtonMenuItem);
JMenuBar menuBar = new JMenuBar();
menuBar.add(viewMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (321,
        38,
        5,
        'JMenuItem-setAccelerator',
        '',
        321,
        25.0,
        0.0,
        'JMenuItem menuItem = new JMenuItem("Save");
KeyStroke keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_S, InputEvent.CTRL_DOWN_MASK);
menuItem.setAccelerator(keyStroke);
JMenu fileMenu = new JMenu("File");
fileMenu.add(menuItem);
JMenuBar menuBar = new JMenuBar();
menuBar.add(fileMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (322,
        38,
        6,
        'JMenuItem-setIcon',
        '',
        322,
        22.0,
        0.0,
        'JMenuItem menuItem = new JMenuItem("Save");
menuItem.setIcon(new ImageIcon("icon.png"));
JMenu fileMenu = new JMenu("File");
fileMenu.add(menuItem);
JMenuBar menuBar = new JMenuBar();
menuBar.add(fileMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (323,
        38,
        6,
        'JRadioButtonMenuItem-setActionCommand,getActionCommand,add',
        '',
        323,
        24.0,
        0.0,
        'JRadioButtonMenuItem radioButtonMenuItem = new JRadioButtonMenuItem("Theme");
radioButtonMenuItem.setActionCommand("RADIO");
JLabel label = new JLabel();
radioButtonMenuItem.addActionListener(e -> {
    String cmd = e.getActionCommand();
    label.setText("Command: " + cmd);
});
JMenu viewMenu = new JMenu("View");
viewMenu.add(radioButtonMenuItem);
JMenuBar menuBar = new JMenuBar();
menuBar.add(viewMenu);
setJMenuBar(menuBar);');

