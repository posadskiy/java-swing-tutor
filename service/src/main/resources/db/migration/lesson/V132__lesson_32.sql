-- Flyway migration V132: Lesson 32 tasks
-- Extracted from V33__lesson_32_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (269,
        30,
        1,
        'JOptionPane-showMessageDialog',
        '',
        269,
        18.0,
        0.0,
        'JFrame frame = new JFrame();
JOptionPane.showMessageDialog(frame, "Operation completed successfully!", "Information", JOptionPane.INFORMATION_MESSAGE);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (270,
        30,
        2,
        'JOptionPane-showConfirmDialog',
        '',
        270,
        22.0,
        0.0,
        'JFrame frame = new JFrame();
int result = JOptionPane.showConfirmDialog(frame, "Are you sure?", "Confirmation", JOptionPane.YES_NO_OPTION);
JLabel label = new JLabel();
if (result == JOptionPane.YES_OPTION) {
    label.setText("User agreed");
}
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (271,
        30,
        2,
        'JMenu-setMnemonic',
        '',
        271,
        23.0,
        0.0,
        'JMenu menu = new JMenu("File");
menu.setMnemonic(KeyEvent.VK_F);
JMenuBar menuBar = new JMenuBar();
menuBar.add(menu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (272,
        30,
        3,
        'JMenu-add,add,addSeparator,add',
        '',
        272,
        21.0,
        0.0,
        'JMenu menu = new JMenu("File");
menu.add(new JMenuItem("Open"));
menu.add(new JMenuItem("Save"));
menu.addSeparator();
menu.add(new JMenuItem("Exit"));
JMenuBar menuBar = new JMenuBar();
menuBar.add(menu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (273,
        30,
        4,
        'JMenu-setMnemonic',
        '',
        273,
        23.0,
        0.0,
        'JMenu menu = new JMenu("File (&F)");
menu.setMnemonic(KeyEvent.VK_F);
JMenuBar menuBar = new JMenuBar();
menuBar.add(menu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (277,
        30,
        4,
        'JCheckBoxMenuItem-setToolTipText',
        '',
        277,
        21.0,
        0.0,
        'JCheckBoxMenuItem checkBoxMenuItem = new JCheckBoxMenuItem("Grid");
checkBoxMenuItem.setToolTipText("Show grid");
JMenu viewMenu = new JMenu("View");
viewMenu.add(checkBoxMenuItem);
JMenuBar menuBar = new JMenuBar();
menuBar.add(viewMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (274,
        30,
        5,
        'JMenu-add,add,addSeparator,add',
        '',
        274,
        22.0,
        0.0,
        'JMenu menu = new JMenu("File");
JMenuItem menuItem1 = new JMenuItem("Open");
JMenuItem menuItem2 = new JMenuItem("Save");
JMenuItem menuItem3 = new JMenuItem("Exit");
menu.add(menuItem1);
menu.add(menuItem2);
menu.addSeparator();
menu.add(menuItem3);
JMenuBar menuBar = new JMenuBar();
menuBar.add(menu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (275,
        30,
        6,
        'JMenu-setDelay',
        '',
        275,
        22.0,
        0.0,
        'JMenu menu = new JMenu("File");
menu.setDelay(200);
JMenuBar menuBar = new JMenuBar();
menuBar.add(menu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (276,
        30,
        6,
        'JCheckBoxMenuItem-setActionCommand,getActionCommand,add',
        '',
        276,
        24.0,
        0.0,
        'JCheckBoxMenuItem checkBoxMenuItem = new JCheckBoxMenuItem("Grid");
checkBoxMenuItem.setActionCommand("CHECK");
JLabel label = new JLabel();
checkBoxMenuItem.addActionListener(e -> {
    String cmd = e.getActionCommand();
    label.setText("Command: " + cmd);
});
JMenu viewMenu = new JMenu("View");
viewMenu.add(checkBoxMenuItem);
JMenuBar menuBar = new JMenuBar();
menuBar.add(viewMenu);
setJMenuBar(menuBar);');

