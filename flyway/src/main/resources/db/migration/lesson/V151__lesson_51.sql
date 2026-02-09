-- Flyway migration V151: Lesson 51 tasks
-- Extracted from V52__lesson_51_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (448,
        51,
        1,
        'MyComponent-setPreferredSize,paintComponent,add',
        '',
        448,
        21.0,
        0.0,
        'class MyComponent extends JComponent {
    public MyComponent() {
        setPreferredSize(new Dimension(200, 100));
    }
    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
    }
}
MyComponent comp = new MyComponent();
add(comp);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (449,
        51,
        2,
        'MyComponent-setPreferredSize,add',
        '',
        449,
        20.0,
        0.0,
        'class MyComponent extends JComponent {
    public MyComponent() {
        setPreferredSize(new Dimension(300, 200));
    }
}
MyComponent comp = new MyComponent();
add(comp);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (450,
        51,
        3,
        'MyComponent-addMouseListener,add',
        '',
        450,
        21.0,
        0.0,
        'class MyComponent extends JComponent {
    public MyComponent() {
        JLabel label = new JLabel();
        addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                label.setText("Click!");
            }
        });
        add(label);
    }
}
MyComponent comp = new MyComponent();
add(comp);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (451,
        51,
        4,
        'JComponent-repaint,add',
        '',
        451,
        21.0,
        0.0,
        'class MyComponent extends JComponent {
    private String text = "Text";
    
    public String getText() {
        return text;
    }
    
    public void setText(String text) {
        this.text = text;
        repaint();
    }
}
MyComponent comp = new MyComponent();
add(comp);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (452,
        51,
        5,
        'JComponent-setToolTipText,add',
        '',
        452,
        18.0,
        0.0,
        'class MyComponent extends JComponent {
    public MyComponent() {
        setToolTipText("Custom component");
    }
}
MyComponent comp = new MyComponent();
add(comp);');

