-- Flyway migration V121: Lesson 21 tasks
-- Extracted from V22__lesson_21_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (175,
        21,
        1,
        'JSplitPane-add',
        '',
        175,
        18.0,
        0.0,
        'JPanel leftPanel = new JPanel();
JPanel rightPanel = new JPanel();
JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, leftPanel, rightPanel);
add(splitPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (176,
        21,
        2,
        'JPanel;JSplitPane-add',
        '',
        176,
        19.0,
        0.0,
        'JPanel topPanel = new JPanel();
JPanel bottomPanel = new JPanel();
JSplitPane splitPane = new JSplitPane(JSplitPane.VERTICAL_SPLIT, topPanel, bottomPanel);
add(splitPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (177,
        21,
        3,
        'JSplitPane-setDividerLocation,add',
        '',
        177,
        19.0,
        0.0,
        'JPanel leftPanel = new JPanel();
JPanel rightPanel = new JPanel();
JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, leftPanel, rightPanel);
splitPane.setDividerLocation(200);
add(splitPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (178,
        21,
        4,
        'JSplitPane-setResizeWeight,add',
        '',
        178,
        20.0,
        0.0,
        'JPanel leftPanel = new JPanel();
JPanel rightPanel = new JPanel();
JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, leftPanel, rightPanel);
splitPane.setResizeWeight(0.3);
add(splitPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (179,
        21,
        5,
        'JSplitPane-setOneTouchExpandable,add',
        '',
        179,
        19.0,
        0.0,
        'JPanel leftPanel = new JPanel();
JPanel rightPanel = new JPanel();
JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, leftPanel, rightPanel);
splitPane.setOneTouchExpandable(true);
add(splitPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (180,
        21,
        6,
        'JSplitPane-setContinuousLayout',
        '',
        180,
        20.0,
        0.0,
        'JPanel leftPanel = new JPanel();
JPanel rightPanel = new JPanel();
JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, leftPanel, rightPanel);
splitPane.setContinuousLayout(true);
add(splitPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (181,
        21,
        7,
        'JSplitPane-setBorder,add',
        '',
        181,
        19.0,
        0.0,
        'JPanel leftPanel = new JPanel();
JPanel rightPanel = new JPanel();
JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, leftPanel, rightPanel);
splitPane.setBorder(BorderFactory.createEtchedBorder());
add(splitPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (182,
        21,
        8,
        'JSplitPane-setMinimumSize,add',
        '',
        182,
        20.0,
        0.0,
        'JPanel leftPanel = new JPanel();
JPanel rightPanel = new JPanel();
leftPanel.setMinimumSize(new Dimension(100, 0));
JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, leftPanel, rightPanel);
add(splitPane);');

