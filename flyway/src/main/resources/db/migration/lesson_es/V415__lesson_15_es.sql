-- Flyway migration V4: Lesson 15
-- This migration contains lesson, tasks, and documentation for lesson 15

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (119, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear una barra de desplazamiento</h2>
<p class="intro">JScrollBar permite desplazar contenido. Listas grandes, textos largos, imágenes grandes — todo esto requiere desplazamiento. Sin esto, el contenido no cabrá en pantalla.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>JScrollBar</code> — barra de desplazamiento</li>
  <li>Crear barra de desplazamiento horizontal y vertical</li>
  <li>Añadir barra de desplazamiento al formulario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La barra de desplazamiento es necesaria para desplazar contenido que no cabe en pantalla.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea barra de desplazamiento: <code>JScrollBar scrollBar = new JScrollBar(JScrollBar.VERTICAL, 0, 10, 0, 100);</code></li>
  <li>Añade al formulario: <code>add(scrollBar);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> VERTICAL para vertical, HORIZONTAL para horizontal</li>
  <li><strong>✅ Excelente:</strong> Especificar orientación, valor, extensión, min, max, usar JScrollPane en lugar de JScrollBar para desplazamiento automático</li>
  <li><strong>⚠️ Evita:</strong> Usar JScrollBar directamente — generalmente JScrollPane es mejor</li>
</ul>
<p><strong>Importante:</strong> value — valor actual. extent — área visible. min, max — valor mínimo y máximo.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá una barra de desplazamiento. Es una barra de desplazamiento que se puede mover. Generalmente se usa dentro de JScrollPane para desplazamiento automático.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (119, 'es', 'Barra de desplazamiento principiante: crea una barra de desplazamiento',
        'Crea una barra de desplazamiento vertical con rango 0-100 y añádela al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (120, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Orientación de barra de desplazamiento</h2>
<p class="intro">La orientación afecta la apariencia de la barra de desplazamiento. Horizontal — para desplazar por ancho, vertical — por alto. Puedes elegir orientación adecuada para el contenido.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setOrientation(int)</code> — establecer orientación</li>
  <li>Constantes <code>HORIZONTAL</code> y <code>VERTICAL</code></li>
  <li>Barra de desplazamiento horizontal y vertical</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Elegir orientación permite adaptar la barra de desplazamiento para diversas direcciones de desplazamiento de contenido.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece orientación: <code>scrollBar.setOrientation(JScrollBar.HORIZONTAL);</code></li>
  <li>O vertical: <code>scrollBar.setOrientation(JScrollBar.VERTICAL);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> HORIZONTAL para horizontal, VERTICAL para vertical</li>
  <li><strong>✅ Excelente:</strong> Elegir orientación según el contenido, usar para desplazar en la dirección necesaria</li>
  <li><strong>⚠️ Evita:</strong> Usar orientación incorrecta</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La barra de desplazamiento tendrá la orientación establecida. Horizontal — de izquierda a derecha, vertical — de arriba hacia abajo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (120, 'es', 'Barra de desplazamiento maestra: establece orientación',
        'Crea una barra de desplazamiento, establece orientación horizontal mediante setOrientation(JScrollBar.HORIZONTAL)')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (121, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Rango de barra de desplazamiento</h2>
<p class="intro">El rango define los límites del desplazamiento. Puedes establecer cualquier rango según el tamaño del contenido. Sin rango, el desplazamiento no tendrá sentido.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setMinimum(int)</code> — establecer mínimo</li>
  <li>El método <code>setMaximum(int)</code> — establecer máximo</li>
  <li>Gestionar rango de desplazamiento</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El rango define los límites del desplazamiento y permite adaptar la barra de desplazamiento para diversos tamaños de contenido.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece mínimo: <code>scrollBar.setMinimum(0);</code></li>
  <li>Establece máximo: <code>scrollBar.setMaximum(1000);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMinimum()</code> y <code>setMaximum()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar constructor JScrollBar(orientation, value, extent, min, max), usar valores razonables, usar para diferentes tamaños de contenido</li>
  <li><strong>⚠️ Evita:</strong> Establecer mínimo mayor que máximo</li>
</ul>
<p><strong>Importante:</strong> <code>getMinimum()</code> — obtener mínimo. <code>getMaximum()</code> — obtener máximo.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La barra de desplazamiento tendrá el rango establecido. El valor estará limitado por este rango.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (121, 'es', 'Barra de desplazamiento maestra: establece valor mínimo y máximo',
        'Crea una barra de desplazamiento, establece mínimo 0 y máximo 1000 mediante setMinimum() y setMaximum()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (122, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Valor actual de barra de desplazamiento</h2>
<p class="intro">El valor actual define la posición del desplazamiento. Puedes establecer la posición programáticamente, desplazar al lugar necesario. Sin gestionar la posición, el desplazamiento será solo manual.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setValue(int)</code> — establecer valor</li>
  <li>El método <code>getValue()</code> — obtener valor</li>
  <li>Gestionar posición de desplazamiento</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Gestionar el valor actual permite controlar programáticamente la posición del desplazamiento.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece valor: <code>scrollBar.setValue(500);</code></li>
  <li>Obtén valor: <code>int value = scrollBar.getValue();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setValue()</code> para establecer, <code>getValue()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Desplazar programáticamente al lugar necesario, usar para desplazamiento automático</li>
  <li><strong>⚠️ Evita:</strong> Establecer valor fuera del rango</li>
</ul>
<p><strong>Importante:</strong> El valor debe estar en el rango [mínimo, máximo]. Usa para desplazamiento automático.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La barra de desplazamiento se establecerá en la posición especificada. El control deslizante se moverá al valor especificado. Si está conectado al contenido, el contenido se desplazará.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (122, 'es', 'Barra de desplazamiento maestra: establece valor actual',
        'Crea una barra de desplazamiento, establece valor 500 mediante setValue()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (123, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Incremento unitario de barra de desplazamiento</h2>
<p class="intro">El incremento unitario define la precisión del desplazamiento. Puedes establecer cuántas unidades desplazar al hacer clic en las flechas. Sin establecer, el incremento será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setUnitIncrement(int)</code> — establecer incremento unitario</li>
  <li>Desplazar por una unidad</li>
  <li>Gestionar precisión del desplazamiento</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El incremento unitario permite configurar la precisión del desplazamiento al usar las flechas de la barra de desplazamiento.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece incremento unitario: <code>scrollBar.setUnitIncrement(10);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setUnitIncrement()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar valores razonables, usar para desplazamiento preciso, configurar según el contenido</li>
  <li><strong>⚠️ Evita:</strong> Incremento demasiado grande o pequeño</li>
</ul>
<p><strong>Importante:</strong> <code>getUnitIncrement()</code> — obtener incremento unitario.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al hacer clic en las flechas, la barra de desplazamiento se desplazará por el incremento establecido. Puedes configurar la precisión del desplazamiento.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (123, 'es', 'Barra de desplazamiento maestra: establece incremento unitario',
        'Crea una barra de desplazamiento, establece incremento unitario 10 mediante setUnitIncrement()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (124, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Incremento de bloque de barra de desplazamiento</h2>
<p class="intro">El incremento de bloque define el desplazamiento rápido. Puedes establecer cuántas unidades desplazar al hacer clic en el área de la barra de desplazamiento. Sin establecer, el incremento será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setBlockIncrement(int)</code> — establecer incremento de bloque</li>
  <li>Desplazar por bloque</li>
  <li>Gestionar desplazamiento rápido</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El incremento de bloque permite configurar el desplazamiento rápido al hacer clic en el área de la barra de desplazamiento.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece incremento de bloque: <code>scrollBar.setBlockIncrement(50);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setBlockIncrement()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar valores razonables, usar para desplazamiento rápido, configurar según el contenido</li>
  <li><strong>⚠️ Evita:</strong> Incremento demasiado grande o pequeño</li>
</ul>
<p><strong>Importante:</strong> <code>getBlockIncrement()</code> — obtener incremento de bloque.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al hacer clic en el área de la barra de desplazamiento, se desplazará por el bloque establecido. Puedes configurar el desplazamiento rápido.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (124, 'es', 'Barra de desplazamiento maestra: establece incremento de bloque',
        'Crea una barra de desplazamiento, establece incremento de bloque 50 mediante setBlockIncrement()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (125, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Colores de barra de desplazamiento</h2>
<p class="intro">Los colores mejoran la apariencia visual. Puedes establecer color del control deslizante, color de fondo, hacer la barra de desplazamiento notable. Sin establecer, los colores serán estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setForeground(Color)</code> — color del control deslizante</li>
  <li>El método <code>setBackground(Color)</code> — color de fondo</li>
  <li>Personalizar apariencia</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Establecer colores permite mejorar la apariencia visual y hacer la barra de desplazamiento más notable.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece color del control deslizante: <code>scrollBar.setForeground(Color.BLUE);</code></li>
  <li>Establece color de fondo: <code>scrollBar.setBackground(Color.LIGHT_GRAY);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setForeground()</code> para control deslizante, <code>setBackground()</code> para fondo</li>
  <li><strong>✅ Excelente:</strong> Usar constantes Color, usar <code>new Color()</code> para colores personalizados</li>
  <li><strong>⚠️ Evita:</strong> Usar colores demasiado brillantes</li>
</ul>
<p><strong>Importante:</strong> Color.BLUE, Color.GREEN, Color.RED — colores estándar. <code>new Color(r, g, b)</code> — color personalizado.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La barra de desplazamiento tendrá los colores establecidos. El control deslizante será de un color, el fondo — de otro. Puedes mejorar la apariencia visual.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (125, 'es', 'Barra de desplazamiento maestra: establece colores',
        'Crea una barra de desplazamiento, establece color del control deslizante Color.BLUE mediante setForeground()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (126, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Tamaño de barra de desplazamiento</h2>
<p class="intro">El tamaño afecta el diseño. Puedes establecer el tamaño necesario, mejorar la ubicación. Sin establecer, el tamaño será automático.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setPreferredSize(Dimension)</code> — establecer tamaño</li>
  <li>Gestionar tamaño de barra de desplazamiento</li>
  <li>Mejorar diseño</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Establecer tamaño permite mejorar el diseño de la interfaz y ubicación de elementos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece tamaño: <code>scrollBar.setPreferredSize(new Dimension(20, 200));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setPreferredSize()</code> para establecer, Dimension para tamaño</li>
  <li><strong>✅ Excelente:</strong> Usar para diseño, mejorar ubicación</li>
  <li><strong>⚠️ Evita:</strong> Tamaño demasiado pequeño o grande</li>
</ul>
<p><strong>Importante:</strong> Haz el tamaño razonable. El gestor de diseño lo considerará al ubicar.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La barra de desplazamiento tendrá el tamaño establecido. El gestor de diseño lo considerará al ubicar.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (126, 'es', 'Barra de desplazamiento maestra: establece tamaño',
        'Crea una barra de desplazamiento, establece tamaño 20x200 mediante setPreferredSize(new Dimension(20, 200))')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (127, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Sugerencia de barra de desplazamiento</h2>
<p class="intro">La sugerencia ayuda al usuario. Puedes mostrar información adicional, explicar el propósito, mejorar la comprensión. Sin sugerencia, el usuario puede no entender para qué es la barra de desplazamiento.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setToolTipText(String)</code> — establecer sugerencia</li>
  <li>Mostrar información al pasar el ratón</li>
  <li>Mejorar experiencia del usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La sugerencia mejora la experiencia del usuario, proporcionando información adicional al pasar el ratón.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece sugerencia: <code>scrollBar.setToolTipText("Desplazar contenido");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setToolTipText()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar sugerencias informativas, actualizar sugerencia cuando cambie la posición, usar para ayudar al usuario</li>
  <li><strong>⚠️ Evita:</strong> Sugerencias demasiado largas</li>
</ul>
<p><strong>Importante:</strong> <code>getToolTipText()</code> — obtener sugerencia. Actualiza cuando cambie la posición.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al pasar el ratón, aparecerá la sugerencia. Es una sugerencia emergente con información. Puedes mejorar la experiencia del usuario.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (127, 'es', 'Barra de desplazamiento maestra: añade sugerencia',
        'Crea una barra de desplazamiento, establece sugerencia "Desplazar contenido" mediante setToolTipText()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (128, 'es', '<div class="lesson-header">
<h2>🎮 Lección 10: Manejar cambios de barra de desplazamiento</h2>
<p class="intro">Manejar cambios permite reaccionar al desplazamiento. Puedes actualizar otros componentes, realizar acciones al cambiar la posición. Sin manejo, no puedes reaccionar a los cambios.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La interfaz <code>AdjustmentListener</code> — oyente de cambios</li>
  <li>El método <code>addAdjustmentListener()</code> — añadir oyente</li>
  <li>Reaccionar a cambio de posición</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Manejar cambios permite sincronizar la interfaz y reaccionar al desplazamiento.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Añade oyente: <code>scrollBar.addAdjustmentListener(e -> {<br>
&nbsp;&nbsp;int value = scrollBar.getValue();<br>
&nbsp;&nbsp;label.setText("Posición: " + value);<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addAdjustmentListener()</code> para manejar</li>
  <li><strong>✅ Excelente:</strong> Usar <code>getValue()</code> para obtener valor, actualizar otros componentes, realizar acciones al cambiar la posición</li>
  <li><strong>⚠️ Evita:</strong> Ignorar cambios</li>
</ul>
<p><strong>Importante:</strong> Usa para sincronizar componentes de la interfaz.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al cambiar la posición, se activará el manejador. Puedes manejar el cambio y actualizar otros componentes.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (128, 'es', 'Barra de desplazamiento maestra: maneja cambios',
        'Crea una barra de desplazamiento, añade AdjustmentListener, obtén valor mediante getValue(), muéstralo')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Spanish)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
