-- Flyway migration V113: Lesson 13 tasks
-- Extracted from V14__lesson_13_ru.sql
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating, solution)
VALUES (107,
        13,
        2,
        'JSlider-setMajorTickSpacing,setPaintTicks,setPaintLabels,add',
        '',
        107,
        20.0,
        0.0,
        'JSlider slider = new JSlider(0, 100, 50);
slider.setMajorTickSpacing(10);
slider.setPaintTicks(true);
slider.setPaintLabels(true);
add(slider);');

