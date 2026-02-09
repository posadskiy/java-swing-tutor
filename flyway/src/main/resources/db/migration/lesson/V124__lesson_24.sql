-- Flyway migration V124: Lesson 24 tasks
-- Extracted from V25__lesson_24_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (196,
        24,
        1,
        'JMenuBar-add,setJMenuBar',
        '',
        196,
        16.0,
        0.0,
        'JMenuBar menuBar = new JMenuBar();
JMenu fileMenu = new JMenu("File");
menuBar.add(fileMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (197,
        24,
        2,
        'JScrollPane-setHorizontalScrollBarPolicy,setVerticalScrollBarPolicy,add',
        '',
        197,
        24.0,
        0.0,
        'JTextArea area = new JTextArea("Long text...");
JScrollPane scrollPane = new JScrollPane(area);
scrollPane.setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_ALWAYS);
scrollPane.setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (198,
        24,
        3,
        'JScrollPane-getViewport,add',
        '',
        198,
        25.0,
        0.0,
        'JTextArea area = new JTextArea("Long text...");
JScrollPane scrollPane = new JScrollPane(area);
JViewport viewport = scrollPane.getViewport();
viewport.setViewPosition(new Point(0, 100));
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (199,
        24,
        4,
        'JScrollPane-setHorizontalScrollBarPolicy,add',
        '',
        199,
        23.0,
        0.0,
        'JTextArea area = new JTextArea("Long text...");
JScrollPane scrollPane = new JScrollPane(area);
scrollPane.setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (200,
        24,
        5,
        'JScrollPane-setViewportBorder,add',
        '',
        200,
        23.0,
        0.0,
        'JTextArea area = new JTextArea("Long text...");
JScrollPane scrollPane = new JScrollPane(area);
Border border = BorderFactory.createLineBorder(Color.GRAY);
scrollPane.setViewportBorder(border);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (201,
        24,
        9,
        'JScrollPane-setColumnHeaderView',
        '',
        201,
        23.0,
        0.0,
        'JTextArea area = new JTextArea("Long text...");
JScrollPane scrollPane = new JScrollPane(area);
JLabel header = new JLabel("Header");
scrollPane.setColumnHeaderView(header);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (202,
        24,
        10,
        'JScrollPane-setRowHeaderView',
        '',
        202,
        23.0,
        0.0,
        'JTextArea area = new JTextArea("Long text...");
JScrollPane scrollPane = new JScrollPane(area);
JLabel header = new JLabel("Header");
scrollPane.setRowHeaderView(header);
add(scrollPane);');

/*INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (474,
        24,
        11,
        'JScrollPane-setViewportBorder,add',
        '',
        474,
        23.0,
        0.0,
        'JTextArea area = new JTextArea("Long text...");
JScrollPane scrollPane = new JScrollPane(area);
Border border = BorderFactory.createLineBorder(Color.GRAY, 1);
scrollPane.setViewportBorder(border);
add(scrollPane);');*/

