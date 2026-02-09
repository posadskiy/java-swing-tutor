-- Flyway migration V4: Lesson 5
-- This migration contains lesson, tasks, and documentation for lesson 5

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (49, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear un área de texto</h2>
<p class="intro">Las áreas de texto (<code>JTextArea</code>) son necesarias para textos largos. Comentarios, descripciones, notas, mensajes — todo esto requiere entrada de múltiples líneas. A diferencia de <code>JTextField</code>, aquí puedes escribir en múltiples líneas.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>JTextArea</code> — campo de múltiples líneas para entrada de texto</li>
  <li>Crear un área de texto</li>
  <li>Diferencia entre campos de una línea y múltiples líneas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Las áreas de texto son necesarias para textos largos. Sin áreas de texto, el usuario no puede introducir texto largo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea un área de texto: <code>JTextArea area = new JTextArea();</code></li>
  <li>Añade al formulario: <code>add(area);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Crear con tamaños: <code>new JTextArea(5, 20)</code> — 5 filas, 20 caracteres</li>
  <li><strong>✅ Excelente:</strong> Crear con texto inicial: <code>new JTextArea("Texto")</code></li>
  <li><strong>⚠️ Aceptable:</strong> <code>add(new JTextArea());</code> — no puedes configurar después</li>
</ul>
<p><strong>Importante:</strong> El área de texto puede contener muchas líneas de texto. Puedes establecer tamaños en el constructor: <code>new JTextArea(filas, columnas)</code>. Usualmente se usa junto con <code>JScrollPane</code> para desplazamiento. El texto se ajusta automáticamente (si el ajuste está habilitado). Usa para comentarios, descripciones, textos largos.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un campo de texto de múltiples líneas en el formulario. Esta es un área rectangular grande donde puedes introducir texto en múltiples líneas. El usuario puede hacer clic y comenzar a escribir.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (49, 'es', 'Área de texto principiante: crea un campo de múltiples líneas',
        'Crea un área de texto y añádela al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (50, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Ajuste de líneas</h2>
<p class="intro">El ajuste de líneas hace el texto legible. Sin ajuste, una línea larga se irá más allá del límite del área y necesitará desplazarse horizontalmente. Con ajuste, el texto se ajusta automáticamente y es más fácil de leer.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setLineWrap(boolean wrap)</code> — habilitar ajuste de líneas</li>
  <li>El método <code>setWrapStyleWord(boolean wrap)</code> — ajuste por palabras</li>
  <li>Ajuste automático de líneas largas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El ajuste de líneas hace el texto legible sin desplazamiento horizontal. Esto mejora la experiencia del usuario al trabajar con textos largos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea un área de texto: <code>JTextArea area = new JTextArea();</code></li>
  <li>Habilita ajuste de líneas: <code>area.setLineWrap(true);</code><br><code>area.setWrapStyleWord(true);</code></li>
  <li>Añade al formulario: <code>add(area);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> <code>setLineWrap(true)</code> + <code>setWrapStyleWord(true)</code> — ajuste por palabras</li>
  <li><strong>✅ Excelente:</strong> Ajuste por palabras — las palabras no se rompen</li>
  <li><strong>⚠️ Evita:</strong> Solo <code>setLineWrap(true)</code> — las palabras pueden romperse</li>
  <li><strong>❌ Mal:</strong> Sin ajuste — las líneas largas son incómodas</li>
</ul>
<p><strong>Importante:</strong> Usualmente ambos métodos se usan juntos. El ajuste hace el texto legible sin desplazamiento horizontal. Recomendado para todas las áreas de texto.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Las líneas largas se ajustarán automáticamente. Si el texto no cabe en el ancho del área, se ajustará a una nueva línea. Las palabras no se romperán (si <code>setWrapStyleWord(true)</code> está habilitado).</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (50, 'es', 'Ajuste de líneas: habilita ajuste automático',
        'Crea un área de texto, habilita ajuste por palabras y añádela al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Spanish)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
