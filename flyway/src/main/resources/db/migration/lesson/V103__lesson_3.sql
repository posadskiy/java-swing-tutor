-- Flyway migration V103: Lesson 3 tasks
-- Extracted from V4__lesson_3_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (16,
        3,
        1,
        'JLabel-add',
        '',
        16,
        10.0,
        0.0,
        'JLabel label = new JLabel();
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (17,
        3,
        2,
        'JLabel-setText,add',
        '',
        17,
        12.0,
        0.0,
        'JLabel label = new JLabel();
label.setText("Hello, world!");
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (18,
        3,
        3,
        'JLabel-setIcon,add',
        '',
        18,
        18.0,
        0.0,
        'JLabel label = new JLabel();
label.setIcon(new ImageIcon("icon.png"));
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (19,
        3,
        4,
        'JLabel-setHorizontalAlignment,add',
        '',
        19,
        15.0,
        0.0,
        'JLabel label = new JLabel("Center");
label.setHorizontalAlignment(SwingConstants.CENTER);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (20,
        3,
        5,
        'JLabel-setVerticalAlignment,add',
        '',
        20,
        16.0,
        0.0,
        'JLabel label = new JLabel("Text");
label.setVerticalAlignment(SwingConstants.CENTER);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (21,
        3,
        6,
        'JLabel-setBackground,setForeground,setOpaque,add',
        '',
        21,
        20.0,
        0.0,
        'JLabel label = new JLabel("Text");
label.setBackground(Color.YELLOW);
label.setForeground(Color.BLACK);
label.setOpaque(true);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (22,
        3,
        7,
        'JLabel-setFont,add',
        '',
        22,
        22.0,
        0.0,
        'JLabel label = new JLabel("Text");
Font font = new Font("Arial", Font.BOLD, 16);
label.setFont(font);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (23,
        3,
        8,
        'JLabel-setSize,add',
        '',
        23,
        18.0,
        0.0,
        'JLabel label = new JLabel("Text");
label.setSize(200, 50);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (24,
        3,
        9,
        'JLabel-setToolTipText,add',
        '',
        24,
        14.0,
        0.0,
        'JLabel label = new JLabel("Hover cursor");
label.setToolTipText("This is a tooltip!");
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (25,
        3,
        10,
        'JLabel-setText,add',
        '',
        25,
        16.0,
        0.0,
        'JLabel label = new JLabel();
label.setText("<html><b>Bold</b></html>");
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (26,
        3,
        11,
        'JLabel-setIcon,add',
        '',
        26,
        24.0,
        0.0,
        'ImageIcon icon = new ImageIcon("icon.png");
JLabel label = new JLabel();
label.setIcon(icon);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (27,
        3,
        12,
        'JLabel-setHorizontalAlignment,setVerticalAlignment,add',
        '',
        27,
        23.0,
        0.0,
        'JLabel label = new JLabel("Text");
label.setHorizontalAlignment(SwingConstants.CENTER);
label.setVerticalAlignment(SwingConstants.CENTER);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (28,
        3,
        13,
        'JLabel-setText,add',
        '',
        28,
        20.0,
        0.0,
        'JLabel label = new JLabel();
label.setText("<html><b>Bold</b> and <i>Italic</i></html>");
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (29,
        3,
        14,
        'JLabel-setIcon,setHorizontalAlignment,add',
        '',
        29,
        23.0,
        0.0,
        'JLabel label = new JLabel();
label.setIcon(new ImageIcon("icon.png"));
label.setHorizontalAlignment(SwingConstants.LEFT);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (30,
        3,
        15,
        'JLabel-setVerticalAlignment,add',
        '',
        30,
        22.0,
        0.0,
        'JLabel label = new JLabel("Text");
label.setVerticalAlignment(SwingConstants.TOP);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (31,
        3,
        16,
        'JLabel-setIcon,setHorizontalTextPosition,add',
        '',
        31,
        23.0,
        0.0,
        'JLabel label = new JLabel("Text");
label.setIcon(new ImageIcon("icon.png"));
label.setHorizontalTextPosition(SwingConstants.RIGHT);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (32,
        3,
        17,
        'JLabel-setDisplayedMnemonic,setLabelFor,add;JTextField-add',
        '',
        32,
        25.0,
        0.0,
        'JTextField textField = new JTextField();
JLabel label = new JLabel("Name");
label.setDisplayedMnemonic(KeyEvent.VK_N);
label.setLabelFor(textField);
add(label);
add(textField);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (33,
        3,
        18,
        'JLabel-setBorder,add',
        '',
        33,
        22.0,
        0.0,
        'JLabel label = new JLabel("Text");
Border border = BorderFactory.createLineBorder(Color.BLACK, 1);
label.setBorder(border);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (34,
        3,
        19,
        'JLabel-setIcon,setIconTextGap,add',
        '',
        34,
        22.0,
        0.0,
        'JLabel label = new JLabel("Text");
label.setIcon(new ImageIcon("icon.png"));
label.setIconTextGap(10);
add(label);');

