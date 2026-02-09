-- Flyway migration V101: Lesson 1 tasks
-- Title and question fields removed

INSERT INTO task (id, id_lesson, task_number, answer, imports, id_documentation, difficult, rating)
VALUES (1, 1, 0, '', '', 1, 0.0, 0.0);

