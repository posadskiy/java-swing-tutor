-- Flyway migration V150: Lesson 50 tasks
-- Extracted from V51__lesson_50_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (441,
        50,
        1,
        'MyComponent-paintComponent,drawString,add',
        '',
        441,
        20.0,
        0.0,
        'class MyComponent extends JComponent {
    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        g.drawString("Hello!", 10, 20);
    }
}
MyComponent comp = new MyComponent();
add(comp);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (442,
        50,
        2,
        'Graphics2D-setRenderingHint,add',
        '',
        442,
        21.0,
        0.0,
        'class MyComponent extends JComponent {
    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        Graphics2D g2d = (Graphics2D) g;
        g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
    }
}
MyComponent comp = new MyComponent();
add(comp);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (443,
        50,
        3,
        'Graphics2D-fillRect',
        '',
        443,
        21.0,
        0.0,
        'class MyComponent extends JComponent {
    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        Graphics2D g2d = (Graphics2D) g;
        g2d.fillRect(10, 10, 100, 50);
    }
}
MyComponent comp = new MyComponent();
add(comp);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (444,
        50,
        4,
        'JComponent-paintComponent',
        '',
        444,
        21.0,
        0.0,
        'class MyComponent extends JComponent {
    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        Graphics2D g2d = (Graphics2D) g;
        g2d.setColor(Color.RED);
        g2d.fillRect(10, 10, 100, 50);
    }
}
MyComponent comp = new MyComponent();
add(comp);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (445,
        50,
        5,
        'JComponent-paintComponent',
        '',
        445,
        22.0,
        0.0,
        'class MyComponent extends JComponent {
    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        Graphics2D g2d = (Graphics2D) g;
        GradientPaint gradient = new GradientPaint(0, 0, Color.RED, 100, 0, Color.BLUE);
        g2d.setPaint(gradient);
        g2d.fillRect(0, 0, 100, 50);
    }
}
MyComponent comp = new MyComponent();
add(comp);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (446,
        50,
        6,
        'JComponent-paintComponent',
        '',
        446,
        22.0,
        0.0,
        'class MyComponent extends JComponent {
    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        Graphics2D g2d = (Graphics2D) g;
        try {
            Image image = ImageIO.read(new File("image.png"));
            g2d.drawImage(image, 10, 10, this);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
MyComponent comp = new MyComponent();
add(comp);');

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (447,
        50,
        7,
        'JComponent-repaint',
        '',
        447,
        20.0,
        0.0,
        'class MyComponent extends JComponent {
    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        g.drawString("Hello!", 10, 20);
    }
}
MyComponent comp = new MyComponent();
add(comp);
comp.repaint();');

