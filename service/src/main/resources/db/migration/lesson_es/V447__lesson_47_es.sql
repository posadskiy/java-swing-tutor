-- Flyway migration V4: Lesson 47
-- This migration contains lesson, tasks, and documentation for lesson 47

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (421, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Responder a Presiones de Teclas con KeyListener</h2>
<p class="intro">KeyListener permite responder a teclado. Teclas de acceso rápido, entrada de texto, navegación — todo esto requiere manejo de teclado. Sin esto, interfaz no será interactiva.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Interfaz <code>KeyListener</code> — manejo de teclado</li>
  <li>Métodos <code>keyPressed()</code>, <code>keyReleased()</code>, <code>keyTyped()</code></li>
  <li>Manejar presiones de teclas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>KeyListener es necesario para crear interfaz interactiva con manejo de teclado.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea oyente: <code>KeyListener listener = new KeyListener() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void keyPressed(KeyEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;if (e.getKeyCode() == KeyEvent.VK_ENTER) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Enter presionado!");<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void keyReleased(KeyEvent e) {}<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void keyTyped(KeyEvent e) {}<br>
};</code></li>
  <li>Agrega oyente a componente: <code>component.addKeyListener(listener);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getKeyCode()</code> para teclas físicas</li>
  <li><strong>✅ Excelente:</strong> Usar <code>getKeyChar()</code> para caracteres, verificar modificadores: <code>isShiftDown()</code>, <code>isControlDown()</code></li>
  <li><strong>⚠️ Evita:</strong> Manejar todas las teclas — puede ser lento</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al presionar teclas, se activará manejador. Puedes manejar cualquier tecla y combinaciones.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (421, 'es', 'KeyListener Principiante: Responder a Presiones de Teclas',
        'Crea KeyListener, maneja presión Enter y agrega oyente a componente')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (422, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Manejar Combinaciones de Teclas con KeyListener</h2>
<p class="intro">Manejar combinaciones de teclas hace interfaz rápida. Teclas de acceso rápido, acciones rápidas, combinaciones — todo esto requiere manejo de modificadores. Sin esto, no puedes crear teclas de acceso rápido convenientes.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Métodos <code>isControlDown()</code>, <code>isShiftDown()</code>, <code>isAltDown()</code></li>
  <li>Manejar combinaciones de teclas</li>
  <li>Crear teclas de acceso rápido</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Manejar combinaciones de teclas es necesario para crear teclas de acceso rápido convenientes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Verifica modificadores: <code>if (e.isControlDown() && e.getKeyCode() == KeyEvent.VK_C) {<br>
&nbsp;&nbsp;label.setText("¡Ctrl+C presionado!");<br>
}</code></li>
  <li>O verifica Shift: <code>if (e.isShiftDown() && e.getKeyCode() == KeyEvent.VK_ENTER) {<br>
&nbsp;&nbsp;label.setText("¡Shift+Enter presionado!");<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Verificar modificadores antes de verificar tecla</li>
  <li><strong>✅ Excelente:</strong> Usar <code>isControlDown()</code> para Ctrl, usar <code>isShiftDown()</code> para Shift, usar <code>isAltDown()</code> para Alt</li>
  <li><strong>⚠️ Evita:</strong> Manejar todas las combinaciones — puede ser complejo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Combinaciones de teclas serán manejadas. Puedes crear teclas de acceso rápido Ctrl+C, Shift+Enter y otras.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (422, 'es', 'KeyListener Maestro: Manejar Combinaciones de Teclas',
        'En keyPressed verifica isControlDown() y VK_C, muestra mensaje al presionar Ctrl+C')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (424, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Agregar Pegamento en BoxLayout</h2>
<p class="intro">El pegamento crea espacio estirable. Puedes separar componentes, empujarlos a bordes, crear diseños flexibles. Sin pegamento, componentes estarán juntos.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>Box.createHorizontalGlue()</code> — pegamento horizontal</li>
  <li>Método <code>Box.createVerticalGlue()</code> — pegamento vertical</li>
  <li>Crear espacio estirable</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El pegamento es necesario para crear diseños flexibles con separación de componentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea pegamento: <code>Component glue = Box.createHorizontalGlue();</code></li>
  <li>Agrega componentes y pegamento: <code>add(button1);<br>
add(glue);<br>
add(button2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createHorizontalGlue()</code> para horizontal</li>
  <li><strong>✅ Excelente:</strong> Usar <code>createVerticalGlue()</code> para vertical, separar componentes con pegamento, empujar componentes a bordes</li>
  <li><strong>⚠️ Evita:</strong> Demasiado pegamento — puede ser excesivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Espacio estirable aparecerá entre componentes. Pegamento tomará espacio disponible. Componentes estarán separados.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (424, 'es', 'BoxLayout Maestro: Agregar Pegamento',
        'Crea pegamento horizontal vía createHorizontalGlue(), agrega componentes y pegamento')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (423, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Manejar Liberación de Teclas con KeyListener</h2>
<p class="intro">Manejar liberación de teclas permite rastrear estado. Juegos, animaciones, teclas de acceso rápido — todo esto requiere manejo de liberación. Sin esto, no puedes determinar cuándo acción debe detenerse.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>keyReleased()</code> — manejar liberación</li>
  <li>Rastrear estado de teclas</li>
  <li>Manejar liberación de teclas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Manejar liberación de teclas es necesario para rastrear estado y gestionar acciones.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Anula keyReleased: <code>@Override<br>
public void keyReleased(KeyEvent e) {<br>
&nbsp;&nbsp;if (e.getKeyCode() == KeyEvent.VK_SPACE) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Espacio liberado!");<br>
&nbsp;&nbsp;}<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>keyReleased()</code> para manejar liberación</li>
  <li><strong>✅ Excelente:</strong> Detener acciones al liberar, usar para gestión de estado</li>
  <li><strong>⚠️ Evita:</strong> Ignorar keyReleased — acción no se detendrá</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al liberar tecla, se activará manejador. Puedes detener acción, cambiar estado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (423, 'es', 'KeyListener Maestro: Manejar Liberación de Teclas',
        'Anula keyReleased(), maneja liberación VK_SPACE, muestra mensaje')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (425, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Agregar Área Rígida en BoxLayout</h2>
<p class="intro">El área rígida crea espacio fijo. Puedes separar componentes con espacio fijo. Sin área rígida, espacio cambiará.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>Box.createRigidArea()</code> — área rígida</li>
  <li>Crear espacio fijo</li>
  <li>Separar componentes</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El área rígida es necesaria para crear espacios fijos entre componentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea área: <code>Component area = Box.createRigidArea(new Dimension(10, 10));</code></li>
  <li>Agrega componentes y área: <code>add(button1);<br>
add(area);<br>
add(button2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createRigidArea()</code> para área rígida</li>
  <li><strong>✅ Excelente:</strong> Usar Dimension para tamaño, separar componentes con área, usar para espacios fijos</li>
  <li><strong>⚠️ Evita:</strong> Área demasiado grande — puede ser excesivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Espacio fijo aparecerá entre componentes. Espacio será constante.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (425, 'es', 'BoxLayout Maestro: Agregar Área Rígida',
        'Crea área rígida vía createRigidArea() con tamaño 10x10, agrega entre componentes')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (426, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Agregar Espaciador en BoxLayout</h2>
<p class="intro">El espaciador crea espacio fijo. Puedes separar componentes con espacio fijo. Sin espaciador, espacio cambiará.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>Box.createHorizontalStrut()</code> — espaciador horizontal</li>
  <li>Método <code>Box.createVerticalStrut()</code> — espaciador vertical</li>
  <li>Crear espacio fijo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El espaciador es necesario para crear espacios fijos entre componentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea espaciador: <code>Component strut = Box.createHorizontalStrut(20);</code></li>
  <li>Agrega componentes y espaciador: <code>add(button1);<br>
add(strut);<br>
add(button2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createHorizontalStrut()</code> para horizontal</li>
  <li><strong>✅ Excelente:</strong> Usar <code>createVerticalStrut()</code> para vertical, separar componentes con espaciador, usar para espacios fijos</li>
  <li><strong>⚠️ Evita:</strong> Espaciador demasiado grande — puede ser excesivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Espacio fijo aparecerá entre componentes. Espacio será constante.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (426, 'es', 'BoxLayout Maestro: Agregar Espaciador',
        'Crea espaciador horizontal vía createHorizontalStrut(20), agrega entre componentes')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (427, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Establecer Tamaño Máximo en BoxLayout</h2>
<p class="intro">El tamaño máximo limita componente. Puedes especificar tamaño máximo, prevenir estiramiento excesivo. Sin límite, componente puede estirarse demasiado.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setMaximumSize()</code> — establecer tamaño máximo</li>
  <li>Limitar tamaño de componente</li>
  <li>Crear diseños controlados</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El tamaño máximo es necesario para prevenir estiramiento excesivo de componentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece tamaño máximo: <code>component.setMaximumSize(new Dimension(200, 100));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMaximumSize()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar Dimension para tamaño, usar para limitar, adaptar a contenido</li>
  <li><strong>⚠️ Evita:</strong> Tamaño demasiado pequeño — puede ser inconveniente</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componente será limitado por tamaño máximo. Componente no se estirará más de lo especificado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (427, 'es', 'BoxLayout Maestro: Establecer Tamaño Máximo',
        'Establece tamaño máximo 200x100 vía setMaximumSize()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (428, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Establecer Espacios en BorderLayout</h2>
<p class="intro">Los espacios mejoran apariencia visual. Puedes agregar distancia entre componentes, mejorar legibilidad. Sin espacios, componentes estarán juntos.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Constructor <code>BorderLayout(int, int)</code> — espacios</li>
  <li>Espacios horizontales y verticales</li>
  <li>Mejorar apariencia visual</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los espacios son necesarios para mejorar apariencia visual y legibilidad.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea diseño con espacios: <code>BorderLayout layout = new BorderLayout(10, 10);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>BorderLayout(int, int)</code> para espacios</li>
  <li><strong>✅ Excelente:</strong> Usar valores razonables, mejorar apariencia visual, mejorar legibilidad</li>
  <li><strong>⚠️ Evita:</strong> Espacios demasiado grandes</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Espacios estarán entre componentes. Puedes mejorar apariencia visual.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (428, 'es', 'BorderLayout Maestro: Establecer Espacios',
        'Crea BorderLayout con espacios 10, 10 vía constructor BorderLayout(10, 10)')
ON CONFLICT (task_id, language_code) DO NOTHING;
