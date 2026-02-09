-- Flyway migration V4: Lesson 1
-- This migration contains lesson, tasks, and documentation for lesson 1

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (1, 'es', '<div class="lesson-header">
<h2>🎮 ¡Hola!</h2>
<p class="intro">¡Bienvenido al curso para aprender la biblioteca <strong>Java Swing</strong>! Aprenderemos a crear interfaces visuales de cualquier complejidad: ventanas, botones, deslizadores y mucho más.</p>
</div>

<section class="learning-objectives">
<h3>📚 Sobre el curso:</h3>
<ul>
  <li>Aprendizaje de la biblioteca Java Swing</li>
  <li>Creación de interfaces visuales para aplicaciones</li>
  <li>Dominio de componentes: ventanas, botones, campos de entrada y otros elementos</li>
</ul>
</section>

<section class="importance">
<h3>💎 Cómo trabajar con el curso:</h3>
<p>En esta ventana aparecerá información de referencia para completar las tareas. <strong>¡Es importante leer hasta el final y tratar de entender!</strong> A la izquierda está la ventana con la tarea.</p>
</section>

<section class="implementation">
<h3>⚔️ Primera tarea:</h3>
<p>Haz clic en el botón <strong>"Verificar"</strong> — la primera tarea se contará inmediatamente. Esto es un agradecimiento por leer este texto.</p>
</section>

<section class="result">
<h3>👀 ¿Listo para comenzar?</h3>
<p>¡Así que, comencemos! Hay mucho material interesante y útil por delante. ¡Buena suerte con tu aprendizaje!</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

-- Insert into translation table
INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (1, 'es', 'Introducción', '<p>Haz clic en el botón <strong>"Verificar"</strong>')
ON CONFLICT (task_id, language_code) DO NOTHING;
