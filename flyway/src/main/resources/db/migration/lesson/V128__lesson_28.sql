-- Flyway migration V128: Lesson 28 tasks
-- Extracted from V29__lesson_28_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (230,
        28,
        1,
        'JRadioButtonMenuItem-add',
        '',
        230,
        18.0,
        0.0,
        'ButtonGroup group = new ButtonGroup();
JRadioButtonMenuItem item1 = new JRadioButtonMenuItem("Small");
JRadioButtonMenuItem item2 = new JRadioButtonMenuItem("Medium");
group.add(item1);
group.add(item2);
JMenu menu = new JMenu("Size");
menu.add(item1);
menu.add(item2);
JMenuBar menuBar = new JMenuBar();
menuBar.add(menu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (231,
        28,
        2,
        'JRadioButtonMenuItem-setSelected',
        '',
        231,
        19.0,
        0.0,
        'JRadioButtonMenuItem item = new JRadioButtonMenuItem("Medium");
item.setSelected(true);
JMenu menu = new JMenu("Size");
menu.add(item);
JMenuBar menuBar = new JMenuBar();
menuBar.add(menu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (232,
        28,
        3,
        'JRadioButtonMenuItem-add',
        '',
        232,
        20.0,
        0.0,
        'ButtonGroup group = new ButtonGroup();
JRadioButtonMenuItem item1 = new JRadioButtonMenuItem("Small");
JRadioButtonMenuItem item2 = new JRadioButtonMenuItem("Medium");
JRadioButtonMenuItem item3 = new JRadioButtonMenuItem("Large");
group.add(item1);
group.add(item2);
group.add(item3);
JMenu menu = new JMenu("Size");
menu.add(item1);
menu.add(item2);
menu.add(item3);
JMenuBar menuBar = new JMenuBar();
menuBar.add(menu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (233,
        28,
        4,
        'JRadioButtonMenuItem-setIcon,add',
        '',
        233,
        21.0,
        0.0,
        'JRadioButtonMenuItem item = new JRadioButtonMenuItem("Small");
ImageIcon icon = new ImageIcon("icon.png");
item.setIcon(icon);
JMenu menu = new JMenu("Size");
menu.add(item);
JMenuBar menuBar = new JMenuBar();
menuBar.add(menu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (234,
        28,
        5,
        'JRadioButtonMenuItem-setMnemonic,add',
        '',
        234,
        21.0,
        0.0,
        'JRadioButtonMenuItem item = new JRadioButtonMenuItem("Small");
item.setMnemonic(KeyEvent.VK_M);
JMenu menu = new JMenu("Size");
menu.add(item);
JMenuBar menuBar = new JMenuBar();
menuBar.add(menu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (235,
        28,
        6,
        'JRadioButtonMenuItem-setEnabled',
        '',
        235,
        20.0,
        0.0,
        'JRadioButtonMenuItem item = new JRadioButtonMenuItem("Small");
item.setEnabled(false);
JMenu menu = new JMenu("Size");
menu.add(item);
JMenuBar menuBar = new JMenuBar();
menuBar.add(menu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (236,
        28,
        7,
        'JRadioButtonMenuItem-setToolTipText',
        '',
        236,
        20.0,
        0.0,
        'JRadioButtonMenuItem item = new JRadioButtonMenuItem("Small");
item.setToolTipText("Select small font size");
JMenu menu = new JMenu("Size");
menu.add(item);
JMenuBar menuBar = new JMenuBar();
menuBar.add(menu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (237,
        28,
        8,
        'JRadioButtonMenuItem-addActionListener',
        '',
        237,
        22.0,
        0.0,
        'JRadioButtonMenuItem item = new JRadioButtonMenuItem("Small");
JLabel label = new JLabel();
item.addActionListener(e -> {
    label.setText("Selected option: " + item.getText());
});
JMenu menu = new JMenu("Size");
menu.add(item);
JMenuBar menuBar = new JMenuBar();
menuBar.add(menu);
setJMenuBar(menuBar);');

