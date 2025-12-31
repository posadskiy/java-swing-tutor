-- Flyway migration V4: Lesson 34
-- This migration contains lesson, tasks, and documentation for lesson 34

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

-- Task 1: Message Dialog
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (287, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Mostrar Mensaje al Usuario</h2>
<p class="intro">Las ventanas de diálogo informan al usuario. Error, advertencia, información — todo esto requiere diálogo. Sin diálogos, el usuario no sabrá sobre eventos importantes.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>JOptionPane</code> — ventanas de diálogo</li>
  <li>Método <code>showMessageDialog()</code> — mostrar mensaje</li>
  <li>Tipos de mensaje: INFORMATION, WARNING, ERROR, QUESTION, PLAIN</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Las ventanas de diálogo son necesarias para informar al usuario sobre eventos importantes y estados de la aplicación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Muestra mensaje de información: <code>JOptionPane.showMessageDialog(null, "¡Hola, mundo!", "Título", JOptionPane.INFORMATION_MESSAGE);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>INFORMATION_MESSAGE</code> para información</li>
  <li><strong>✅ Excelente:</strong> Usar <code>WARNING_MESSAGE</code> para advertencias, usar <code>ERROR_MESSAGE</code> para errores, usar <code>QUESTION_MESSAGE</code> para preguntas, especificar componente padre en lugar de <code>null</code></li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá una ventana de diálogo con mensaje. La ventana será modal — necesitas cerrarla antes de continuar el trabajo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (287, 'es', 'Diálogo Principiante: Mostrar Mensaje',
        'Muestra ventana de diálogo de información con texto "¡Hola, mundo!" y título "Saludo"')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 2: Confirmation Dialog
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (288, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Solicitar Confirmación</h2>
<p class="intro">Los diálogos de confirmación protegen de errores. Eliminar archivo, salir del programa, guardar cambios — todo esto requiere confirmación. Sin confirmación, el usuario puede realizar accidentalmente acción irreversible.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>showConfirmDialog()</code> — diálogo de confirmación</li>
  <li>Tipos de opción: YES_NO_OPTION, YES_NO_CANCEL_OPTION, OK_CANCEL_OPTION</li>
  <li>Resultados: YES_OPTION, NO_OPTION, CANCEL_OPTION, CLOSED_OPTION</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los diálogos de confirmación son necesarios para prevenir acciones irreversibles accidentales.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Muestra diálogo de confirmación: <code>int result = JOptionPane.showConfirmDialog(null, "¿Estás seguro?", "Confirmación", JOptionPane.YES_NO_OPTION);</code></li>
  <li>Verifica resultado: <code>if (result == JOptionPane.YES_OPTION) {<br>
&nbsp;&nbsp;label.setText("Usuario eligió Sí");<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>YES_NO_OPTION</code> para elección simple</li>
  <li><strong>✅ Excelente:</strong> Usar <code>YES_NO_CANCEL_OPTION</code> para tres opciones, usar <code>OK_CANCEL_OPTION</code> para confirmación de acción, verificar resultado antes de ejecutar acción</li>
</ul>
<p><strong>Importante:</strong> Siempre verifica resultado antes de ejecutar acción. Usa textos de pregunta claros.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un diálogo con botones "Sí" y "No". Puedes elegir opción, y se devolverá resultado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (288, 'es', 'Diálogo Maestro: Pedir Confirmación',
        'Muestra diálogo de confirmación con pregunta "¿Estás seguro?" y verifica si usuario eligió "Sí"')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 3: Input Dialog
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (289, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Obtener Entrada del Usuario</h2>
<p class="intro">Los diálogos de entrada obtienen datos del usuario. Nombre, contraseña, configuraciones — todo esto requiere entrada. Sin diálogo de entrada, necesitas crear ventanas separadas.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>showInputDialog()</code> — diálogo de entrada</li>
  <li>Obtener texto del usuario</li>
  <li>Manejar cancelación (devuelve <code>null</code>)</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los diálogos de entrada son necesarios para obtener datos del usuario sin crear ventanas separadas.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Muestra diálogo de entrada: <code>String name = JOptionPane.showInputDialog(null, "Ingresa tu nombre:", "Entrada", JOptionPane.QUESTION_MESSAGE);</code></li>
  <li>Verifica resultado: <code>if (name != null && !name.isEmpty()) {<br>
&nbsp;&nbsp;label.setText("¡Hola, " + name + "!");<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Verificar para <code>null</code> (usuario presionó Cancelar)</li>
  <li><strong>✅ Excelente:</strong> Verificar para cadena vacía (usuario no ingresó nada), usar valor inicial, usar lista desplegable en lugar de campo de texto</li>
</ul>
<p><strong>Importante:</strong> Siempre verifica para <code>null</code> y cadena vacía.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un diálogo con campo de texto. Puedes ingresar texto y presionar OK. El texto ingresado será devuelto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (289, 'es', 'Diálogo Maestro: Obtener Entrada del Usuario',
        'Muestra diálogo de entrada con pregunta "Ingresa tu nombre:" y muestra resultado en consola')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 4: Option Dialog
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (290, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Crear Diálogo con Botones Personalizados</h2>
<p class="intro">Las opciones personalizadas dan más control. Puedes crear tus propias opciones de respuesta, usar iconos, configurar apariencia. Sin opciones personalizadas, limitado a botones estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>showOptionDialog()</code> — diálogo con opciones personalizadas</li>
  <li>Array de opciones para botones</li>
  <li>Índice de opción seleccionada</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Las opciones personalizadas son necesarias para crear diálogos con opciones de respuesta no estándar.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea array de opciones: <code>String[] options = {"Guardar", "Cancelar", "No guardar"};</code></li>
  <li>Muestra diálogo: <code>int choice = JOptionPane.showOptionDialog(null, "¿Qué hacer?", "Elección", JOptionPane.YES_NO_CANCEL_OPTION, JOptionPane.QUESTION_MESSAGE, null, options, options[0]);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Nombres de opciones claros</li>
  <li><strong>✅ Excelente:</strong> Especificar opción por defecto (último parámetro), usar iconos para opciones, verificar índice de opción seleccionada</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un diálogo con botones personalizados. Puedes elegir una de las opciones. Se devolverá el índice de la opción seleccionada.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (290, 'es', 'Diálogo Maestro: Crear Botones Personalizados',
        'Crea diálogo con tres opciones: "Guardar", "Cancelar", "No guardar" y muestra índice de opción seleccionada')
ON CONFLICT (task_id, language_code) DO NOTHING;
