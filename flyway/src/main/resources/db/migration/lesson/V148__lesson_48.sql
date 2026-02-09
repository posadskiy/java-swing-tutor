-- Flyway migration V148: Lesson 48 tasks
-- Extracted from V49__lesson_48_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (429,
        48,
        1,
        'FocusListener-addFocusListener,add',
        '',
        429,
        23.0,
        0.0,
        'JLabel label = new JLabel();
FocusListener listener = new FocusListener() {
    @Override
    public void focusGained(FocusEvent e) {
        label.setText("Focus gained!");
    }
    @Override
    public void focusLost(FocusEvent e) {
        label.setText("Focus lost!");
    }
};
JTextField field = new JTextField();
field.addFocusListener(listener);
add(field);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (430,
        48,
        2,
        'JTextField-addFocusListener,add',
        '',
        430,
        26.0,
        0.0,
        'JTextField textField = new JTextField();
JLabel label = new JLabel();
textField.addFocusListener(new FocusListener() {
    @Override
    public void focusGained(FocusEvent e) {}
    @Override
    public void focusLost(FocusEvent e) {
        String text = textField.getText();
        if (text.isEmpty()) {
            textField.setBackground(Color.RED);
            label.setText("Field cannot be empty!");
        } else {
            textField.setBackground(Color.WHITE);
        }
    }
});
add(textField);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (432,
        48,
        2,
        'CardLayout-show,next',
        '',
        432,
        25.0,
        0.0,
        'JPanel panel = new JPanel();
CardLayout layout = new CardLayout();
panel.setLayout(layout);
JPanel card1 = new JPanel();
card1.add(new JLabel("Card 1"));
JPanel card2 = new JPanel();
card2.add(new JLabel("Card 2"));
panel.add(card1, "card1");
panel.add(card2, "card2");
layout.show(panel, "card1");
layout.next(panel);
add(panel);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (431,
        48,
        3,
        'JTextField-setFocusable,setFocusTraversalKeysEnabled,requestFocus',
        '',
        431,
        26.0,
        0.0,
        'JTextField component = new JTextField();
component.setFocusable(true);
component.setFocusTraversalKeysEnabled(true);
component.requestFocus();
add(component);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (433,
        48,
        3,
        'CardLayout-first,last',
        '',
        433,
        24.0,
        0.0,
        'JPanel panel = new JPanel();
CardLayout layout = new CardLayout();
panel.setLayout(layout);
JPanel card1 = new JPanel();
card1.add(new JLabel("Card 1"));
JPanel card2 = new JPanel();
card2.add(new JLabel("Card 2"));
panel.add(card1, "card1");
panel.add(card2, "card2");
layout.first(panel);
layout.last(panel);
add(panel);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (434,
        48,
        4,
        'CardLayout-getComponentCount',
        '',
        434,
        22.0,
        0.0,
        'JPanel panel = new JPanel();
CardLayout layout = new CardLayout();
panel.setLayout(layout);
JPanel card1 = new JPanel();
JPanel card2 = new JPanel();
panel.add(card1, "card1");
panel.add(card2, "card2");
int count = panel.getComponentCount();
JLabel label = new JLabel("Карт: " + count);
add(panel);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (435,
        48,
        5,
        'CardLayout-show',
        '',
        435,
        23.0,
        0.0,
        'JPanel panel = new JPanel();
CardLayout layout = new CardLayout();
panel.setLayout(layout);
JPanel card1 = new JPanel();
card1.add(new JLabel("Card 1"));
panel.add(card1, "cardName");
layout.show(panel, "cardName");
add(panel);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (436,
        48,
        6,
        'FlowLayout-setComponentOrientation',
        '',
        436,
        24.0,
        0.0,
        'FlowLayout flowLayout = new FlowLayout();
setLayout(flowLayout);
flowLayout.setComponentOrientation(ComponentOrientation.RIGHT_TO_LEFT);
JButton button = new JButton("Button");
add(button);');

