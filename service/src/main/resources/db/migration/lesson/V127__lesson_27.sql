-- Flyway migration V127: Lesson 27 tasks
-- Extracted from V28__lesson_27_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (221,
        27,
        1,
        'JCheckBoxMenuItem-setSelected,add',
        '',
        221,
        18.0,
        0.0,
        'JCheckBoxMenuItem showToolbar = new JCheckBoxMenuItem("Show panel");
showToolbar.setSelected(true);
JMenu viewMenu = new JMenu("View");
viewMenu.add(showToolbar);
JMenuBar menuBar = new JMenuBar();
menuBar.add(viewMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (222,
        27,
        2,
        'JTabbedPane-addTab,addTab,setSelectedIndex,add',
        '',
        222,
        23.0,
        0.0,
        'JTabbedPane tabbedPane = new JTabbedPane();
tabbedPane.addTab("Tab 1", new JPanel());
tabbedPane.addTab("Tab 2", new JPanel());
tabbedPane.setSelectedIndex(1);
add(tabbedPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (223,
        27,
        3,
        'JTabbedPane-addTab,setTabPlacement,add',
        '',
        223,
        23.0,
        0.0,
        'JTabbedPane tabbedPane = new JTabbedPane();
tabbedPane.addTab("Tab 1", new JPanel());
tabbedPane.setTabPlacement(JTabbedPane.BOTTOM);
add(tabbedPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (224,
        27,
        4,
        'JTabbedPane-addTab,setToolTipTextAt,add',
        '',
        224,
        22.0,
        0.0,
        'JTabbedPane tabbedPane = new JTabbedPane();
JPanel panel = new JPanel();
tabbedPane.addTab("Tab", panel);
tabbedPane.setToolTipTextAt(0, "Description");
add(tabbedPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (225,
        27,
        5,
        'JTabbedPane-addTab,setEnabledAt,setEnabledAt,add',
        '',
        225,
        23.0,
        0.0,
        'JTabbedPane tabbedPane = new JTabbedPane();
tabbedPane.addTab("Tab 1", new JPanel());
tabbedPane.setEnabledAt(0, false);
tabbedPane.setEnabledAt(0, true);
add(tabbedPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (226,
        27,
        6,
        'JTabbedPane-indexOfTab,getSelectedIndex,add',
        '',
        226,
        23.0,
        0.0,
        'JTabbedPane tabbedPane = new JTabbedPane();
tabbedPane.addTab("Tab", new JPanel());
int index = tabbedPane.indexOfTab("Tab");
int selected = tabbedPane.getSelectedIndex();
add(tabbedPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (227,
        27,
        6,
        'JToolBar-addSeparator',
        '',
        227,
        20.0,
        0.0,
        'JToolBar toolBar = new JToolBar();
toolBar.add(new JButton("Button 1"));
toolBar.addSeparator();
toolBar.add(new JButton("Button 2"));
add(toolBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (228,
        27,
        7,
        'JToolBar-addSeparator',
        '',
        228,
        20.0,
        0.0,
        'JToolBar toolBar = new JToolBar();
toolBar.add(new JButton("Button 1"));
toolBar.addSeparator();
toolBar.add(new JButton("Button 2"));
add(toolBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (229,
        27,
        8,
        'JToolBar-setOrientation,add',
        '',
        229,
        22.0,
        0.0,
        'JToolBar toolBar = new JToolBar();
toolBar.add(new JButton("Button"));
toolBar.setOrientation(SwingConstants.VERTICAL);
add(toolBar);');

