-- Flyway migration V111: Lesson 11 tasks
-- Extracted from V12__lesson_11_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (94,
        11,
        1,
        'JList-add',
        '',
        94,
        15.0,
        0.0,
        'String[] items = {"Item 1", "Item 2", "Item 3"};
JList<String> list = new JList<>(items);
add(list);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (95,
        11,
        2,
        'JList-setSelectionMode,add',
        '',
        95,
        18.0,
        0.0,
        'String[] items = {"Item 1", "Item 2", "Item 3"};
JList<String> list = new JList<>(items);
list.setSelectionMode(ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);
add(list);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (96,
        11,
        3,
        'JList-getSelectedValue,add',
        '',
        96,
        19.0,
        0.0,
        'String[] items = {"Item 1", "Item 2", "Item 3"};
JList<String> list = new JList<>(items);
String selected = list.getSelectedValue();
JLabel label = new JLabel();
if (selected != null) {
    label.setText("Selected: " + selected);
}
add(list);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (97,
        11,
        4,
        'JList-addListSelectionListener,getSelectedValue,add',
        '',
        97,
        22.0,
        0.0,
        'String[] items = {"Item 1", "Item 2", "Item 3"};
JList<String> list = new JList<>(items);
JLabel label = new JLabel();
list.addListSelectionListener(e -> {
    if (!e.getValueIsAdjusting()) {
        String selected = list.getSelectedValue();
        label.setText("Selected: " + selected);
    }
});
add(list);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (98,
        11,
        5,
        'JList-add',
        '',
        98,
        21.0,
        0.0,
        'DefaultListModel<String> model = new DefaultListModel<>();
model.addElement("Element 1");
model.addElement("Element 2");
model.addElement("Element 3");
JList<String> list = new JList<>(model);
add(list);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (99,
        11,
        6,
        'JScrollPane-add',
        '',
        99,
        20.0,
        0.0,
        'String[] items = {"Item 1", "Item 2", "Item 3", "Item 4", "Item 5"};
JList<String> list = new JList<>(items);
JScrollPane scrollPane = new JScrollPane(list);
add(scrollPane);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (100,
        11,
        7,
        'JList-setSelectionMode,getSelectedValuesList,add',
        '',
        100,
        23.0,
        0.0,
        'String[] items = {"Item 1", "Item 2", "Item 3"};
JList<String> list = new JList<>(items);
list.setSelectionMode(ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);
List<String> selected = list.getSelectedValuesList();
for (String item : selected) {
    label.setText("Selected: " + item);
}
add(list);');

