-- Flyway migration V4: Lesson 17
-- This migration contains lesson, tasks, and documentation for lesson 17

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (141, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear ventana principal</h2>
<p class="intro">JFrame es la base de la aplicación. Todos los componentes se colocan en la ventana. Sin ventana no hay interfaz. La ventana define el tamaño, el título y el comportamiento de la aplicación.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>JFrame</code> — ventana principal de la aplicación</li>
  <li>Crear ventana</li>
  <li>Configurar ventana (tamaño, título, visibilidad)</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>JFrame es la base de cualquier aplicación Swing y contenedor para todos los componentes de la interfaz.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea ventana: <code>JFrame frame = new JFrame("Mi aplicación");</code></li>
  <li>Establece tamaño: <code>frame.setSize(800, 600);</code></li>
  <li>Haz visible: <code>frame.setVisible(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Establecer título en constructor</li>
  <li><strong>✅ Excelente:</strong> Establecer tamaño antes de mostrar, establecer operación de cierre: <code>setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);</code></li>
  <li><strong>⚠️ Importante:</strong> ¡No olvides <code>setVisible(true)</code> — la ventana no aparecerá!</li>
</ul>
<p><strong>Importante:</strong> Título: <code>new JFrame("Título")</code> o <code>frame.setTitle("Título")</code>. Centrado: <code>frame.setLocationRelativeTo(null);</code>. Cierre: <code>frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);</code>.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá la ventana de la aplicación. Es una ventana rectangular con título, marco y botones de control. Puedes añadir componentes a ella.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (141, 'es', 'Ventana principiante: crea ventana principal de la aplicación',
        'Crea ventana con título "Mi aplicación", tamaño 800x600 y hazla visible')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (142, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Crear barra de progreso</h2>
<p class="intro">JProgressBar muestra el progreso de ejecución. Carga de archivo, procesamiento de datos, ejecución de tarea — todo esto requiere mostrar progreso. Sin esto, el usuario no sabrá cuánto queda.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>JProgressBar</code> — barra de progreso</li>
  <li>Crear barra de progreso con rango</li>
  <li>Mostrar progreso</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La barra de progreso informa al usuario sobre el progreso de ejecución de la tarea y mejora la experiencia del usuario.</p>
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
  <li><strong>✅ Bien:</strong> Especificar min y max en constructor</li>
  <li><strong>✅ Excelente:</strong> Usar <code>setStringPainted(true)</code> para mostrar porcentaje, usar <code>setIndeterminate(true)</code> para modo indeterminado, actualizar valor mediante <code>setValue()</code></li>
  <li><strong>⚠️ Evita:</strong> No actualizar valor — el progreso no será visible</li>
</ul>
<p><strong>Importante:</strong> <code>getValue()</code> — obtener valor. <code>setStringPainted(boolean)</code> — mostrar/ocultar texto. <code>setIndeterminate(boolean)</code> — modo indeterminado.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá barra de progreso con relleno. La barra se llenará proporcionalmente al valor. Puedes mostrar porcentaje.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (142, 'es', 'Barra de progreso principiante: crea barra de progreso',
        'Crea JProgressBar con rango 0-100, establece valor 50, añade al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (143, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Operación de cierre de ventana</h2>
<p class="intro">La operación de cierre define el destino de la aplicación. Sin configuración correcta, la ventana puede cerrarse pero la aplicación continuará ejecutándose. O viceversa — la aplicación se cerrará cuando solo necesitas ocultar la ventana.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setDefaultCloseOperation(int operation)</code> — establecer operación de cierre</li>
  <li>Constantes: <code>EXIT_ON_CLOSE</code>, <code>HIDE_ON_CLOSE</code>, <code>DISPOSE_ON_CLOSE</code></li>
  <li>Gestionar comportamiento al cerrar ventana</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La operación de cierre define el comportamiento de la aplicación al cerrar la ventana y previene efectos no deseados.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea ventana: <code>JFrame frame = new JFrame("Aplicación");</code></li>
  <li>Establece operación de cierre: <code>frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);</code></li>
  <li>Haz visible: <code>frame.setVisible(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>EXIT_ON_CLOSE</code> para ventana principal — cierra la aplicación</li>
  <li><strong>✅ Excelente:</strong> <code>HIDE_ON_CLOSE</code> para ventanas hijas — oculta, no cierra, <code>DISPOSE_ON_CLOSE</code> — libera recursos</li>
  <li><strong>⚠️ Importante:</strong> Sin configuración se usa <code>HIDE_ON_CLOSE</code> — ¡la aplicación no se cerrará!</li>
</ul>
<p><strong>Importante:</strong> <code>DO_NOTHING_ON_CLOSE</code> — no hace nada (necesita manejador propio). Para ventana principal generalmente se usa <code>EXIT_ON_CLOSE</code>.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al cerrar la ventana, ocurrirá la acción especificada. Si elegiste <code>EXIT_ON_CLOSE</code>, la aplicación se cerrará completamente. Si <code>HIDE_ON_CLOSE</code> — la ventana se ocultará, pero la aplicación continuará ejecutándose.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (143, 'es', 'Operación de cierre: configura comportamiento al cerrar',
        'Crea ventana, establece operación de cierre EXIT_ON_CLOSE y hazla visible')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (144, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Mostrar porcentaje en barra de progreso</h2>
<p class="intro">Mostrar porcentaje hace el progreso claro. El usuario ve el valor exacto, no solo la barra. Sin esto, es difícil entender cuánto queda.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setStringPainted()</code> — mostrar texto</li>
  <li>El método <code>setString()</code> — establecer texto</li>
  <li>Mostrar porcentaje en barra de progreso</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Mostrar porcentaje aumenta la información de la barra de progreso y mejora la comprensión del progreso por parte del usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Habilita mostrar texto: <code>progressBar.setStringPainted(true);</code></li>
  <li>Establece texto (opcional): <code>progressBar.setString("50%");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setStringPainted(true)</code> para mostrar</li>
  <li><strong>✅ Excelente:</strong> Usar <code>setString()</code> para texto personalizado, calcular porcentaje automáticamente, mostrar información adicional</li>
  <li><strong>⚠️ Evita:</strong> Texto demasiado largo — puede no caber</li>
</ul>
<p><strong>Importante:</strong> Sin <code>setString()</code>, el porcentaje se muestra automáticamente. Texto corto es mejor.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá texto con porcentaje en la barra de progreso. Puedes mostrar valor exacto o texto personalizado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (144, 'es', 'Barra de progreso maestra: muestra porcentaje',
        'Habilita mostrar texto mediante setStringPainted(true), establece texto "50%" mediante setString()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (145, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Modo indeterminado de barra de progreso</h2>
<p class="intro">El modo indeterminado muestra que el proceso está en ejecución. Cuando el tiempo de ejecución exacto es desconocido, puedes mostrar animación. Sin esto, el usuario no sabrá que el proceso está funcionando.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setIndeterminate()</code> — modo indeterminado</li>
  <li>Crear barra de progreso animada</li>
  <li>Mostrar proceso sin progreso exacto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El modo indeterminado es necesario para procesos con tiempo de ejecución desconocido para mostrar al usuario que el proceso está activo.</p>
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
  <li><strong>✅ Usa:</strong> <code>setIndeterminate(true)</code> para animación</li>
  <li><strong>✅ Excelente:</strong> Cambiar a modo determinado cuando el progreso es conocido, usar para operaciones largas</li>
  <li><strong>⚠️ Evita:</strong> Usar siempre — el usuario no verá progreso</li>
</ul>
<p><strong>Importante:</strong> true — barra animada. false — modo normal con porcentaje. Usa cuando el progreso es desconocido. Cambia a determinado cuando el progreso es conocido.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La barra de progreso se volverá animada. La barra se moverá, mostrando que el proceso está en ejecución.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (145, 'es', 'Barra de progreso maestra: habilita modo indeterminado',
        'Habilita modo indeterminado mediante setIndeterminate(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (146, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Cadena de barra de progreso</h2>
<p class="intro">La cadena muestra información del progreso. Puedes mostrar porcentaje, texto, estado. Sin cadena, el usuario no verá el progreso exacto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setStringPainted()</code> — mostrar cadena</li>
  <li>El método <code>setString()</code> — establecer cadena</li>
  <li>Mostrar texto en barra de progreso</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La cadena aumenta la información de la barra de progreso, mostrando el valor exacto del progreso.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Habilita mostrar cadena: <code>progressBar.setStringPainted(true);</code></li>
  <li>O establece cadena personalizada: <code>progressBar.setString("Cargando...");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setStringPainted(true)</code> para mostrar</li>
  <li><strong>✅ Excelente:</strong> Usar <code>setString()</code> para cadena personalizada, mostrar porcentaje automáticamente, mostrar estado</li>
  <li><strong>⚠️ Evita:</strong> Cadena demasiado larga — puede ser ilegible</li>
</ul>
<p><strong>Importante:</strong> <code>getString()</code> — obtener cadena. Muestra porcentaje automáticamente. Usa para información.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá cadena en la barra de progreso. Puedes mostrar porcentaje o texto personalizado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (146, 'es', 'Barra de progreso maestra: muestra cadena',
        'Habilita mostrar cadena mediante setStringPainted(true), establece cadena "Cargando..." mediante setString()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (147, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Borde de barra de progreso</h2>
<p class="intro">El borde mejora la apariencia. Puedes mostrar marco alrededor de la barra de progreso, mejorar el diseño visual. Sin borde, la barra de progreso estará sin marco.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setBorderPainted()</code> — mostrar borde</li>
  <li>Crear barra de progreso visualmente diseñada</li>
  <li>Mejorar apariencia</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El borde mejora el diseño visual de la barra de progreso y la hace más notable.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Habilita mostrar borde: <code>progressBar.setBorderPainted(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setBorderPainted(true)</code> para mostrar</li>
  <li><strong>✅ Excelente:</strong> Usar para diseño visual, combinar con otras configuraciones</li>
  <li><strong>⚠️ Evita:</strong> Mostrar siempre borde — puede ser excesivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La barra de progreso tendrá borde. La barra de progreso estará con marco.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (147, 'es', 'Barra de progreso maestra: muestra borde', 'Habilita mostrar borde mediante setBorderPainted(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (148, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Barra de progreso indeterminada</h2>
<p class="intro">La barra de progreso indeterminada muestra el proceso. Puedes mostrar animación cuando el progreso es desconocido, mejorar la retroalimentación visual. Sin indeterminación, no puedes mostrar el proceso.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setIndeterminate()</code> — establecer indeterminación</li>
  <li>Crear barra de progreso animada</li>
  <li>Mejorar retroalimentación visual</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El modo indeterminado es necesario para procesos con tiempo de ejecución desconocido para mostrar al usuario que el proceso está activo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Haz indeterminada: <code>progressBar.setIndeterminate(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setIndeterminate(true)</code> para indeterminación</li>
  <li><strong>✅ Excelente:</strong> Usar para progreso desconocido, cambiar a determinado cuando el progreso es conocido, mejorar retroalimentación visual</li>
  <li><strong>⚠️ Evita:</strong> Siempre indeterminada — puede ser poco informativa</li>
</ul>
<p><strong>Importante:</strong> true — indeterminada (animación). false — determinada (valor). Cambia cuando el progreso es conocido.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La barra de progreso se volverá indeterminada. Se mostrará animación.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (148, 'es', 'Barra de progreso maestra: haz indeterminada',
        'Haz la barra de progreso indeterminada mediante setIndeterminate(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (149, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Cadena personalizada de barra de progreso</h2>
<p class="intro">La cadena personalizada mejora la información. Puedes mostrar texto personalizado en lugar de porcentaje, mejorar la comprensión. Sin cadena, solo habrá porcentaje.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setString()</code> — establecer cadena</li>
  <li>El método <code>setStringPainted()</code> — mostrar cadena</li>
  <li>Crear texto personalizado</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La cadena personalizada aumenta la información de la barra de progreso y permite mostrar texto más comprensible al usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Habilita mostrar cadena: <code>progressBar.setStringPainted(true);</code></li>
  <li>Establece cadena: <code>progressBar.setString("Cargando...");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setString()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar <code>setStringPainted(true)</code> para mostrar, usar cadenas dinámicas, usar para información</li>
  <li><strong>⚠️ Evita:</strong> Cadenas demasiado largas</li>
</ul>
<p><strong>Importante:</strong> Haz las cadenas cortas para mejor legibilidad.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La barra de progreso tendrá cadena personalizada. Puedes mostrar "Cargando...", "Procesando..." etc.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (149, 'es', 'Barra de progreso maestra: establece cadena personalizada',
        'Habilita mostrar cadena mediante setStringPainted(true), establece cadena "Cargando..." mediante setString()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (150, 'es', '<div class="lesson-header">
<h2>🎮 Lección 10: Formato de cadena de barra de progreso</h2>
<p class="intro">El formato de cadena mejora la información. Puedes mostrar texto personalizado, mejorar la comprensión. Sin formato, solo habrá porcentaje.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setStringPainted()</code> — mostrar cadena</li>
  <li>Formateo personalizado de cadena</li>
  <li>Mejorar información</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El formateo personalizado permite mostrar la cadena en el formato necesario y mejorar la información.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Habilita mostrar cadena: <code>progressBar.setStringPainted(true);</code></li>
  <li>Establece formato: <code>progressBar.setString(String.format("%d%%", progressBar.getValue()));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setStringPainted(true)</code> para mostrar</li>
  <li><strong>✅ Excelente:</strong> Usar <code>String.format()</code> para formatear, usar cadenas dinámicas, mejorar información</li>
  <li><strong>⚠️ Evita:</strong> Cadenas demasiado largas</li>
</ul>
<p><strong>Importante:</strong> Haz las cadenas cortas para mejor legibilidad.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La barra de progreso tendrá formato personalizado. Puedes mostrar texto formateado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (150, 'es', 'Barra de progreso maestra: establece formato de cadena',
        'Habilita mostrar cadena mediante setStringPainted(true), establece formato mediante String.format("%d%%", getValue())')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (151, 'es', '<div class="lesson-header">
<h2>🎮 Lección 11: Establecer valor de barra de progreso</h2>
<p class="intro">El valor define el progreso. Puedes establecer el progreso actual, actualizarlo, mejorar la visualización. Sin establecer, el progreso será cero.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setValue()</code> — establecer valor</li>
  <li>El método <code>getValue()</code> — obtener valor</li>
  <li>Gestionar progreso</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Gestionar el valor permite controlar programáticamente el progreso y actualizarlo en tiempo real.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece valor: <code>progressBar.setValue(50);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setValue()</code> para establecer, <code>getValue()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar para actualizar progreso, mejorar visualización</li>
  <li><strong>⚠️ Evita:</strong> Establecer valor fuera del rango</li>
</ul>
<p><strong>Importante:</strong> Verifica límites antes de establecer valor.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La barra de progreso se actualizará con el nuevo valor. Puedes visualizar el progreso.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (151, 'es', 'Barra de progreso maestra: establece valor', 'Establece valor 50 mediante setValue()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (152, 'es', '<div class="lesson-header">
<h2>🎮 Lección 12: Modo indeterminado de barra de progreso (extendido)</h2>
<p class="intro">El modo indeterminado muestra animación. Puedes mostrar progreso animado cuando el progreso exacto es desconocido, mejorar el efecto visual. Sin indeterminación, el progreso será estático.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setIndeterminate()</code> — establecer indeterminación</li>
  <li>Barra de progreso animada</li>
  <li>Mejorar efecto visual</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El modo indeterminado es necesario para procesos con tiempo de ejecución desconocido para mostrar al usuario que el proceso está activo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Habilita indeterminación: <code>progressBar.setIndeterminate(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setIndeterminate(true)</code> para habilitar</li>
  <li><strong>✅ Excelente:</strong> Usar para animación, usar cuando el progreso es desconocido, mejorar efecto visual</li>
  <li><strong>⚠️ Evita:</strong> Usar cuando el progreso es conocido</li>
</ul>
<p><strong>Importante:</strong> true — indeterminada (animación). false — determinada. Usa para animación y mejorar efecto visual.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La barra de progreso será animada. Puedes mostrar progreso indeterminado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (152, 'es', 'Barra de progreso maestra: haz indeterminada',
        'Habilita indeterminación mediante setIndeterminate(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Spanish)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
