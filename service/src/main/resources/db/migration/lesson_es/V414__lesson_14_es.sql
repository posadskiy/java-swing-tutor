-- Flyway migration V4: Lesson 14
-- This migration contains lesson, tasks, and documentation for lesson 14

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (108, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear una barra de progreso</h2>
<p class="intro">Las barras de progreso (<code>JProgressBar</code>) muestran el progreso. Descargas de archivos, instalación de programas, procesamiento de datos — todo esto requiere mostrar progreso. Sin ella, el usuario no sabe cuánto queda.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>JProgressBar</code> — indicador de progreso</li>
  <li>Crear una barra de progreso</li>
  <li>Mostrar progreso</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La barra de progreso informa al usuario sobre el progreso de la tarea y mejora la experiencia del usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea barra de progreso: <code>JProgressBar progressBar = new JProgressBar(0, 100);</code></li>
  <li>Establece valor: <code>progressBar.setValue(50);</code></li>
  <li>Añade al formulario: <code>add(progressBar);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Especificar valor mínimo y máximo</li>
  <li><strong>✅ Excelente:</strong> Usar <code>setValue()</code> para establecer progreso, usar <code>setStringPainted(true)</code> para mostrar porcentaje</li>
  <li><strong>⚠️ Evita:</strong> No actualizar valor — el usuario no verá progreso</li>
</ul>
<p><strong>Importante:</strong> <code>getValue()</code> — obtener valor actual. <code>setIndeterminate(true)</code> — modo indeterminado (animación).</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá una barra de progreso. Es una barra que muestra progreso de 0 a 100. Puedes ver cuánto se ha hecho.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (108, 'es', 'Barra de progreso principiante: crea un indicador de progreso',
        'Crea una barra de progreso con rango 0-100, establece valor 50 y añádela al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (109, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Rango de barra de progreso</h2>
<p class="intro">El rango define los límites del progreso. Puedes establecer cualquier rango: 0-100 para porcentajes, 0-1000 para cantidad, 0-archivos para descarga. Sin rango, el progreso no tendrá sentido.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setMinimum(int)</code> — establecer mínimo</li>
  <li>El método <code>setMaximum(int)</code> — establecer máximo</li>
  <li>Gestionar rango de progreso</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El rango define los límites del progreso y permite adaptar la barra de progreso para diversas tareas.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece mínimo: <code>progressBar.setMinimum(0);</code></li>
  <li>Establece máximo: <code>progressBar.setMaximum(100);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMinimum()</code> y <code>setMaximum()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar constructor JProgressBar(min, max), usar valores razonables, usar para diferentes tareas</li>
  <li><strong>⚠️ Evita:</strong> Establecer mínimo mayor que máximo</li>
</ul>
<p><strong>Importante:</strong> <code>getMinimum()</code> — obtener mínimo. <code>getMaximum()</code> — obtener máximo.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La barra de progreso tendrá el rango establecido. El valor estará limitado por este rango.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (109, 'es', 'Barra de progreso maestra: establece valor mínimo y máximo',
        'Crea una barra de progreso, establece mínimo 0 y máximo 100 mediante setMinimum() y setMaximum()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (110, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Valor actual de barra de progreso</h2>
<p class="intro">El valor actual muestra el progreso. Puedes actualizar el valor a medida que avanza la tarea, mostrar progreso real. Sin actualización, la barra de progreso será estática.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setValue(int)</code> — establecer valor</li>
  <li>El método <code>getValue()</code> — obtener valor</li>
  <li>Gestionar progreso</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Actualizar el valor permite mostrar el progreso real de la tarea.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece valor: <code>progressBar.setValue(75);</code></li>
  <li>Obtén valor: <code>int value = progressBar.getValue();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setValue()</code> para establecer, <code>getValue()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Actualizar valor a medida que avanza la tarea, usar en bucles para mostrar progreso</li>
  <li><strong>⚠️ Evita:</strong> Establecer valor fuera del rango</li>
</ul>
<p><strong>Importante:</strong> El valor debe estar en el rango [mínimo, máximo]. Usa para mostrar progreso.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La barra de progreso se actualizará con el nuevo valor. La barra se llenará hasta el porcentaje especificado. Puedes ver el progreso real.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (110, 'es', 'Barra de progreso maestra: establece valor actual',
        'Crea una barra de progreso, establece valor 75 mediante setValue()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (111, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Orientación de barra de progreso</h2>
<p class="intro">La orientación afecta la apariencia de la barra de progreso. Horizontal — para áreas anchas, vertical — para estrechas. Puedes elegir orientación adecuada para la interfaz.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setOrientation(int)</code> — establecer orientación</li>
  <li>Constantes <code>HORIZONTAL</code> y <code>VERTICAL</code></li>
  <li>Barra de progreso horizontal y vertical</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Elegir orientación permite adaptar la barra de progreso para diversos diseños de interfaz.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece orientación: <code>progressBar.setOrientation(JProgressBar.HORIZONTAL);</code></li>
  <li>O vertical: <code>progressBar.setOrientation(JProgressBar.VERTICAL);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> HORIZONTAL para horizontal, VERTICAL para vertical</li>
  <li><strong>✅ Excelente:</strong> Elegir orientación según el espacio, usar para ahorrar espacio</li>
  <li><strong>⚠️ Evita:</strong> Usar vertical sin necesidad</li>
</ul>
<p><strong>Importante:</strong> HORIZONTAL — horizontal (por defecto). Elige según el espacio.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La barra de progreso tendrá la orientación establecida. Horizontal — de izquierda a derecha, vertical — de abajo hacia arriba.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (111, 'es', 'Barra de progreso maestra: establece orientación',
        'Crea una barra de progreso, establece orientación vertical mediante setOrientation(JProgressBar.VERTICAL)')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (112, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Cadena de barra de progreso</h2>
<p class="intro">La cadena muestra el progreso exacto. Puedes mostrar porcentaje, cantidad, estado. Sin cadena, el usuario ve solo la barra, sin saber el valor exacto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setStringPainted(boolean)</code> — mostrar cadena</li>
  <li>El método <code>setString(String)</code> — establecer cadena</li>
  <li>Mostrar texto en barra de progreso</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La cadena aumenta la informatividad de la barra de progreso, mostrando el valor exacto del progreso.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Habilita mostrar cadena: <code>progressBar.setStringPainted(true);</code></li>
  <li>(Opcional) Establece cadena personalizada: <code>progressBar.setString("50%");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setStringPainted(true)</code> para mostrar</li>
  <li><strong>✅ Excelente:</strong> Usar <code>setString()</code> para cadena personalizada, mostrar porcentaje automáticamente, mostrar estado de tarea</li>
  <li><strong>⚠️ Evita:</strong> Ocultar cadena sin necesidad</li>
</ul>
<p><strong>Importante:</strong> <code>getString()</code> — obtener cadena actual. Por defecto se muestra el porcentaje. Usa para informatividad.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá texto en la barra de progreso. Es porcentaje o cadena personalizada. Puedes ver el progreso exacto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (112, 'es', 'Barra de progreso maestra: muestra cadena con porcentaje',
        'Crea una barra de progreso, habilita mostrar cadena mediante setStringPainted(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (113, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Colores de barra de progreso</h2>
<p class="intro">Los colores mejoran la apariencia visual. Puedes establecer color de relleno, color de fondo, hacer la barra de progreso notable. Sin establecer, los colores serán estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setForeground(Color)</code> — color de relleno</li>
  <li>El método <code>setBackground(Color)</code> — color de fondo</li>
  <li>Personalizar apariencia</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Establecer colores permite mejorar la apariencia visual y hacer la barra de progreso más notable.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece color de relleno: <code>progressBar.setForeground(Color.GREEN);</code></li>
  <li>Establece color de fondo: <code>progressBar.setBackground(Color.LIGHT_GRAY);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setForeground()</code> para relleno, <code>setBackground()</code> para fondo</li>
  <li><strong>✅ Excelente:</strong> Usar constantes Color, usar <code>new Color()</code> para colores personalizados</li>
  <li><strong>⚠️ Evita:</strong> Usar colores demasiado brillantes</li>
</ul>
<p><strong>Importante:</strong> Color.GREEN, Color.BLUE, Color.RED — colores estándar. <code>new Color(r, g, b)</code> — color personalizado.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La barra de progreso tendrá los colores establecidos. El relleno será de un color, el fondo — de otro. Puedes mejorar la apariencia visual.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (113, 'es', 'Barra de progreso maestra: establece colores',
        'Crea una barra de progreso, establece color de relleno Color.GREEN mediante setForeground()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (114, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Fuente de barra de progreso</h2>
<p class="intro">La fuente mejora la apariencia visual del texto. Puedes establecer la fuente necesaria, tamaño, estilo, mejorar la legibilidad. Sin establecer, la fuente será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setFont(Font)</code> — establecer fuente</li>
  <li>Mejorar apariencia visual del texto</li>
  <li>Personalizar cadena</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Establecer fuente permite mejorar la apariencia visual y legibilidad del texto en la barra de progreso.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea fuente: <code>Font font = new Font("Arial", Font.BOLD, 14);</code></li>
  <li>Establece fuente: <code>progressBar.setFont(font);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setFont()</code> para establecer, <code>new Font()</code> para crear</li>
  <li><strong>✅ Excelente:</strong> Usar para mejorar apariencia y legibilidad</li>
  <li><strong>⚠️ Evita:</strong> Tamaño demasiado pequeño o grande</li>
</ul>
<p><strong>Importante:</strong> Haz el tamaño razonable para mejor legibilidad.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El texto en la barra de progreso estará con la fuente establecida. Puedes mejorar la apariencia visual.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (114, 'es', 'Barra de progreso maestra: establece fuente',
        'Crea una barra de progreso, crea fuente new Font("Arial", Font.BOLD, 14), establece mediante setFont()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (115, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Tamaño de barra de progreso</h2>
<p class="intro">El tamaño afecta el diseño. Puedes establecer el tamaño necesario, mejorar la ubicación. Sin establecer, el tamaño será automático.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setPreferredSize(Dimension)</code> — establecer tamaño</li>
  <li>Gestionar tamaño de barra de progreso</li>
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
  <li>Establece tamaño: <code>progressBar.setPreferredSize(new Dimension(300, 25));</code></li>
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
<p>La barra de progreso tendrá el tamaño establecido. El gestor de diseño lo considerará al ubicar.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (115, 'es', 'Barra de progreso maestra: establece tamaño',
        'Crea una barra de progreso, establece tamaño 300x25 mediante setPreferredSize(new Dimension(300, 25))')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (116, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Sugerencia de barra de progreso</h2>
<p class="intro">La sugerencia ayuda al usuario. Puedes mostrar información adicional, explicar el propósito, mejorar la comprensión. Sin sugerencia, el usuario puede no entender qué muestra la barra de progreso.</p>
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
  <li>Establece sugerencia: <code>progressBar.setToolTipText("Progreso de descarga: 50%");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setToolTipText()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar sugerencias informativas, actualizar sugerencia cuando cambie el progreso, usar para ayudar al usuario</li>
  <li><strong>⚠️ Evita:</strong> Sugerencias demasiado largas</li>
</ul>
<p><strong>Importante:</strong> <code>getToolTipText()</code> — obtener sugerencia. Actualiza cuando cambie el progreso.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al pasar el ratón, aparecerá la sugerencia. Es una sugerencia emergente con información. Puedes mejorar la experiencia del usuario.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (116, 'es', 'Barra de progreso maestra: añade sugerencia',
        'Crea una barra de progreso, establece sugerencia "Progreso de descarga" mediante setToolTipText()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (117, 'es', '<div class="lesson-header">
<h2>🎮 Lección 10: Modo indeterminado de barra de progreso</h2>
<p class="intro">El modo indeterminado muestra que el trabajo está en progreso. Cuando no sabes el progreso exacto (por ejemplo, descarga de internet), la animación muestra que el proceso está activo. Sin ella, el usuario no sabe si el programa está funcionando.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setIndeterminate(boolean)</code> — modo indeterminado</li>
  <li>Barra de progreso animada</li>
  <li>Usar para progreso desconocido</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El modo indeterminado es necesario para procesos con tiempo de ejecución desconocido, para mostrar al usuario que el proceso está activo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Habilita modo indeterminado: <code>progressBar.setIndeterminate(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Para progreso desconocido</li>
  <li><strong>✅ Excelente:</strong> Cambiar a modo determinado cuando el progreso sea conocido, usar para procesos con tiempo desconocido</li>
  <li><strong>⚠️ Evita:</strong> Usar para progreso conocido — mejor mostrar porcentaje</li>
</ul>
<p><strong>Importante:</strong> <code>setIndeterminate(false)</code> — volver al modo normal. Cuando el progreso sea conocido, cambia al modo normal. La animación muestra que el proceso está activo.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La barra de progreso comenzará a animarse. La barra se moverá de un lado a otro, mostrando que el trabajo está en progreso. Esta es una señal visual de actividad del proceso.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (117, 'es', 'Barra de progreso maestra: habilita modo indeterminado',
        'Crea una barra de progreso, habilita modo indeterminado mediante setIndeterminate(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (118, 'es', '<div class="lesson-header">
<h2>🎮 Lección 11: Manejar cambios de barra de progreso</h2>
<p class="intro">Manejar cambios permite reaccionar al progreso. Puedes actualizar otros componentes, realizar acciones al alcanzar cierto valor. Sin manejo, no puedes reaccionar a los cambios.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La interfaz <code>ChangeListener</code> — oyente de cambios</li>
  <li>El método <code>addChangeListener()</code> — añadir oyente</li>
  <li>Reaccionar a cambio de progreso</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Manejar cambios permite sincronizar la interfaz y reaccionar al progreso de la tarea.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Añade oyente: <code>progressBar.addChangeListener(e -> {<br>
&nbsp;&nbsp;int value = progressBar.getValue();<br>
&nbsp;&nbsp;label.setText("Progreso: " + value + "%");<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addChangeListener()</code> para manejar</li>
  <li><strong>✅ Excelente:</strong> Usar <code>getValue()</code> para obtener valor, actualizar otros componentes, realizar acciones al alcanzar valor</li>
  <li><strong>⚠️ Evita:</strong> Ignorar cambios</li>
</ul>
<p><strong>Importante:</strong> Usa para sincronizar componentes de la interfaz.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al cambiar el valor, se activará el manejador. Puedes manejar el cambio y actualizar otros componentes.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (118, 'es', 'Barra de progreso maestra: maneja cambios',
        'Crea una barra de progreso, añade ChangeListener, obtén valor mediante getValue(), muéstralo')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Spanish)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
