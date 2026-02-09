-- Flyway migration V142: Lesson 42 tasks
-- Extracted from V43__lesson_42_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (356,
        42,
        1,
        'CardLayout-add,add,show',
        '',
        356,
        26.0,
        0.0,
        'CardLayout cardLayout = new CardLayout();
setLayout(cardLayout);
JPanel panel1 = new JPanel();
panel1.add(new JLabel("Panel 1"));
JPanel panel2 = new JPanel();
panel2.add(new JLabel("Panel 2"));
add(panel1, "card1");
add(panel2, "card2");
cardLayout.show(this, "card1");');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (357,
        42,
        2,
        'CardLayout-next,previous',
        '',
        357,
        27.0,
        0.0,
        'CardLayout cardLayout = new CardLayout();
setLayout(cardLayout);
JPanel panel1 = new JPanel();
panel1.add(new JLabel("Panel 1"));
JPanel panel2 = new JPanel();
panel2.add(new JLabel("Panel 2"));
add(panel1, "card1");
add(panel2, "card2");
cardLayout.next(this);
cardLayout.previous(this);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (359,
        42,
        2,
        'GridBagLayout-GridBagConstraints-weightx-weighty',
        '',
        359,
        26.0,
        0.0,
        'setLayout(new GridBagLayout());
GridBagConstraints gbc = new GridBagConstraints();
gbc.gridx = 0;
gbc.gridy = 0;
gbc.weightx = 1.0;
gbc.weighty = 1.0;
gbc.fill = GridBagConstraints.BOTH;
JButton button = new JButton("Button");
add(button, gbc);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (358,
        42,
        3,
        'JPanel-setName,add',
        '',
        358,
        27.0,
        0.0,
        'CardLayout cardLayout = new CardLayout();
setLayout(cardLayout);
JPanel panel1 = new JPanel();
panel1.setName("card1");
panel1.add(new JLabel("Panel 1"));
JPanel panel2 = new JPanel();
panel2.setName("card2");
panel2.add(new JLabel("Panel 2"));
add(panel1, "card1");
add(panel2, "card2");
Component[] components = getComponents();
JLabel label = new JLabel();
for (Component comp : components) {
    if (comp.isVisible()) {
        label.setText("Visible card: " + comp.getName());
    }
}
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (360,
        42,
        3,
        'GridBagLayout-GridBagConstraints-fill-BOTH',
        '',
        360,
        25.0,
        0.0,
        'setLayout(new GridBagLayout());
GridBagConstraints gbc = new GridBagConstraints();
gbc.gridx = 0;
gbc.gridy = 0;
gbc.fill = GridBagConstraints.BOTH;
JButton button = new JButton("Button");
add(button, gbc);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (361,
        42,
        4,
        'GridBagLayout-GridBagConstraints-anchor-NORTH',
        '',
        361,
        25.0,
        0.0,
        'setLayout(new GridBagLayout());
GridBagConstraints gbc = new GridBagConstraints();
gbc.gridx = 0;
gbc.gridy = 0;
gbc.anchor = GridBagConstraints.NORTH;
JButton button = new JButton("Button");
add(button, gbc);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (362,
        42,
        5,
        'GridBagLayout-add',
        '',
        362,
        24.0,
        0.0,
        'setLayout(new GridBagLayout());
GridBagConstraints gbc = new GridBagConstraints();
gbc.gridx = 0;
gbc.gridy = 0;
gbc.insets = new Insets(5, 5, 5, 5);
JButton button = new JButton("Button");
add(button, gbc);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (363,
        42,
        6,
        'JColorChooser-setPreviewPanel',
        '',
        363,
        25.0,
        0.0,
        'JColorChooser colorChooser = new JColorChooser();
JPanel previewPanel = new JPanel();
previewPanel.setPreferredSize(new Dimension(100, 50));
colorChooser.setPreviewPanel(previewPanel);
JFrame frame = new JFrame();
JDialog dialog = JColorChooser.createDialog(frame, "Выбери цвет", true, colorChooser, null, null);
dialog.setVisible(true);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (364,
        42,
        6,
        'CardLayout-first',
        '',
        364,
        23.0,
        0.0,
        'CardLayout cardLayout = new CardLayout();
setLayout(cardLayout);
JPanel panel1 = new JPanel();
panel1.add(new JLabel("Panel 1"));
JPanel panel2 = new JPanel();
panel2.add(new JLabel("Panel 2"));
add(panel1, "card1");
add(panel2, "card2");
CardLayout layout = (CardLayout) getLayout();
layout.first(this);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (365,
        42,
        7,
        'JColorChooser-getSelectionModel',
        '',
        365,
        24.0,
        0.0,
        'JColorChooser colorChooser = new JColorChooser();
ColorSelectionModel model = colorChooser.getSelectionModel();
JFrame frame = new JFrame();
JDialog dialog = JColorChooser.createDialog(frame, "Выбери цвет", true, colorChooser, null, null);
dialog.setVisible(true);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (366,
        42,
        7,
        'CardLayout-last',
        '',
        366,
        23.0,
        0.0,
        'CardLayout cardLayout = new CardLayout();
setLayout(cardLayout);
JPanel panel1 = new JPanel();
panel1.add(new JLabel("Panel 1"));
JPanel panel2 = new JPanel();
panel2.add(new JLabel("Panel 2"));
add(panel1, "card1");
add(panel2, "card2");
CardLayout layout = (CardLayout) getLayout();
layout.last(this);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (367,
        42,
        8,
        'CardLayout-next',
        '',
        367,
        23.0,
        0.0,
        'CardLayout cardLayout = new CardLayout();
setLayout(cardLayout);
JPanel panel1 = new JPanel();
panel1.add(new JLabel("Panel 1"));
JPanel panel2 = new JPanel();
panel2.add(new JLabel("Panel 2"));
add(panel1, "card1");
add(panel2, "card2");
CardLayout layout = (CardLayout) getLayout();
layout.next(this);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (368,
        42,
        8,
        'JColorChooser-setColor,add',
        '',
        368,
        22.0,
        0.0,
        'JColorChooser colorChooser = new JColorChooser();
colorChooser.setColor(Color.RED);
JFrame frame = new JFrame();
JDialog dialog = JColorChooser.createDialog(frame, "Выбери цвет", true, colorChooser, null, null);
dialog.setVisible(true);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (369,
        42,
        9,
        'CardLayout-previous',
        '',
        369,
        23.0,
        0.0,
        'CardLayout cardLayout = new CardLayout();
setLayout(cardLayout);
JPanel panel1 = new JPanel();
panel1.add(new JLabel("Panel 1"));
JPanel panel2 = new JPanel();
panel2.add(new JLabel("Panel 2"));
add(panel1, "card1");
add(panel2, "card2");
CardLayout layout = (CardLayout) getLayout();
layout.previous(this);');

