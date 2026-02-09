-- Flyway migration V129: Lesson 29 tasks
-- Extracted from V30__lesson_29_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (238,
        29,
        1,
        'JPopupMenu-show,add',
        '',
        238,
        18.0,
        0.0,
        'JPopupMenu popup = new JPopupMenu();
popup.add(new JMenuItem("Copy"));
popup.add(new JMenuItem("Paste"));
JPanel panel = new JPanel();
panel.addMouseListener(new MouseAdapter() {
    @Override
    public void mouseClicked(MouseEvent e) {
        if (e.getButton() == MouseEvent.BUTTON3) {
            popup.show(panel, e.getX(), e.getY());
        }
    }
});
add(panel);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (239,
        29,
        2,
        'JPopupMenu-add,addSeparator,add;JPanel-addMouseListener,add',
        '',
        239,
        20.0,
        0.0,
        'JPopupMenu popup = new JPopupMenu();
popup.add(new JMenuItem("Copy"));
popup.addSeparator();
popup.add(new JCheckBoxMenuItem("Show panel"));
JPanel panel = new JPanel();
panel.addMouseListener(new MouseAdapter() {
    @Override
    public void mouseClicked(MouseEvent e) {
        if (e.getButton() == MouseEvent.BUTTON3) {
            popup.show(panel, e.getX(), e.getY());
        }
    }
});
add(panel);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (240,
        29,
        3,
        'JPopupMenu-add;JPanel-addMouseListener,add',
        '',
        240,
        21.0,
        0.0,
        'JPopupMenu popup = new JPopupMenu();
popup.add(new JMenuItem("Copy"));
JPanel panel = new JPanel();
panel.addMouseListener(new MouseAdapter() {
    @Override
    public void mouseClicked(MouseEvent e) {
        if (e.getButton() == MouseEvent.BUTTON3) {
            popup.show(panel, e.getX(), e.getY());
        }
    }
});
add(panel);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (241,
        29,
        4,
        'JPopupMenu-getInvoker,show,add',
        '',
        241,
        21.0,
        0.0,
        'JPopupMenu popup = new JPopupMenu();
popup.add(new JMenuItem("Copy"));
JPanel panel = new JPanel();
JLabel label = new JLabel();
panel.addMouseListener(new MouseAdapter() {
    @Override
    public void mouseClicked(MouseEvent e) {
        if (e.getButton() == MouseEvent.BUTTON3) {
            popup.show(panel, e.getX(), e.getY());
            Component invoker = popup.getInvoker();
            label.setText("Source: " + invoker.getClass().getSimpleName());
        }
    }
});
add(panel);
add(label);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (242,
        29,
        5,
        'JPopupMenu-setBorder,add',
        '',
        242,
        21.0,
        0.0,
        'JPopupMenu popup = new JPopupMenu();
popup.add(new JMenuItem("Copy"));
Border border = BorderFactory.createLineBorder(Color.GRAY);
popup.setBorder(border);
JPanel panel = new JPanel();
panel.addMouseListener(new MouseAdapter() {
    @Override
    public void mouseClicked(MouseEvent e) {
        if (e.getButton() == MouseEvent.BUTTON3) {
            popup.show(panel, e.getX(), e.getY());
        }
    }
});
add(panel);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (243,
        29,
        6,
        'JPopupMenu-PopupMenuListener',
        '',
        243,
        22.0,
        0.0,
        'JPopupMenu popup = new JPopupMenu();
popup.add(new JMenuItem("Copy"));
JLabel label = new JLabel();
popup.addPopupMenuListener(new PopupMenuListener() {
    @Override
    public void popupMenuWillBecomeVisible(PopupMenuEvent e) {
        label.setText("Menu will be shown");
    }
    @Override
    public void popupMenuWillBecomeInvisible(PopupMenuEvent e) {
        label.setText("Menu will be hidden");
    }
    @Override
    public void popupMenuCanceled(PopupMenuEvent e) {
        label.setText("Menu canceled");
    }
});
JPanel panel = new JPanel();
panel.addMouseListener(new MouseAdapter() {
    @Override
    public void mouseClicked(MouseEvent e) {
        if (e.getButton() == MouseEvent.BUTTON3) {
            popup.show(panel, e.getX(), e.getY());
        }
    }
});
add(panel);');

