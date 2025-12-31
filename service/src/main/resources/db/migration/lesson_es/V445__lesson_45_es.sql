-- Flyway migration V4: Lesson 45
-- This migration contains lesson, tasks, and documentation for lesson 45

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (397, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear Editor HTML con JEditorPane</h2>
<p class="intro">JEditorPane permite mostrar texto formateado. HTML, RTF, texto plano — todo esto se puede mostrar en un componente. Sin esto, tendrás que usar JTextArea regular sin formato.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>JEditorPane</code> — editor de texto formateado</li>
  <li>Método <code>setContentType()</code> — establecer tipo de contenido</li>
  <li>Mostrar HTML y RTF</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>JEditorPane es necesario para mostrar texto formateado.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea editor: <code>JEditorPane editor = new JEditorPane();</code></li>
  <li>Establece tipo de contenido: <code>editor.setContentType("text/html");</code></li>
  <li>Establece texto: <code>editor.setText("&lt;html&gt;&lt;h1&gt;¡Hola!&lt;/h1&gt;&lt;/html&gt;");</code></li>
  <li>Agrega a formulario: <code>add(editor);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Establecer tipo de contenido antes de establecer texto</li>
  <li><strong>✅ Excelente:</strong> Usar "text/html" para HTML, usar "text/rtf" para RTF, usar "text/plain" para texto plano</li>
  <li><strong>⚠️ Evita:</strong> No establecer tipo — puede no funcionar</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá editor con texto formateado. HTML se mostrará con formato. Puedes editar texto directamente en editor.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (397, 'es', 'JEditorPane Principiante: Crear Editor HTML',
        'Crea JEditorPane, establece tipo "text/html", establece texto HTML y agrega a formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (398, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Cargar HTML desde URL en JEditorPane</h2>
<p class="intro">Cargar HTML desde URL permite mostrar contenido web. Ayuda, documentación, noticias — todo esto se puede cargar desde internet. Sin esto, tendrás que almacenar todo el contenido localmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setPage()</code> — cargar página desde URL</li>
  <li>Clase <code>URL</code> — dirección de recurso</li>
  <li>Manejar errores de carga</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Cargar HTML desde URL es necesario para mostrar contenido web.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece tipo de contenido: <code>editor.setContentType("text/html");</code></li>
  <li>Carga página: <code>try {<br>
&nbsp;&nbsp;editor.setPage(new URL("https://example.com"));<br>
} catch (IOException e) {<br>
&nbsp;&nbsp;label.setText("Error de carga: " + e.getMessage());<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Manejar IOException al cargar</li>
  <li><strong>✅ Excelente:</strong> Mostrar indicador de carga, usar <code>setPage()</code> para cargar</li>
  <li><strong>⚠️ Evita:</strong> Ignorar errores — usuario no sabrá del problema</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>HTML se cargará desde URL y se mostrará. Página web aparecerá en editor. Puedes ver contenido desde internet.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (398, 'es', 'JEditorPane Maestro: Cargar HTML desde URL',
        'Establece tipo "text/html", carga página desde URL vía setPage(), maneja IOException')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (399, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Manejar Hipervínculos en JEditorPane</h2>
<p class="intro">Manejar hipervínculos hace editor interactivo. Puedes navegar enlaces, abrir nuevas páginas, realizar acciones. Sin esto, enlaces estarán inactivos.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Interfaz <code>HyperlinkListener</code> — manejo de enlaces</li>
  <li>Manejar clics en hipervínculos</li>
  <li>Navegar enlaces</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Manejar hipervínculos es necesario para crear editor interactivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega oyente: <code>editor.addHyperlinkListener(e -> {<br>
&nbsp;&nbsp;if (e.getEventType() == HyperlinkEvent.EventType.ACTIVATED) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;try {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;editor.setPage(e.getURL());<br>
&nbsp;&nbsp;&nbsp;&nbsp;} catch (IOException ex) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ex.printStackTrace();<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Verificar tipo de evento ACTIVATED</li>
  <li><strong>✅ Excelente:</strong> Usar <code>getURL()</code> para obtener enlace, cargar nueva página vía <code>setPage()</code>, manejar IOException al cargar</li>
  <li><strong>⚠️ Evita:</strong> Ignorar errores — usuario no sabrá del problema</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Hipervínculos serán clicables. Al hacer clic en enlace, se cargará nueva página. Puedes navegar enlaces.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (399, 'es', 'JEditorPane Maestro: Manejar Hipervínculos',
        'Agrega HyperlinkListener, verifica ACTIVATED, obtén URL vía getURL(), carga página vía setPage()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (400, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Establecer Tipo de Contenido en JEditorPane</h2>
<p class="intro">El tipo de contenido determina formato. Puedes mostrar HTML, texto plano, RTF. Sin tipo, contenido será interpretado incorrectamente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setContentType()</code> — establecer tipo</li>
  <li>Tipos de contenido (text/html, text/plain)</li>
  <li>Crear contenido formateado</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El tipo de contenido es necesario para interpretación correcta de contenido.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece tipo: <code>editor.setContentType("text/html");</code></li>
  <li>Establece texto: <code>editor.setText("&lt;html&gt;&lt;b&gt;Texto&lt;/b&gt;&lt;/html&gt;");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setContentType()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar "text/html" para HTML, usar "text/plain" para texto, usar "text/rtf" para RTF</li>
  <li><strong>⚠️ Evita:</strong> Tipo incorrecto — puede haber error</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Contenido será formateado según tipo. HTML se mostrará como HTML.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (400, 'es', 'JEditorPane Maestro: Establecer Tipo de Contenido',
        'Establece tipo "text/html" vía setContentType(), establece texto HTML')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (401, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Manejar Hipervínculos en JEditorPane</h2>
<p class="intro">Manejar hipervínculos hace contenido interactivo. Puedes manejar clic en enlace, abrir URL, realizar acción. Sin manejo, enlaces no funcionarán.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Interfaz <code>HyperlinkListener</code> — manejador de enlaces</li>
  <li>Manejar clics en enlaces</li>
  <li>Crear contenido interactivo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Manejar hipervínculos es necesario para crear contenido interactivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega oyente: <code>editor.addHyperlinkListener(e -> {<br>
&nbsp;&nbsp;if (e.getEventType() == HyperlinkEvent.EventType.ACTIVATED) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Enlace: " + e.getURL());<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addHyperlinkListener()</code> para manejar</li>
  <li><strong>✅ Excelente:</strong> Verificar EventType.ACTIVATED para clic, usar <code>getURL()</code> para obtener URL, abrir URL o realizar acción</li>
  <li><strong>⚠️ Evita:</strong> Ignorar enlaces</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al hacer clic en enlace, se activará manejador. Puedes manejar clic y abrir URL.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (401, 'es', 'JEditorPane Maestro: Manejar Hipervínculos',
        'Agrega HyperlinkListener, verifica EventType.ACTIVATED, obtén URL vía getURL()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (403, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Eliminar Oyente en ActionListener</h2>
<p class="intro">Eliminar oyente permite gestionar eventos. Puedes desactivar temporalmente manejo, mejorar lógica. Sin eliminación, oyente funcionará siempre.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>removeActionListener()</code> — eliminar oyente</li>
  <li>Gestión dinámica de oyentes</li>
  <li>Mejorar gestión de eventos</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Eliminar oyente es necesario para gestión dinámica de eventos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Guarda oyente: <code>JLabel label = new JLabel();<br>
ActionListener listener = e -> label.setText("Acción");<br>
add(label);</code></li>
  <li>Agrega oyente: <code>button.addActionListener(listener);</code></li>
  <li>Elimina oyente: <code>button.removeActionListener(listener);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>removeActionListener()</code> para eliminar</li>
  <li><strong>✅ Excelente:</strong> Guardar referencia a oyente, usar para gestión dinámica, mejorar lógica</li>
  <li><strong>⚠️ Evita:</strong> Eliminar sin guardar referencia</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Oyente será eliminado. Manejo de eventos cesará.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (403, 'es', 'ActionListener Maestro: Eliminar Oyente',
        'Crea ActionListener, agrega vía addActionListener(), elimina vía removeActionListener()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (402, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Establecer Texto en JEditorPane</h2>
<p class="intro">El texto crea contenido. Puedes establecer HTML o texto plano, crear contenido informativo. Sin texto, componente estará vacío.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setText()</code> — establecer texto</li>
  <li>Crear contenido de texto</li>
  <li>Mejorar visualización</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Establecer texto es necesario para crear contenido en componente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece texto: <code>editor.setText("&lt;html&gt;&lt;h1&gt;Título&lt;/h1&gt;&lt;/html&gt;");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setText()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar HTML para formato, usar texto plano, adaptar a tipo de contenido</li>
  <li><strong>⚠️ Evita:</strong> HTML sin formato correcto</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Texto aparecerá en componente. Texto será formateado según tipo de contenido.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (402, 'es', 'JEditorPane Maestro: Establecer Texto', 'Establece texto HTML vía setText()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (404, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Agregar Múltiples Oyentes en ActionListener</h2>
<p class="intro">Múltiples oyentes permiten manejar evento de múltiples formas. Puedes agregar varios manejadores, mejorar funcionalidad. Sin múltiples oyentes, solo un manejador.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Múltiples oyentes</li>
  <li>Agregar varios manejadores</li>
  <li>Mejorar funcionalidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Múltiples oyentes son necesarios para manejar evento de múltiples formas.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega primer oyente: <code>JLabel label = new JLabel();<br>
button.addActionListener(e -> label.setText("Primero"));<br>
add(label);</code></li>
  <li>Agrega segundo oyente: <code>button.addActionListener(e -> label.setText("Segundo"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addActionListener()</code> múltiples veces</li>
  <li><strong>✅ Excelente:</strong> Usar para manejo múltiple, mejorar funcionalidad, separar lógica</li>
  <li><strong>⚠️ Evita:</strong> Demasiados oyentes</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Cuando ocurra acción, todos los oyentes se activarán. Puedes manejar evento de múltiples formas.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (404, 'es', 'ActionListener Maestro: Agregar Múltiples Oyentes',
        'Agrega dos ActionListener vía addActionListener(), cada uno muestra su texto')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (405, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Obtener Comando de Acción en ActionListener</h2>
<p class="intro">El comando de acción permite identificar fuente. Puedes determinar qué componente activó evento, sin verificar fuente. Sin comando, tendrás que verificar fuente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getActionCommand()</code> — obtener comando</li>
  <li>Identificar fuente de evento</li>
  <li>Mejorar manejo de eventos</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El comando de acción es necesario para identificar fuente de evento.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén comando: <code>button.addActionListener(e -> {<br>
&nbsp;&nbsp;String cmd = e.getActionCommand();<br>
&nbsp;&nbsp;label.setText("Comando: " + cmd);<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getActionCommand()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar para identificación, usar comandos claros, mejorar manejo</li>
  <li><strong>⚠️ Evita:</strong> Ignorar comando</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Podrás obtener comando de acción. Puedes identificar fuente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (405, 'es', 'ActionListener Maestro: Obtener Comando de Acción',
        'Agrega ActionListener, obtén comando vía getActionCommand() en actionPerformed()')
ON CONFLICT (task_id, language_code) DO NOTHING;
