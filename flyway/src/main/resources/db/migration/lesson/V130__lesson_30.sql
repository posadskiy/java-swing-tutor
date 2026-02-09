-- Flyway migration V130: Lesson 30 tasks
-- Extracted from V31__lesson_30_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (244,
        30,
        1,
        'JScrollPane-add',
        '',
        244,
        20.0,
        0.0,
        'String[] columns = {"Name", "Age"};
String[][] data = {{"John", "25"}, {"Mary", "30"}};
JTable table = new JTable(data, columns);
JScrollPane scrollPane = new JScrollPane(table);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (245,
        28,
        2,
        'JMenuBar-add,setJMenuBar',
        '',
        245,
        22.0,
        0.0,
        'JMenuBar menuBar = new JMenuBar();
JMenu fileMenu = new JMenu("File");
menuBar.add(fileMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (246,
        28,
        3,
        'JMenuBar-add,setJMenuBar',
        '',
        246,
        22.0,
        0.0,
        'JMenuBar menuBar = new JMenuBar();
JMenu helpMenu = new JMenu("Help");
helpMenu.add(new JMenuItem("Contents"));
helpMenu.add(new JMenuItem("About"));
menuBar.add(helpMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (247,
        28,
        4,
        'JMenuBar-setHelpMenu,setJMenuBar',
        '',
        247,
        22.0,
        0.0,
        'JMenuBar menuBar = new JMenuBar();
JMenu helpMenu = new JMenu("Help");
menuBar.setHelpMenu(helpMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (248,
        28,
        5,
        'JMenuBar-setBorder,setJMenuBar',
        '',
        248,
        23.0,
        0.0,
        'JMenuBar menuBar = new JMenuBar();
Border border = BorderFactory.createMatteBorder(0, 0, 1, 0, Color.GRAY);
menuBar.setBorder(border);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (249,
        28,
        6,
        'JMenuBar-add,setJMenuBar',
        '',
        249,
        23.0,
        0.0,
        'JMenuBar menuBar = new JMenuBar();
JMenu helpMenu = new JMenu("Help");
helpMenu.add(new JMenuItem("About"));
helpMenu.add(new JMenuItem("Help"));
menuBar.add(helpMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (250,
        28,
        9,
        'JMenu-getPopupMenu',
        '',
        250,
        23.0,
        0.0,
        'JMenu menu = new JMenu("File");
JPopupMenu popup = menu.getPopupMenu();
JMenuBar menuBar = new JMenuBar();
menuBar.add(menu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (251,
        28,
        10,
        'JMenu-add,addSeparator,add',
        '',
        251,
        20.0,
        0.0,
        'JMenu menu = new JMenu("File");
menu.add(new JMenuItem("Open"));
menu.addSeparator();
menu.add(new JMenuItem("Exit"));
JMenuBar menuBar = new JMenuBar();
menuBar.add(menu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (252,
        28,
        11,
        'JMenu-setDelay',
        '',
        252,
        22.0,
        0.0,
        'JMenu menu = new JMenu("File");
menu.setDelay(200);
JMenuBar menuBar = new JMenuBar();
menuBar.add(menu);
setJMenuBar(menuBar);');

