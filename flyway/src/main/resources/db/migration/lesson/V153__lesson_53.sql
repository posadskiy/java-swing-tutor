-- Flyway migration V153: Lesson 53 tasks
-- Extracted from V54__lesson_53_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (458,
        53,
        1,
        'Timer-start',
        '',
        458,
        24.0,
        0.0,
        'JLabel label = new JLabel();
ActionListener task = new ActionListener() {
    @Override
    public void actionPerformed(ActionEvent e) {
        label.setText("Timer fired!");
    }
};
Timer timer = new Timer(1000, task);
timer.start();
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (459,
        53,
        2,
        'Timer-stop,restart',
        '',
        459,
        25.0,
        0.0,
        'JLabel label = new JLabel();
ActionListener task = e -> label.setText("Tick!");
Timer timer = new Timer(1000, task);
timer.start();
timer.stop();
timer.restart();
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (462,
        53,
        2,
        'KeyListener-getKeyCode,add',
        '',
        462,
        24.0,
        0.0,
        'JTextField component = new JTextField();
component.setFocusable(true);
JLabel label = new JLabel();
component.addKeyListener(new KeyAdapter() {
    @Override
    public void keyPressed(KeyEvent e) {
        if (e.getKeyCode() == KeyEvent.VK_ENTER) {
            label.setText("Enter pressed!");
        }
    }
});
add(component);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (460,
        53,
        3,
        'Timer-setRepeats,start',
        '',
        460,
        25.0,
        0.0,
        'JLabel label = new JLabel();
Timer timer = new Timer(3000, e -> {
    label.setText("3 seconds passed!");
});
timer.setRepeats(false);
timer.start();
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (463,
        53,
        3,
        'KeyListener-getKeyChar,keyTyped,add',
        '',
        463,
        24.0,
        0.0,
        'JTextField component = new JTextField();
component.setFocusable(true);
JLabel label = new JLabel();
component.addKeyListener(new KeyAdapter() {
    @Override
    public void keyTyped(KeyEvent e) {
        char ch = e.getKeyChar();
        label.setText("Character: " + ch);
    }
});
add(component);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (461,
        53,
        4,
        'Timer-setInitialDelay,start',
        '',
        461,
        26.0,
        0.0,
        'JLabel label = new JLabel();
Timer timer = new Timer(1000, e -> {
    label.setText("Tick!");
});
timer.setInitialDelay(5000);
timer.start();
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (464,
        53,
        4,
        'KeyListener-getModifiersEx-CTRL_DOWN_MASK',
        '',
        464,
        24.0,
        0.0,
        'JTextField component = new JTextField();
component.setFocusable(true);
JLabel label = new JLabel();
component.addKeyListener(new KeyAdapter() {
    @Override
    public void keyPressed(KeyEvent e) {
        if ((e.getModifiersEx() & InputEvent.CTRL_DOWN_MASK) != 0) {
            label.setText("Ctrl pressed!");
        }
    }
});
add(component);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (465,
        53,
        5,
        'KeyListener-getKeyLocation-KEY_LOCATION_LEFT',
        '',
        465,
        24.0,
        0.0,
        'JTextField component = new JTextField();
component.setFocusable(true);
JLabel label = new JLabel();
component.addKeyListener(new KeyAdapter() {
    @Override
    public void keyPressed(KeyEvent e) {
        if (e.getKeyLocation() == KeyEvent.KEY_LOCATION_LEFT) {
            label.setText("Left key!");
        }
    }
});
add
    (component);
add
    (label);
');

