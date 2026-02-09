-- Flyway migration V4: Lesson 35
-- This migration contains lesson, tasks, and documentation for lesson 35

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (291, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Abrir Diálogo de Selección de Archivo</h2>
<p class="intro">JFileChooser — forma estándar de trabajar con archivos. Abrir documento, guardar proyecto, seleccionar imagen — todo esto requiere selección de archivo. Sin esto, el usuario no podrá trabajar con archivos.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>JFileChooser</code> — diálogo de selección de archivos</li>
  <li>Crear diálogo de abrir/guardar archivo</li>
  <li>Obtener archivo seleccionado</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>JFileChooser es necesario para trabajo estándar con archivos en aplicación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea diálogo de selección de archivo: <code>JFileChooser fileChooser = new JFileChooser();</code></li>
  <li>Muestra diálogo de abrir: <code>int result = fileChooser.showOpenDialog(frame);</code></li>
  <li>Maneja resultado: <code>if (result == JFileChooser.APPROVE_OPTION) {<br>
&nbsp;&nbsp;File selectedFile = fileChooser.getSelectedFile();<br>
&nbsp;&nbsp;label.setText("Seleccionado: " + selectedFile.getName());<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Verificar resultado antes de usar archivo</li>
  <li><strong>✅ Excelente:</strong> Establecer directorio inicial, agregar filtro de archivos</li>
  <li><strong>⚠️ Evita:</strong> Ignorar resultado — puede ser null</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá diálogo de selección de archivo. Esta es ventana estándar de explorador de archivos. Puedes seleccionar archivo y presionar "Abrir" o "Guardar". Después de selección, obtendrás objeto File.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (291, 'es', 'Selección de Archivo Principiante: Abrir Diálogo de Selección de Archivo',
        'Crea JFileChooser, muestra diálogo de abrir y maneja resultado')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (292, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Crear Diálogo de Guardar</h2>
<p class="intro">El diálogo de guardar permite elegir ubicación para archivo. Guardar documento, exportar datos, crear respaldo — todo esto requiere elegir ubicación de guardado. Sin esto, archivo se guardará en ubicación impredecible.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>showSaveDialog()</code> — diálogo de guardar</li>
  <li>Manejar resultado de guardado</li>
  <li>Obtener archivo seleccionado para guardar</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El diálogo de guardar es necesario para elegir ubicación y nombre de archivo al guardar.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Muestra diálogo de guardar: <code>int result = fileChooser.showSaveDialog(frame);</code></li>
  <li>Maneja resultado: <code>if (result == JFileChooser.APPROVE_OPTION) {<br>
&nbsp;&nbsp;File file = fileChooser.getSelectedFile();<br>
&nbsp;&nbsp;label.setText("Guardar en: " + file.getPath());<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Verificar resultado antes de guardar</li>
  <li><strong>✅ Excelente:</strong> Establecer nombre de archivo sugerido, verificar existencia de archivo antes de sobrescribir</li>
  <li><strong>⚠️ Evita:</strong> Ignorar resultado — archivo no se guardará</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá diálogo de guardar archivo. Puedes elegir ubicación y nombre de archivo. Después de selección, obtendrás objeto File para guardar.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (292, 'es', 'Selección de Archivo Maestro: Crear Diálogo de Guardar',
        'Muestra diálogo de guardar, maneja resultado y obtén archivo seleccionado')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (293, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Agregar Filtro de Archivos</h2>
<p class="intro">Los filtros de archivos simplifican selección. Puedes mostrar solo imágenes, solo documentos, solo archivos de texto. Sin filtros, usuario tendrá que buscar tipo de archivo necesario entre todos.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>FileNameExtensionFilter</code> — filtro por extensión</li>
  <li>Método <code>setFileFilter()</code> — establecer filtro</li>
  <li>Crear filtros de archivos</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los filtros de archivos son necesarios para simplificar selección de tipos de archivo necesarios.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea filtro: <code>FileNameExtensionFilter filter = new FileNameExtensionFilter(<br>
&nbsp;&nbsp;"Archivos de texto",<br>
&nbsp;&nbsp;"txt", "text"<br>
);</code></li>
  <li>Establece filtro: <code>fileChooser.setFileFilter(filter);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> FileNameExtensionFilter para extensiones</li>
  <li><strong>✅ Excelente:</strong> Agregar múltiples extensiones a un filtro, agregar múltiples filtros vía <code>addChoosableFileFilter()</code>, usar <code>setAcceptAllFileFilterUsed(false)</code> para ocultar "Todos los archivos"</li>
  <li><strong>⚠️ Evita:</strong> Demasiados filtros — puede ser complejo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>En diálogo se mostrarán solo archivos con extensiones necesarias. Puedes seleccionar tipo de archivos de lista desplegable.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (293, 'es', 'Selección de Archivo Maestro: Agregar Filtro de Archivos',
        'Crea FileNameExtensionFilter para "txt" y "text", establece filtro en fileChooser')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (294, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Habilitar Selección Múltiple de Archivos</h2>
<p class="intro">La selección múltiple acelera trabajo. Puedes seleccionar varios archivos a la vez, sin abrir diálogo múltiples veces. Sin esto, tendrás que seleccionar archivos uno por uno.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setMultiSelectionEnabled()</code> — habilitar selección múltiple</li>
  <li>Obtener múltiples archivos seleccionados</li>
  <li>Manejar selección múltiple</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La selección múltiple es necesaria para acelerar trabajo con varios archivos simultáneamente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Habilita selección múltiple: <code>fileChooser.setMultiSelectionEnabled(true);</code></li>
  <li>Maneja resultado: <code>if (result == JFileChooser.APPROVE_OPTION) {<br>
&nbsp;&nbsp;File[] files = fileChooser.getSelectedFiles();<br>
&nbsp;&nbsp;for (File file : files) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Seleccionado: " + file.getName());<br>
&nbsp;&nbsp;}<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMultiSelectionEnabled(true)</code></li>
  <li><strong>✅ Excelente:</strong> Usar <code>getSelectedFiles()</code> para obtener array, manejar todos los archivos seleccionados</li>
  <li><strong>⚠️ Evita:</strong> Selección múltiple donde se necesita única</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Podrás seleccionar múltiples archivos. Con selección múltiple, puedes seleccionar varios archivos simultáneamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (294, 'es', 'Selección de Archivo Maestro: Habilitar Selección Múltiple',
        'Habilita selección múltiple vía setMultiSelectionEnabled(true), obtén archivos vía getSelectedFiles()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (295, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Agregar Filtro de Archivos (Extendido)</h2>
<p class="intro">El filtro limita selección. Puedes mostrar solo tipos de archivo necesarios, simplificar selección. Sin filtro, todos los archivos serán visibles.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>FileFilter</code> — filtro de archivos</li>
  <li>Método <code>addChoosableFileFilter()</code> — agregar filtro</li>
  <li>Limitar selección de archivos</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los filtros son necesarios para limitar selección de tipos de archivo necesarios y simplificar navegación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea filtro: <code>FileFilter filter = new FileNameExtensionFilter("Archivos de texto", "txt");</code></li>
  <li>Agrega filtro: <code>fileChooser.addChoosableFileFilter(filter);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> FileNameExtensionFilter para extensiones</li>
  <li><strong>✅ Excelente:</strong> Usar <code>addChoosableFileFilter()</code> para agregar, usar <code>setFileFilter()</code> para establecer por defecto, crear filtros personalizados</li>
  <li><strong>⚠️ Evita:</strong> Demasiados filtros — puede estar sobrecargado</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Filtro aparecerá en diálogo. Puedes seleccionar tipo de archivos. Solo archivos necesarios serán visibles.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (295, 'es', 'Selección de Archivo Maestro: Agregar Filtro',
        'Crea FileNameExtensionFilter para "txt", agrega vía addChoosableFileFilter()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (296, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Establecer Directorio Actual</h2>
<p class="intro">El directorio actual determina carpeta inicial. Puedes abrir diálogo en carpeta necesaria, mejorar navegación. Sin configuración, será carpeta estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setCurrentDirectory()</code> — establecer directorio</li>
  <li>Clase <code>File</code> — archivo/directorio</li>
  <li>Mejorar experiencia de usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Establecer directorio actual es necesario para mejorar navegación y experiencia de usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea directorio: <code>File dir = new File("/path/to/directory");</code></li>
  <li>Establece directorio: <code>fileChooser.setCurrentDirectory(dir);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setCurrentDirectory()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar File para directorio, usar para mejorar navegación, adaptar a contexto</li>
  <li><strong>⚠️ Evita:</strong> Establecer directorio inexistente</li>
</ul>
<p><strong>Importante:</strong> Verificar existencia de directorio.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Diálogo se abrirá en directorio especificado. Puedes comenzar navegación desde carpeta necesaria.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (296, 'es', 'Selección de Archivo Maestro: Establecer Directorio Actual',
        'Crea File para directorio, establece vía setCurrentDirectory()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (297, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Establecer Título de Diálogo</h2>
<p class="intro">El título hace diálogo informativo. Puedes especificar propósito de diálogo, mejorar comprensión. Sin título, diálogo será sin nombre.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setDialogTitle()</code> — establecer título</li>
  <li>Crear diálogo informativo</li>
  <li>Mejorar experiencia de usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El título es necesario para informatividad de diálogo y mejorar experiencia de usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece título: <code>fileChooser.setDialogTitle("Elige archivo");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setDialogTitle()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar títulos claros, usar para informatividad, adaptar a contexto</li>
  <li><strong>⚠️ Evita:</strong> Títulos demasiado largos</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Diálogo tendrá título. El título será visible en título de ventana.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (297, 'es', 'Selección de Archivo Maestro: Establecer Título de Diálogo',
        'Establece título "Elige archivo" vía setDialogTitle()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (298, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Agregar Escuchador de Enlaces</h2>
<p class="intro">El escuchador de enlaces permite manejar clics. Puedes abrir enlace, realizar acción, mejorar funcionalidad. Sin escuchador, enlaces no funcionarán.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Interfaz <code>HyperlinkListener</code> — escuchador de enlaces</li>
  <li>Método <code>addHyperlinkListener()</code> — agregar escuchador</li>
  <li>Manejar clics en enlaces</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El escuchador de enlaces es necesario para manejar clics en enlaces en JEditorPane.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega escuchador: <code>editorPane.addHyperlinkListener(e -> {<br>
&nbsp;&nbsp;if (e.getEventType() == HyperlinkEvent.EventType.ACTIVATED) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Enlace: " + e.getURL());<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addHyperlinkListener()</code> para agregar</li>
  <li><strong>✅ Excelente:</strong> Verificar EventType.ACTIVATED, usar <code>getURL()</code> para obtener URL, manejar clics</li>
  <li><strong>⚠️ Evita:</strong> Ignorar eventos</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al hacer clic en enlace, se activará manejador. Puedes manejar enlace, abrir URL.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (298, 'es', 'Editor Maestro: Agregar Escuchador de Enlaces',
        'Agrega HyperlinkListener, verifica EventType.ACTIVATED, muestra URL vía getURL()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (299, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Establecer Tipo de Contenido</h2>
<p class="intro">El tipo de contenido determina formato. Puedes establecer HTML, RTF, texto plano, mejorar visualización. Sin tipo, contenido será texto plano.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setContentType()</code> — establecer tipo de contenido</li>
  <li>Tipos: text/html, text/plain, text/rtf</li>
  <li>Gestionar formato de contenido</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El tipo de contenido es necesario para visualización correcta de contenido formateado en JEditorPane.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece tipo: <code>editorPane.setContentType("text/html");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setContentType()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar "text/html" para HTML, usar "text/plain" para texto, usar "text/rtf" para RTF</li>
  <li><strong>⚠️ Evita:</strong> Usar tipo no soportado</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Contenido se mostrará en formato especificado. Puedes usar HTML, RTF.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (299, 'es', 'Editor Maestro: Establecer Tipo de Contenido',
        'Establece tipo de contenido "text/html" vía setContentType()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (300, 'es', '<div class="lesson-header">
<h2>🎮 Lección 10: Crear Editor Solo Lectura</h2>
<p class="intro">Solo lectura protege contenido. Puedes prohibir edición, mejorar seguridad. Sin protección, contenido puede ser cambiado.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setEditable()</code> — establecer editabilidad</li>
  <li>Protección de cambios</li>
  <li>Mejorar seguridad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El modo solo lectura es necesario para proteger contenido de cambios.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Desactiva edición: <code>editorPane.setEditable(false);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setEditable(false)</code> para desactivar</li>
  <li><strong>✅ Excelente:</strong> Usar para protección, mejorar seguridad, usar para visualización</li>
  <li><strong>⚠️ Evita:</strong> Desactivar para campos editables</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Editor será solo lectura. Contenido no puede ser cambiado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (300, 'es', 'Editor Maestro: Hacer Solo Lectura', 'Desactiva edición vía setEditable(false)')
ON CONFLICT (task_id, language_code) DO NOTHING;
