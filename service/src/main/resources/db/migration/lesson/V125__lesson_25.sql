-- Flyway migration V125: Lesson 25 tasks
-- Extracted from V26__lesson_25_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (203,
        25,
        1,
        'JMenu-add',
        '',
        203,
        18.0,
        0.0,
        'JMenu fileMenu = new JMenu("File");
JMenuItem openItem = new JMenuItem("Open");
fileMenu.add(openItem);
JMenuBar menuBar = new JMenuBar();
menuBar.add(fileMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (204,
        25,
        1,
        'JWindow-add,pack,setVisible',
        '',
        204,
        22.0,
        0.0,
        'JFrame parent = new JFrame();
JWindow window = new JWindow(parent);
window.add(new JLabel("Popup window"));
window.pack();
window.setVisible(true);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (205,
        25,
        2,
        'JWindow-setAlwaysOnTop,setVisible',
        '',
        205,
        23.0,
        0.0,
        'JFrame parent = new JFrame();
JWindow window = new JWindow(parent);
window.setAlwaysOnTop(true);
window.setVisible(true);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (206,
        25,
        3,
        'JWindow-setBackground,setVisible',
        '',
        206,
        21.0,
        0.0,
        'JFrame parent = new JFrame();
JWindow window = new JWindow(parent);
window.setBackground(Color.LIGHT_GRAY);
window.setVisible(true);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (207,
        25,
        4,
        'JWindow-setAlwaysOnTop,setVisible',
        '',
        207,
        22.0,
        0.0,
        'JFrame parent = new JFrame();
JWindow window = new JWindow(parent);
window.setAlwaysOnTop(true);
window.setVisible(true);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (208,
        25,
        5,
        'JWindow-setBackground',
        '',
        208,
        21.0,
        0.0,
        'JFrame parent = new JFrame();
JWindow window = new JWindow(parent);
window.setBackground(Color.LIGHT_GRAY);
window.setVisible(true);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (209,
        25,
        8,
        'JSplitPane-setOneTouchExpandable',
        '',
        209,
        22.0,
        0.0,
        'JPanel leftPanel = new JPanel();
JPanel rightPanel = new JPanel();
JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, leftPanel, rightPanel);
splitPane.setOneTouchExpandable(true);
add(splitPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (210,
        25,
        9,
        'JSplitPane-setContinuousLayout',
        '',
        210,
        22.0,
        0.0,
        'JPanel leftPanel = new JPanel();
JPanel rightPanel = new JPanel();
JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, leftPanel, rightPanel);
splitPane.setContinuousLayout(true);
add(splitPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (211,
        25,
        10,
        'JSplitPane-setResizeWeight',
        '',
        211,
        24.0,
        0.0,
        'JPanel leftPanel = new JPanel();
JPanel rightPanel = new JPanel();
JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, leftPanel, rightPanel);
splitPane.setResizeWeight(0.5);
add(splitPane);');

