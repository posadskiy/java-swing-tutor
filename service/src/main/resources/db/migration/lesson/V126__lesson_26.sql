-- Flyway migration V126: Lesson 26 tasks
-- Extracted from V27__lesson_26_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (212,
        26,
        1,
        'JMenuItem-addActionListener,add',
        '',
        212,
        20.0,
        0.0,
        'JMenuItem openItem = new JMenuItem("Open");
JLabel label = new JLabel();
openItem.addActionListener(e -> label.setText("Open"));
JMenu fileMenu = new JMenu("File");
fileMenu.add(openItem);
JMenuBar menuBar = new JMenuBar();
menuBar.add(fileMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (213,
        26,
        2,
        'JSplitPane-setDividerLocation,add',
        '',
        213,
        24.0,
        0.0,
        'JPanel leftPanel = new JPanel();
JPanel rightPanel = new JPanel();
JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, leftPanel, rightPanel);
splitPane.setDividerLocation(200);
add(splitPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (214,
        26,
        3,
        'JSplitPane-setOneTouchExpandable,add',
        '',
        214,
        22.0,
        0.0,
        'JPanel leftPanel = new JPanel();
JPanel rightPanel = new JPanel();
JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, leftPanel, rightPanel);
splitPane.setOneTouchExpandable(true);
add(splitPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (215,
        26,
        4,
        'JSplitPane-setDividerLocation,add',
        '',
        215,
        24.0,
        0.0,
        'JPanel leftPanel = new JPanel();
JPanel rightPanel = new JPanel();
JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, leftPanel, rightPanel);
splitPane.setDividerLocation(200);
add(splitPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (216,
        26,
        5,
        'JSplitPane-setContinuousLayout,add',
        '',
        216,
        23.0,
        0.0,
        'JPanel leftPanel = new JPanel();
JPanel rightPanel = new JPanel();
JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, leftPanel, rightPanel);
splitPane.setContinuousLayout(true);
add(splitPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (217,
        26,
        6,
        'JSplitPane-setResizeWeight',
        '',
        217,
        24.0,
        0.0,
        'JPanel leftPanel = new JPanel();
JPanel rightPanel = new JPanel();
JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, leftPanel, rightPanel);
splitPane.setResizeWeight(0.5);
add(splitPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (218,
        26,
        11,
        'JTabbedPane-setEnabledAt',
        '',
        218,
        23.0,
        0.0,
        'JTabbedPane tabbedPane = new JTabbedPane();
tabbedPane.addTab("Tab 1", new JPanel());
tabbedPane.setEnabledAt(0, false);
tabbedPane.setEnabledAt(0, true);
add(tabbedPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (219,
        26,
        12,
        'JTabbedPane-setMnemonicAt,add',
        '',
        219,
        24.0,
        0.0,
        'JTabbedPane tabbedPane = new JTabbedPane();
tabbedPane.addTab("Tab", new JPanel());
tabbedPane.setMnemonicAt(0, KeyEvent.VK_T);
add(tabbedPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (220,
        26,
        13,
        'JTabbedPane-setTabPlacement',
        '',
        220,
        23.0,
        0.0,
        'JTabbedPane tabbedPane = new JTabbedPane();
tabbedPane.addTab("Tab 1", new JPanel());
tabbedPane.setTabPlacement(JTabbedPane.BOTTOM);
add(tabbedPane);');

