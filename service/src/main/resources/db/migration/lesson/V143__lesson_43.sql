-- Flyway migration V143: Lesson 43 tasks
-- Extracted from V44__lesson_43_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (370,
        43,
        1,
        'GroupLayout-setHorizontalGroup,setVerticalGroup,add',
        '',
        370,
        30.0,
        0.0,
        'JPanel panel = new JPanel();
GroupLayout layout = new GroupLayout(panel);
panel.setLayout(layout);
JButton button1 = new JButton("Button 1");
JButton button2 = new JButton("Button 2");
GroupLayout.SequentialGroup hGroup = layout.createSequentialGroup();
hGroup.addComponent(button1);
hGroup.addComponent(button2);
layout.setHorizontalGroup(hGroup);
GroupLayout.ParallelGroup vGroup = layout.createParallelGroup();
vGroup.addComponent(button1);
vGroup.addComponent(button2);
layout.setVerticalGroup(vGroup);
add(panel);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (371,
        43,
        2,
        'GroupLayout-addComponent,addGap,addComponent,add',
        '',
        371,
        28.0,
        0.0,
        'JPanel panel = new JPanel();
GroupLayout layout = new GroupLayout(panel);
panel.setLayout(layout);
JButton button1 = new JButton("Button 1");
JButton button2 = new JButton("Button 2");
layout.setHorizontalGroup(
    layout.createSequentialGroup()
        .addComponent(button1)
        .addGap(10)
        .addComponent(button2)
);
add(panel);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (373,
        43,
        2,
        'ActionListener-getSource,addActionListener,add',
        '',
        373,
        24.0,
        0.0,
        'JButton button1 = new JButton("Button 1");
JButton button2 = new JButton("Button 2");
JLabel label = new JLabel();
ActionListener listener = e -> {
    if (e.getSource() == button1) {
        label.setText("Button 1");
    } else if (e.getSource() == button2) {
        label.setText("Button 2");
    }
};
button1.addActionListener(listener);
button2.addActionListener(listener);
add(button1);
add(button2);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (372,
        43,
        3,
        'GroupLayout-createParallelGroup,setHorizontalGroup,add',
        '',
        372,
        29.0,
        0.0,
        'JPanel panel = new JPanel();
GroupLayout layout = new GroupLayout(panel);
panel.setLayout(layout);
JButton button1 = new JButton("Button 1");
JButton button2 = new JButton("Button 2");
layout.setHorizontalGroup(
    layout.createParallelGroup()
        .addComponent(button1)
        .addComponent(button2)
);
add(panel);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (374,
        43,
        3,
        'ActionListener-setActionCommand,getActionCommand,add',
        '',
        374,
        24.0,
        0.0,
        'JButton button = new JButton("Save");
button.setActionCommand("SAVE");
JLabel label = new JLabel();
button.addActionListener(e -> {
    String cmd = e.getActionCommand();
    if ("SAVE".equals(cmd)) {
        label.setText("Saving!");
    }
});
add(button);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (375,
        43,
        4,
        'ActionListener-getWhen',
        '',
        375,
        23.0,
        0.0,
        'JButton button = new JButton("Button");
JLabel label = new JLabel();
button.addActionListener(e -> {
    long when = e.getWhen();
    label.setText("Time: " + new Date(when));
});
add(button);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (377,
        43,
        4,
        'KeyListener-getKeyChar,add',
        '',
        377,
        23.0,
        0.0,
        'JTextField component = new JTextField();
component.setFocusable(true);
component.addKeyListener(new KeyAdapter() {
    @Override
    public void keyTyped(KeyEvent e) {
        char ch = e.getKeyChar();
        label.setText("Character: " + ch);
    }
});
add(component);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (376,
        43,
        5,
        'ActionListener-getModifiers-CTRL_MASK',
        '',
        376,
        24.0,
        0.0,
        'JButton button = new JButton("Button");
JLabel label = new JLabel();
button.addActionListener(e -> {
    int modifiers = e.getModifiers();
    if ((modifiers & ActionEvent.CTRL_MASK) != 0) {
        label.setText("Ctrl pressed!");
    }
});
add(button);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (379,
        43,
        5,
        'KeyListener-getKeyCode,add',
        '',
        379,
        24.0,
        0.0,
        'JTextField component = new JTextField();
component.setFocusable(true);
JLabel label = new JLabel();
component.addKeyListener(new KeyAdapter() {
    @Override
    public void keyPressed(KeyEvent e) {
        int code = e.getKeyCode();
        if (code == KeyEvent.VK_ENTER) {
            label.setText("Enter pressed");
        }
    }
});
add(component);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (382,
        43,
        6,
        'KeyListener-getKeyChar,add',
        '',
        382,
        23.0,
        0.0,
        'JTextField component = new JTextField();
component.setFocusable(true);
component.addKeyListener(new KeyAdapter() {
    @Override
    public void keyTyped(KeyEvent e) {
        char ch = e.getKeyChar();
        label.setText("Character: " + ch);
    }
});
add(component);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (378,
        43,
        7,
        'GroupLayout-createSequentialGroup,addComponent,add',
        '',
        378,
        26.0,
        0.0,
        'JPanel panel = new JPanel();
GroupLayout layout = new GroupLayout(panel);
panel.setLayout(layout);
JButton component1 = new JButton("Button 1");
JButton component2 = new JButton("Button 2");
GroupLayout.SequentialGroup hGroup = layout.createSequentialGroup();
hGroup.addComponent(component1).addComponent(component2);
layout.setHorizontalGroup(hGroup);
add(panel);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (380,
        43,
        8,
        'GroupLayout-createParallelGroup,addComponent,add',
        '',
        380,
        26.0,
        0.0,
        'JPanel panel = new JPanel();
GroupLayout layout = new GroupLayout(panel);
panel.setLayout(layout);
JButton component1 = new JButton("Button 1");
JButton component2 = new JButton("Button 2");
GroupLayout.ParallelGroup vGroup = layout.createParallelGroup();
vGroup.addComponent(component1).addComponent(component2);
layout.setVerticalGroup(vGroup);
add(panel);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (381,
        43,
        9,
        'GroupLayout-addGap',
        '',
        381,
        22.0,
        0.0,
        'JPanel panel = new JPanel();
GroupLayout layout = new GroupLayout(panel);
panel.setLayout(layout);
JButton button1 = new JButton("Button 1");
JButton button2 = new JButton("Button 2");
GroupLayout.SequentialGroup hGroup = layout.createSequentialGroup();
hGroup.addComponent(button1).addGap(10).addComponent(button2);
layout.setHorizontalGroup(hGroup);
add(panel);');

