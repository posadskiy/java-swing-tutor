-- Flyway migration V102: Lesson 2 tasks
-- Extracted from V3__lesson_2_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (2,
        2,
        1,
        'JButton-add',
        '',
        2,
        12.0,
        0.0,
        'JButton button = new JButton();
add(button);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (3,
        2,
        2,
        'JButton-setText,add',
        '',
        3,
        20.0,
        0.0,
        'JButton button = new JButton();
button.setText("Text");
add(button);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (4,
        2,
        3,
        'JButton-setBackground,add',
        '',
        4,
        28.0,
        0.0,
        'JButton button = new JButton();
button.setBackground(Color.YELLOW);
add(button);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (5,
        2,
        4,
        'JButton-setForeground,add',
        '',
        5,
        30.0,
        0.0,
        'JButton button = new JButton();
button.setForeground(Color.WHITE);
add(button);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (6,
        2,
        5,
        'JButton-setSize,add',
        '',
        6,
        35.0,
        0.0,
        'JButton button = new JButton();
button.setSize(320, 200);
add(button);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (7,
        2,
        6,
        'JButton-setMnemonic,setText,add',
        '',
        7,
        25.0,
        0.0,
        'JButton button = new JButton();
button.setMnemonic(KeyEvent.VK_O);
button.setText("<html>B<u>o</u>tton</html>");
add(button);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (8,
        2,
        7,
        'JButton-setIcon,setText,setIconTextGap,add',
        '',
        8,
        24.0,
        0.0,
        'JButton button = new JButton();
button.setIcon(new ImageIcon("icon.png"));
button.setText("Text");
button.setIconTextGap(5);
add(button);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (9,
        2,
        8,
        'JButton-setMnemonic,setText,add',
        '',
        9,
        23.0,
        0.0,
        'JButton button = new JButton();
button.setMnemonic(KeyEvent.VK_S);
button.setText("Button &S");
add(button);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (10,
        2,
        9,
        'JButton-setIcon,setRolloverIcon,add',
        '',
        10,
        24.0,
        0.0,
        'JButton button = new JButton();
button.setIcon(new ImageIcon("normal.png"));
button.setRolloverIcon(new ImageIcon("hover.png"));
add(button);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (11,
        2,
        10,
        'JButton-setIcon,setDisabledIcon,setEnabled,add',
        '',
        11,
        24.0,
        0.0,
        'JButton button = new JButton();
button.setIcon(new ImageIcon("normal.png"));
button.setDisabledIcon(new ImageIcon("disabled.png"));
button.setEnabled(false);
add(button);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (12,
        2,
        11,
        'JButton-setIcon,setPressedIcon,add',
        '',
        12,
        24.0,
        0.0,
        'JButton button = new JButton();
button.setIcon(new ImageIcon("normal.png"));
button.setPressedIcon(new ImageIcon("pressed.png"));
add(button);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (13,
        2,
        12,
        'JButton-setIcon,setRolloverIcon,add',
        '',
        13,
        24.0,
        0.0,
        'JButton button = new JButton();
button.setIcon(new ImageIcon("normal.png"));
button.setRolloverIcon(new ImageIcon("hover.png"));
add(button);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (14,
        2,
        13,
        'JButton-setIcon,setSelectedIcon,add',
        '',
        14,
        24.0,
        0.0,
        'JButton button = new JButton();
button.setIcon(new ImageIcon("normal.png"));
button.setSelectedIcon(new ImageIcon("selected.png"));
add(button);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (15,
        2,
        14,
        'JButton-setIcon,setDisabledIcon,add',
        '',
        15,
        24.0,
        0.0,
        'JButton button = new JButton();
button.setIcon(new ImageIcon("normal.png"));
button.setDisabledIcon(new ImageIcon("disabled.png"));
add(button);');

