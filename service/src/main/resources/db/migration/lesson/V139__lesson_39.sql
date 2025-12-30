-- Flyway migration V139: Lesson 39 tasks
-- Extracted from V40__lesson_39_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (325,
        39,
        1,
        'GridLayout-add',
        '',
        325,
        18.0,
        0.0,
        'setLayout(new GridLayout(2, 3));
for (int i = 1; i <= 6; i++) {
    add(new JButton("Button " + i));
}');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (328,
        39,
        1,
        'JCheckBoxMenuItem-add',
        '',
        328,
        21.0,
        0.0,
        'JCheckBoxMenuItem item = new JCheckBoxMenuItem("Show panel");
JMenu viewMenu = new JMenu("View");
viewMenu.add(item);
JMenuBar menuBar = new JMenuBar();
menuBar.add(viewMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (326,
        39,
        2,
        'JPanel-addMouseListener',
        '',
        326,
        24.0,
        0.0,
        'JPanel panel = new JPanel();
JLabel label = new JLabel();
panel.addMouseListener(new MouseAdapter() {
    @Override
    public void mouseClicked(MouseEvent e) {
        if (e.getClickCount() == 1) {
            label.setText("Single click!");
        } else if (e.getClickCount() == 2) {
            label.setText("Double click!");
        }
    }
});
add(panel);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (329,
        39,
        2,
        'JCheckBoxMenuItem-addActionListener,isSelected,add',
        '',
        329,
        23.0,
        0.0,
        'JCheckBoxMenuItem item = new JCheckBoxMenuItem("Show panel");
JLabel label = new JLabel();
item.addActionListener(e -> {
    if (item.isSelected()) {
        label.setText("Enabled!");
    } else {
        label.setText("Disabled!");
    }
});
JMenu viewMenu = new JMenu("View");
viewMenu.add(item);
JMenuBar menuBar = new JMenuBar();
menuBar.add(viewMenu);
setJMenuBar(menuBar);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (327,
        39,
        3,
        'MouseMotionListener-mouseDragged,getX,getY,add',
        '',
        327,
        26.0,
        0.0,
        'JPanel component = new JPanel();
JLabel label = new JLabel();
component.addMouseMotionListener(new MouseMotionListener() {
    @Override
    public void mouseDragged(MouseEvent e) {
        int x = e.getX();
        int y = e.getY();
        label.setText("Dragging: " + x + ", " + y);
    }
    @Override
    public void mouseMoved(MouseEvent e) {}
});
add(component);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (330,
        39,
        3,
        'JCheckBoxMenuItem-getModel,setSelected,add',
        '',
        330,
        24.0,
        0.0,
        'JCheckBoxMenuItem item = new JCheckBoxMenuItem("Show panel");
ButtonModel model = item.getModel();
model.setSelected(true);
JMenu viewMenu = new JMenu("View");
viewMenu.add(item);
JMenuBar menuBar = new JMenuBar();
menuBar.add(viewMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (334,
        39,
        3,
        'JPopupMenu-show',
        '',
        334,
        22.0,
        0.0,
        'JPopupMenu popupMenu = new JPopupMenu();
popupMenu.add(new JMenuItem("Copy"));
JPanel component = new JPanel();
popupMenu.show(component, 100, 100);
add(component);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (332,
        39,
        4,
        'JCheckBoxMenuItem-addItemListener,isSelected,add',
        '',
        332,
        24.0,
        0.0,
        'JCheckBoxMenuItem item = new JCheckBoxMenuItem("Show panel");
JLabel label = new JLabel();
item.addItemListener(e -> {
    boolean selected = item.isSelected();
    label.setText("Selected: " + selected);
});
JMenu viewMenu = new JMenu("View");
viewMenu.add(item);
JMenuBar menuBar = new JMenuBar();
menuBar.add(viewMenu);
setJMenuBar(menuBar);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (331,
        39,
        5,
        'JCheckBoxMenuItem-setIcon',
        '',
        331,
        22.0,
        0.0,
        'JCheckBoxMenuItem item = new JCheckBoxMenuItem("Show panel");
item.setIcon(new ImageIcon("icon.png"));
JMenu viewMenu = new JMenu("View");
viewMenu.add(item);
JMenuBar menuBar = new JMenuBar();
menuBar.add(viewMenu);
setJMenuBar(menuBar);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (333,
        39,
        6,
        'JPopupMenu-setBorder,add',
        '',
        333,
        23.0,
        0.0,
        'JPopupMenu popupMenu = new JPopupMenu();
Border border = BorderFactory.createLineBorder(Color.BLACK, 2);
popupMenu.setBorder(border);
popupMenu.add(new JMenuItem("Copy"));
JPanel panel = new JPanel();
panel.addMouseListener(new MouseAdapter() {
    @Override
    public void mousePressed(MouseEvent e) {
        if (e.isPopupTrigger()) {
            popupMenu.show(e.getComponent(), e.getX(), e.getY());
        }
    }
});
add(panel);');

