-- Flyway migration V144: Lesson 44 tasks
-- Extracted from V45__lesson_44_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (383,
        44,
        1,
        'SpringLayout-setLayout;SpringLayout.Constraints-setX,setY',
        '',
        383,
        29.0,
        0.0,
        'SpringLayout layout = new SpringLayout();
setLayout(layout);
JButton button = new JButton("Button");
SpringLayout.Constraints constraints = layout.getConstraints(button);
constraints.setX(Spring.constant(10));
constraints.setY(Spring.constant(10));
add(button);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (384,
        44,
        2,
        'SpringLayout-putConstraint;JButton-add',
        '',
        384,
        30.0,
        0.0,
        'SpringLayout layout = new SpringLayout();
setLayout(layout);
JButton button1 = new JButton("Button 1");
JButton button2 = new JButton("Button 2");
add(button1);
add(button2);
layout.putConstraint(SpringLayout.EAST, button1, 10, SpringLayout.WEST, button2);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (386,
        44,
        2,
        'MouseListener-getClickCount',
        '',
        386,
        23.0,
        0.0,
        'JPanel component = new JPanel();
component.addMouseListener(new MouseAdapter() {
    @Override
    public void mouseClicked(MouseEvent e) {
        if (e.getClickCount() == 2) {
            label.setText("Double click!");
        }
    }
});
add(component);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (385,
        44,
        3,
        'SpringLayout-setLayout',
        '',
        385,
        31.0,
        0.0,
        'SpringLayout layout = new SpringLayout();
setLayout(layout);
JButton button = new JButton("Button");
add(button);
Spring spring1 = Spring.constant(10);
Spring spring2 = Spring.constant(20);
Spring sum = Spring.sum(spring1, spring2);
layout.putConstraint(SpringLayout.WEST, button, sum, SpringLayout.WEST, this);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (387,
        44,
        3,
        'MouseListener-getButton-BUTTON1',
        '',
        387,
        23.0,
        0.0,
        'JPanel component = new JPanel();
JLabel label = new JLabel();
component.addMouseListener(new MouseAdapter() {
    @Override
    public void mouseClicked(MouseEvent e) {
        if (e.getButton() == MouseEvent.BUTTON1) {
            label.setText("Left button!");
        }
    }
});
add(component);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (390,
        44,
        3,
        'Component-requestFocusInWindow',
        '',
        390,
        22.0,
        0.0,
        'JTextField component = new JTextField();
component.setFocusable(true);
component.requestFocusInWindow();
add(component);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (388,
        44,
        4,
        'MouseListener-getX,getY,add',
        '',
        388,
        23.0,
        0.0,
        'JPanel component = new JPanel();
JLabel label = new JLabel();
component.addMouseListener(new MouseAdapter() {
    @Override
    public void mouseClicked(MouseEvent e) {
        int x = e.getX();
        int y = e.getY();
        label.setText("Position: (" + x + ", " + y + ")");
    }
});
add(component);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (393,
        44,
        4,
        'Component-setFocusable',
        '',
        393,
        21.0,
        0.0,
        'JLabel component = new JLabel("Label");
component.setFocusable(false);
add(component);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (389,
        44,
        5,
        'MouseListener-getClickCount',
        '',
        389,
        23.0,
        0.0,
        'JPanel component = new JPanel();
component.addMouseListener(new MouseAdapter() {
    @Override
    public void mouseClicked(MouseEvent e) {
        if (e.getClickCount() == 2) {
            label.setText("Double click!");
        }
    }
});
add(component);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (396,
        44,
        5,
        'FocusListener-getFocusOwner',
        '',
        396,
        25.0,
        0.0,
        'Component owner = KeyboardFocusManager.getCurrentKeyboardFocusManager().getFocusOwner();
JLabel label = new JLabel();
if (owner != null) {
    label.setText("Focus owner: " + owner);
}
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (391,
        44,
        6,
        'SpringLayout-getConstraints',
        '',
        391,
        24.0,
        0.0,
        'SpringLayout layout = new SpringLayout();
setLayout(layout);
JButton component = new JButton("Button");
add(component);
SpringLayout.Constraints constraints = layout.getConstraints(component);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (392,
        44,
        7,
        'SpringLayout-putConstraint',
        '',
        392,
        26.0,
        0.0,
        'SpringLayout layout = new SpringLayout();
setLayout(layout);
JButton component1 = new JButton("Button 1");
JButton component2 = new JButton("Button 2");
add(component1);
add(component2);
layout.putConstraint(SpringLayout.WEST, component2, 10, SpringLayout.EAST, component1);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (394,
        44,
        8,
        'SpringLayout-constant,add',
        '',
        394,
        25.0,
        0.0,
        'Spring spring = Spring.constant(100);
SpringLayout layout = new SpringLayout();
setLayout(layout);
JButton button = new JButton("Button");
add(button);
layout.putConstraint(SpringLayout.WEST, button, spring, SpringLayout.WEST, this);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (395,
        44,
        9,
        'SpringLayout-getConstraints',
        '',
        395,
        24.0,
        0.0,
        'SpringLayout layout = new SpringLayout();
setLayout(layout);
JButton component = new JButton("Button");
add(component);
SpringLayout.Constraints constraints = layout.getConstraints(component);');

