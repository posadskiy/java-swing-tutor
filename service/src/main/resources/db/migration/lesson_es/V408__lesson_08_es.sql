-- Flyway migration V4: Lesson 8
-- This migration contains lesson, tasks, and documentation for lesson 8

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (72, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear un botón de radio</h2>
<p class="intro">Los botones de radio (<code>JRadioButton</code>) permiten seleccionar una opción de varias. "Masculino/Femenino", "Sí/No", "Fácil/Medio/Difícil" — todo esto se implementa a través de botones de radio. Puedes seleccionar solo una opción de un grupo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>JRadioButton</code> — botón de radio para selección única</li>
  <li>Crear un botón de radio</li>
  <li>Agrupar botones de radio con <code>ButtonGroup</code></li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los botones de radio permiten hacer una selección única de varias opciones. Sin ellos, el usuario no puede hacer una selección única.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea un botón de radio: <code>JRadioButton radio = new JRadioButton("Opción 1");</code></li>
  <li>Añade al formulario: <code>add(radio);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Crear con texto: <code>new JRadioButton("Texto")</code></li>
  <li><strong>✅ Excelente:</strong> Agrupar botones de radio relacionados mediante <code>ButtonGroup</code></li>
  <li><strong>⚠️ Importante:</strong> Sin grupo se pueden seleccionar varios — usa <code>ButtonGroup</code></li>
</ul>
<p><strong>Importante:</strong> Los botones de radio deben estar en un grupo para selección única. Crear grupo: <code>ButtonGroup group = new ButtonGroup();</code>. Añadir al grupo: <code>group.add(radio);</code>. En un grupo, solo se puede seleccionar un botón. Usa textos claros para cada opción.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un botón de radio en el formulario. Es un botón redondo con un punto dentro (si está seleccionado) o vacío (si no está seleccionado). El usuario puede hacer clic para seleccionar una opción.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (72, 'es', 'Botón de radio principiante: crea un interruptor de selección',
        'Crea un botón de radio con texto "Opción 1" y añádelo al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (73, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Grupo de botones de radio</h2>
<p class="intro">El grupo (<code>ButtonGroup</code>) asegura selección única. Sin un grupo, se pueden seleccionar varios botones de radio simultáneamente — esto es incorrecto. El grupo garantiza que solo se seleccione una opción.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>ButtonGroup</code> — grupo para botones de radio</li>
  <li>Añadir botones de radio a un grupo</li>
  <li>Selección única en un grupo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El grupo asegura selección única de varias opciones. Esto es crítico para el funcionamiento correcto de los botones de radio.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea un grupo: <code>ButtonGroup group = new ButtonGroup();</code></li>
  <li>Crea botones de radio: <code>JRadioButton radio1 = new JRadioButton("Opción 1");</code><br><code>JRadioButton radio2 = new JRadioButton("Opción 2");</code></li>
  <li>Añade al grupo: <code>group.add(radio1);</code><br><code>group.add(radio2);</code></li>
  <li>Añade al formulario: <code>add(radio1);</code><br><code>add(radio2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Crear grupo, luego añadir botones</li>
  <li><strong>✅ Excelente:</strong> Todos los botones de radio relacionados en un grupo</li>
  <li><strong>⚠️ Importante:</strong> No añadas botón a varios grupos — el comportamiento es impredecible</li>
  <li><strong>❌ Mal:</strong> Olvidar crear grupo — se pueden seleccionar varios</li>
</ul>
<p><strong>Importante:</strong> Crea grupo antes de crear botones de radio. Añade todos los botones de radio relacionados a un grupo. En un grupo, solo se puede seleccionar un botón. Al seleccionar un nuevo botón, el anterior se deselecciona automáticamente. Puedes seleccionar programáticamente: <code>radio1.setSelected(true);</code>.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Los botones de radio funcionarán como un grupo. Al seleccionar un botón, el otro se deseleccionará automáticamente. Solo se puede seleccionar una opción del grupo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (73, 'es', 'Grupo de botones: combina botones de radio en un grupo',
        'Crea un grupo, dos botones de radio, añádelos al grupo y al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Spanish)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
