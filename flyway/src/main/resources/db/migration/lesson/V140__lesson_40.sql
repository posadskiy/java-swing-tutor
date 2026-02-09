-- Flyway migration V140: Lesson 40 tasks
-- Extracted from V41__lesson_40_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (335,
        40,
        1,
        'GridBagLayout-add',
        '',
        335,
        28.0,
        0.0,
        'setLayout(new GridBagLayout());
GridBagConstraints gbc = new GridBagConstraints();
gbc.gridx = 0;
gbc.gridy = 0;
gbc.fill = GridBagConstraints.HORIZONTAL;
JButton button = new JButton("Button");
add(button, gbc);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (336,
        40,
        2,
        'GridBagLayout-add',
        '',
        336,
        29.0,
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
VALUES (338,
        40,
        2,
        'FlowLayout-setLayout',
        '',
        338,
        23.0,
        0.0,
        'FlowLayout layout = new FlowLayout(FlowLayout.CENTER);
setLayout(layout);
JButton button = new JButton("Button");
add(button);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (337,
        40,
        3,
        'GridBagConstraints-gridx,gridy,gridwidth,gridheight,fill',
        '',
        337,
        30.0,
        0.0,
        'setLayout(new GridBagLayout());
GridBagConstraints gbc = new GridBagConstraints();
gbc.gridx = 0;
gbc.gridy = 0;
gbc.gridwidth = 2;
gbc.gridheight = 2;
gbc.fill = GridBagConstraints.BOTH;
JButton button = new JButton("Button");
add(button, gbc);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (339,
        40,
        3,
        'FlowLayout-setHgap,setVgap,add',
        '',
        339,
        23.0,
        0.0,
        'FlowLayout layout = new FlowLayout();
layout.setHgap(10);
layout.setVgap(10);
setLayout(layout);
JButton button = new JButton("Button");
add(button);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (342,
        40,
        7,
        'GridBagLayout-add',
        '',
        342,
        25.0,
        0.0,
        'setLayout(new GridBagLayout());
GridBagConstraints constraints = new GridBagConstraints();
constraints.gridx = 0;
constraints.gridy = 0;
constraints.anchor = GridBagConstraints.CENTER;
JButton button = new JButton("Button");
add(button, constraints);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (340,
        40,
        8,
        'JOptionPane-showInputDialog',
        '',
        340,
        23.0,
        0.0,
        'String input = JOptionPane.showInputDialog("Enter name:");
JLabel label = new JLabel();
if (input != null) {
    label.setText("Entered: " + input);
}
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (344,
        40,
        8,
        'GridBagLayout-add',
        '',
        344,
        24.0,
        0.0,
        'setLayout(new GridBagLayout());
GridBagConstraints constraints = new GridBagConstraints();
constraints.gridx = 0;
constraints.gridy = 0;
constraints.fill = GridBagConstraints.BOTH;
JButton button = new JButton("Button");
add(button, constraints);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (341,
        40,
        9,
        'JOptionPane-showConfirmDialog',
        '',
        341,
        24.0,
        0.0,
        'int result = JOptionPane.showConfirmDialog(null, "Confirm action?", "Confirmation", JOptionPane.YES_NO_OPTION);
JLabel label = new JLabel();
if (result == JOptionPane.YES_OPTION) {
    label.setText("Confirmed!");
}
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (343, 40, 10, 'JOptionPane-showMessageDialog', '', 343, 23.0, 0.0,
        'JOptionPane.showMessageDialog(null, "Operation completed", "Information", JOptionPane.INFORMATION_MESSAGE);');

