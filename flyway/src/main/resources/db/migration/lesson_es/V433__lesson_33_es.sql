-- Flyway migration V4: Lesson 33
-- This migration contains lesson, tasks, and documentation for lesson 33

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (278, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear Editor Avanzado</h2>
<p class="intro">JTextPane permite aplicar estilos al texto. Negrita, cursiva, color, tamaño de fuente — todo esto se puede aplicar a diferentes partes del texto. Sin él, no puedes crear editor de texto enriquecido.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>JTextPane</code> — editor avanzado</li>
  <li>Clase <code>StyledDocument</code> — documento con estilos</li>
  <li>Aplicar estilos al texto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>JTextPane es necesario para crear editores de texto con soporte de formato.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea editor: <code>JTextPane textPane = new JTextPane();</code></li>
  <li>Obtén documento: <code>StyledDocument doc = textPane.getStyledDocument();</code></li>
  <li>Crea estilo y aplica: <code>Style style = textPane.addStyle("bold", null);</code>, <code>StyleConstants.setBold(style, true);</code>, <code>doc.insertString(0, "Texto en negrita", style);</code></li>
  <li>Agrega al formulario: <code>add(textPane);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> StyleConstants para establecer propiedades de estilo</li>
  <li><strong>✅ Excelente:</strong> Aplicar estilos al texto seleccionado, combinar múltiples estilos</li>
  <li><strong>⚠️ Evita:</strong> Demasiados estilos — difícil de gestionar</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un editor con soporte de estilos. Puedes aplicar negrita, cursiva, color al texto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (278, 'es', 'JTextPane Principiante: Crear Editor Avanzado',
        'Crea JTextPane, crea estilo "bold", establece fuente en negrita, inserta texto con estilo y agrega al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (279, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Seleccionar y Estilizar Texto</h2>
<p class="intro">Aplicar estilos al texto seleccionado hace el editor funcional. Puedes seleccionar texto y hacerlo negrita, cursiva, cambiar color. Sin esto, tendrás que aplicar estilos a todo el texto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setCharacterAttributes()</code> — aplicar estilos</li>
  <li>Obtener texto seleccionado</li>
  <li>Aplicar estilos a selección</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Aplicar estilos al texto seleccionado es necesario para crear editores de texto funcionales.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén selección: <code>int start = textPane.getSelectionStart();</code> y <code>int end = textPane.getSelectionEnd();</code></li>
  <li>Crea estilo: <code>Style style = textPane.addStyle("bold", null);</code> y <code>StyleConstants.setBold(style, true);</code></li>
  <li>Aplica estilo: <code>StyledDocument doc = textPane.getStyledDocument();</code> y <code>doc.setCharacterAttributes(start, end - start, style, false);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Verificar selección antes de aplicar</li>
  <li><strong>✅ Excelente:</strong> Usar <code>setCharacterAttributes()</code> para aplicar estilos, combinar múltiples estilos</li>
  <li><strong>⚠️ Evita:</strong> Aplicar estilos sin verificar selección — puede ser error</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El texto seleccionado será estilizado. Puedes seleccionar texto y aplicar negrita, cursiva, color.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (279, 'es', 'JTextPane Maestro: Seleccionar y Estilizar Texto',
        'Obtén inicio y fin de selección, crea estilo "bold", aplica estilo al texto seleccionado')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (280, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Configurar Fuente</h2>
<p class="intro">Configurar fuente hace el texto legible. Puedes establecer tamaño, estilo, familia de fuente. Sin configuración, se usará fuente estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setFont()</code> — establecer fuente</li>
  <li>Configurar fuente mediante estilos</li>
  <li>Crear texto formateado</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Configurar fuente es necesario para mejorar legibilidad y representación visual del texto.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece fuente: <code>textPane.setFont(new Font("Arial", Font.BOLD, 14));</code></li>
  <li>O mediante estilo: <code>Style style = textPane.addStyle("bold", null);</code>, <code>StyleConstants.setFontFamily(style, "Arial");</code>, <code>StyleConstants.setFontSize(style, 14);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setFont()</code> para todo el texto</li>
  <li><strong>✅ Excelente:</strong> Usar estilos para partes del texto, combinar diferentes fuentes, usar StyleConstants para configuración</li>
  <li><strong>⚠️ Evita:</strong> Demasiadas fuentes diferentes — puede estar desordenado</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El texto se mostrará con fuente especificada. Puedes establecer tamaño, estilo, familia.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (280, 'es', 'JTextPane Maestro: Configurar Fuente',
        'Establece fuente mediante setFont() con Arial, BOLD, tamaño 14')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (281, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Insertar Cadena</h2>
<p class="intro">Insertar cadena permite agregar texto. Puedes insertar texto en posición necesaria, con formato. Sin inserción, tendrás que reemplazar todo el texto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>insertString()</code> — insertar cadena</li>
  <li>Insertar texto en posición</li>
  <li>Crear texto formateado</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Insertar cadena es necesario para adición programática de texto en posición necesaria.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén documento: <code>StyledDocument doc = textPane.getStyledDocument();</code></li>
  <li>Inserta cadena: <code>doc.insertString(0, "Texto", null);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>insertString()</code> para insertar</li>
  <li><strong>✅ Excelente:</strong> Usar <code>getStyledDocument()</code> para obtener, usar estilos para formato, usar posición para inserción precisa</li>
  <li><strong>⚠️ Evita:</strong> Insertar fuera de límites — puede ser error</li>
</ul>
<p><strong>Importante:</strong> Verificar posición antes de inserción. Manejar BadLocationException.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El texto se insertará en posición especificada. Puedes insertar texto con formato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (281, 'es', 'JTextPane Maestro: Insertar Cadena',
        'Obtén documento mediante getStyledDocument(), inserta cadena en posición 0 mediante insertString()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (282, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Aplicar Estilo</h2>
<p class="intro">El estilo crea formato. Puedes aplicar negrita, cursiva, color, tamaño al texto. Sin estilo, el texto será simple.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>Style</code> — estilo de texto</li>
  <li>Método <code>setCharacterAttributes()</code> — aplicar estilo</li>
  <li>Crear texto formateado</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los estilos son necesarios para crear texto formateado con varios efectos visuales.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén documento: <code>StyledDocument doc = textPane.getStyledDocument();</code></li>
  <li>Crea estilo: <code>Style style = doc.addStyle("bold", null);</code> y <code>StyleConstants.setBold(style, true);</code></li>
  <li>Aplica estilo: <code>doc.setCharacterAttributes(0, 5, style, false);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addStyle()</code> para crear</li>
  <li><strong>✅ Excelente:</strong> Usar StyleConstants para configuración, usar <code>setCharacterAttributes()</code> para aplicar, combinar diferentes estilos</li>
  <li><strong>⚠️ Evita:</strong> Demasiados estilos — puede ser complejo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El texto será formateado con estilo. Puedes aplicar negrita, cursiva, color.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (282, 'es', 'JTextPane Maestro: Aplicar Estilo',
        'Obtén documento, crea estilo mediante addStyle(), establece negrita mediante StyleConstants.setBold(), aplica mediante setCharacterAttributes()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (283, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Obtener Texto</h2>
<p class="intro">Obtener texto permite trabajar con contenido. Puedes extraer texto, procesarlo, guardarlo. Sin obtener, no puedes trabajar con contenido.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getText()</code> — obtener texto</li>
  <li>Extraer contenido de texto</li>
  <li>Trabajar con contenido</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Obtener texto es necesario para trabajar con contenido del editor (procesamiento, guardado).</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén texto: <code>String text = textPane.getText();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getText()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar para procesamiento, usar para guardado, procesar texto obtenido</li>
  <li><strong>⚠️ Evita:</strong> Ignorar texto obtenido</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Puedes obtener texto. Puedes extraer y procesar contenido.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (283, 'es', 'JTextPane Maestro: Obtener Texto', 'Obtén texto mediante getText(), muéstralo')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (284, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Determinar Botón del Mouse</h2>
<p class="intro">Determinar botón mejora funcionalidad. Puedes manejar botones izquierdo, derecho, medio de manera diferente, mejorar interactividad. Sin determinación, todos los botones son iguales.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getButton()</code> — obtener botón</li>
  <li>Constantes <code>MouseEvent.BUTTON1</code>, <code>BUTTON2</code>, <code>BUTTON3</code></li>
  <li>Manejar diferentes botones del mouse</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Determinar botón es necesario para crear interfaces interactivas con reacción diferente a diferentes botones del mouse.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Determina botón: <code>component.addMouseListener(new MouseAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void mouseClicked(MouseEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;if (e.getButton() == MouseEvent.BUTTON1) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Botón izquierdo");<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getButton()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar BUTTON1, BUTTON2, BUTTON3, manejar diferentes botones, mejorar interactividad</li>
  <li><strong>⚠️ Evita:</strong> Ignorar botones</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Puedes determinar qué botón está presionado. Puedes manejar botones izquierdo, derecho, medio de manera diferente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (284, 'es', 'MouseListener Maestro: Determinar Botón del Mouse',
        'Agrega MouseListener, verifica getButton() == BUTTON1, muestra "Botón izquierdo"')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (285, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Obtener Coordenadas del Mouse</h2>
<p class="intro">Las coordenadas del mouse son importantes para posicionamiento. Puedes obtener posición del clic, manejar por coordenadas, mejorar funcionalidad. Sin coordenadas, no puedes determinar posición.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getX()</code> — obtener coordenada X</li>
  <li>Método <code>getY()</code> — obtener coordenada Y</li>
  <li>Obtener posición del mouse</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Las coordenadas del mouse son necesarias para posicionamiento de elementos y manejo de eventos por posición.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén coordenadas: <code>component.addMouseListener(new MouseAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void mouseClicked(MouseEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;int x = e.getX();<br>
&nbsp;&nbsp;&nbsp;&nbsp;int y = e.getY();<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Coordenadas: " + x + ", " + y);<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getX()</code> para coordenada X</li>
  <li><strong>✅ Excelente:</strong> Usar <code>getY()</code> para coordenada Y, usar para posicionamiento, mejorar funcionalidad</li>
  <li><strong>⚠️ Evita:</strong> Ignorar coordenadas</li>
</ul>
<p><strong>Importante:</strong> Considerar coordenadas relativas.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Puedes obtener coordenadas del clic. Puedes manejar por posición.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (285, 'es', 'MouseListener Maestro: Obtener Coordenadas del Mouse',
        'Agrega MouseListener, sobrescribe mouseClicked(), obtén X e Y mediante getX(), getY(), muestra')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (286, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Obtener Cantidad de Clics</h2>
<p class="intro">La cantidad de clics es importante para manejo. Puedes manejar clic simple, doble clic, mejorar funcionalidad. Sin obtener, no puedes distinguir clics.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getClickCount()</code> — obtener cantidad de clics</li>
  <li>Manejar clics simples y dobles</li>
  <li>Mejorar funcionalidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Obtener cantidad de clics es necesario para distinguir clics simples y dobles.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén cantidad: <code>component.addMouseListener(new MouseAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void mouseClicked(MouseEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;int count = e.getClickCount();<br>
&nbsp;&nbsp;&nbsp;&nbsp;if (count == 2) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Doble clic");<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getClickCount()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar para manejar dobles clics, usar para mejorar funcionalidad, mejorar experiencia de usuario</li>
  <li><strong>⚠️ Evita:</strong> Ignorar cantidad</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Puedes obtener cantidad de clics. Puedes manejar doble clic.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (286, 'es', 'MouseListener Maestro: Obtener Cantidad de Clics',
        'Agrega MouseListener, sobrescribe mouseClicked(), obtén cantidad mediante getClickCount(), verifica para 2')
ON CONFLICT (task_id, language_code) DO NOTHING;
