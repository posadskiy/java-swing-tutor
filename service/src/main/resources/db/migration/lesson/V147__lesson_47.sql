-- Flyway migration V147: Lesson 47 tasks
-- Extracted from V48__lesson_47_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (421,
        47,
        1,
        'KeyListener-addKeyListener,requestFocus',
        '',
        421,
        25.0,
        0.0,
        'JLabel label = new JLabel();
KeyListener listener = new KeyListener() {
    @Override
    public void keyPressed(KeyEvent e) {
        if (e.getKeyCode() == KeyEvent.VK_ENTER) {
            label.setText("Enter pressed!");
        }
    }
    @Override
    public void keyReleased(KeyEvent e) {}
    @Override
    public void keyTyped(KeyEvent e) {}
};
addKeyListener(listener);
setFocusable(true);
requestFocus();');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (422,
        47,
        2,
        'KeyListener-isControlDown,getKeyCode,add',
        '',
        422,
        26.0,
        0.0,
        'JPanel panel = new JPanel();
JLabel label = new JLabel();
panel.addKeyListener(new KeyListener() {
    @Override
    public void keyPressed(KeyEvent e) {
        if (e.isControlDown() && e.getKeyCode() == KeyEvent.VK_C) {
            label.setText("Ctrl+C pressed!");
        }
    }
    @Override
    public void keyReleased(KeyEvent e) {}
    @Override
    public void keyTyped(KeyEvent e) {}
});
panel.setFocusable(true);
panel.requestFocus();
add(panel);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (424,
        47,
        2,
        'BoxLayout-createHorizontalGlue,add,add,add',
        '',
        424,
        24.0,
        0.0,
        'setLayout(new BoxLayout(this, BoxLayout.X_AXIS));
JButton button1 = new JButton("Button 1");
JButton button2 = new JButton("Button 2");
Component glue = Box.createHorizontalGlue();
add(button1);
add(glue);
add(button2);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (423,
        47,
        3,
        'KeyListener-keyReleased,getKeyCode,add',
        '',
        423,
        24.0,
        0.0,
        'JPanel panel = new JPanel();
JLabel label = new JLabel();
panel.addKeyListener(new KeyListener() {
    @Override
    public void keyPressed(KeyEvent e) {}
    @Override
    public void keyReleased(KeyEvent e) {
        if (e.getKeyCode() == KeyEvent.VK_SPACE) {
            label.setText("Space released!");
        }
    }
    @Override
    public void keyTyped(KeyEvent e) {}
});
panel.setFocusable(true);
panel.requestFocus();
add(panel);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (425,
        47,
        3,
        'BoxLayout-createRigidArea,add,add,add',
        '',
        425,
        23.0,
        0.0,
        'setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));
JButton button1 = new JButton("Button 1");
JButton button2 = new JButton("Button 2");
Component area = Box.createRigidArea(new Dimension(10, 10));
add(button1);
add(area);
add(button2);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (426,
        47,
        4,
        'BoxLayout-createHorizontalStrut,add,add,add',
        '',
        426,
        23.0,
        0.0,
        'setLayout(new BoxLayout(this, BoxLayout.X_AXIS));
JButton button1 = new JButton("Button 1");
JButton button2 = new JButton("Button 2");
Component strut = Box.createHorizontalStrut(20);
add(button1);
add(strut);
add(button2);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (427,
        47,
        5,
        'BoxLayout-setMaximumSize,add',
        '',
        427,
        23.0,
        0.0,
        'setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));
JButton component = new JButton("Button");
component.setMaximumSize(new Dimension(200, 100));
add(component);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (428,
        47,
        6,
        'BorderLayout-constructor',
        '',
        428,
        21.0,
        0.0,
        'BorderLayout layout = new BorderLayout(10, 10);
setLayout(layout);
JButton button = new JButton("Button");
add(button, BorderLayout.CENTER);');

