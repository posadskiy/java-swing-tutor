-- Flyway migration V106: Lesson 6 tasks
-- Extracted from V7__lesson_6_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (51,
        6,
        1,
        'JPasswordField-add',
        '',
        51,
        12.0,
        0.0,
        'JPasswordField passwordField = new JPasswordField();
add(passwordField);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (52,
        6,
        2,
        'JPasswordField-setEchoChar,add',
        '',
        52,
        16.0,
        0.0,
        'JPasswordField passwordField = new JPasswordField();
passwordField.setEchoChar(''●'');
add(passwordField);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (53,
        6,
        3,
        'JTextArea-setLineWrap,setWrapStyleWord,add',
        '',
        53,
        22.0,
        0.0,
        'JTextArea textArea = new JTextArea();
textArea.setLineWrap(true);
textArea.setWrapStyleWord(true);
add(textArea);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (54,
        6,
        4,
        'JTextArea-setTabSize,add',
        '',
        54,
        21.0,
        0.0,
        'JTextArea textArea = new JTextArea();
textArea.setTabSize(4);
add(textArea);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (55,
        6,
        5,
        'JTextArea-setLineWrap,setWrapStyleWord,add',
        '',
        55,
        23.0,
        0.0,
        'JTextArea textArea = new JTextArea();
textArea.setLineWrap(true);
textArea.setWrapStyleWord(true);
add(textArea);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (56,
        6,
        6,
        'JTextArea-append,add',
        '',
        56,
        22.0,
        0.0,
        'JTextArea textArea = new JTextArea();
textArea.append("New line\n");
add(textArea);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (57,
        6,
        7,
        'JTextArea-insert,add',
        '',
        57,
        22.0,
        0.0,
        'JTextArea textArea = new JTextArea("Text");
textArea.insert("Inserted text", 0);
add(textArea);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (58,
        6,
        8,
        'JTextArea-replaceRange,add',
        '',
        58,
        23.0,
        0.0,
        'JTextArea textArea = new JTextArea("Old text");
textArea.replaceRange("New text", 0, 5);
add(textArea);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (59,
        6,
        9,
        'JTextArea-getLineCount,add',
        '',
        59,
        21.0,
        0.0,
        'JTextArea textArea = new JTextArea("Line 1\nLine 2");
int lines = textArea.getLineCount();
JLabel label = new JLabel("Line count: " + lines);
add(label);
add(textArea);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (60,
        6,
        10,
        'JTextArea-getLineStartOffset,getLineEndOffset,getText,add',
        '',
        60,
        25.0,
        0.0,
        'JTextArea textArea = new JTextArea("First line\nSecond line");
int start = textArea.getLineStartOffset(0);
int end = textArea.getLineEndOffset(0);
String line = textArea.getText(start, end - start);
add(textArea);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (61,
        6,
        11,
        'JTextArea-setLineWrap,add',
        '',
        61,
        21.0,
        0.0,
        'JTextArea textArea = new JTextArea();
textArea.setLineWrap(true);
add(textArea);');

