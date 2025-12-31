-- Flyway migration V4: Lesson 43
-- This migration contains lesson, tasks, and documentation for lesson 43

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (370, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear Diseño de Grupo con GroupLayout</h2>
<p class="intro">GroupLayout permite crear diseños complejos. Grupos de componentes, alineación, colocación secuencial y paralela — todo esto requiere GroupLayout. Sin esto, formularios complejos se verán desordenados.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>GroupLayout</code> — diseño de grupo</li>
  <li>Clases <code>SequentialGroup</code> y <code>ParallelGroup</code> — grupos</li>
  <li>Crear diseño de grupo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>GroupLayout es necesario para crear diseños complejos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea administrador: <code>GroupLayout layout = new GroupLayout(panel);<br>
panel.setLayout(layout);</code></li>
  <li>Crea grupo horizontal: <code>layout.setHorizontalGroup(<br>
&nbsp;&nbsp;layout.createSequentialGroup()<br>
&nbsp;&nbsp;&nbsp;&nbsp;.addComponent(button1)<br>
&nbsp;&nbsp;&nbsp;&nbsp;.addComponent(button2)<br>
);</code></li>
  <li>Crea grupo vertical: <code>layout.setVerticalGroup(<br>
&nbsp;&nbsp;layout.createParallelGroup()<br>
&nbsp;&nbsp;&nbsp;&nbsp;.addComponent(button1)<br>
&nbsp;&nbsp;&nbsp;&nbsp;.addComponent(button2)<br>
);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createSequentialGroup()</code> para colocación secuencial</li>
  <li><strong>✅ Excelente:</strong> Usar <code>createParallelGroup()</code> para colocación paralela, combinar grupos secuenciales y paralelos</li>
  <li><strong>⚠️ Evita:</strong> Estructura demasiado compleja — difícil de mantener</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componentes se colocarán en grupos. Horizontal y vertical — como configures.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (370, 'es', 'GroupLayout Principiante: Crear Diseño de Grupo',
        'Crea GroupLayout, crea grupo secuencial horizontal con dos botones, crea grupo paralelo vertical')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (371, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Agregar Espacios Entre Componentes en GroupLayout</h2>
<p class="intro">Los espacios hacen interfaz ordenada. Componentes no estarán presionados entre sí, habrá separación visual. Sin espacios, interfaz se verá sobrecargada.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>addGap()</code> — agregar espacio</li>
  <li>Crear espacios entre componentes</li>
  <li>Configurar tamaños de espacios</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los espacios son necesarios para crear interfaz ordenada con separación visual.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega componente: <code>layout.createSequentialGroup()<br>
&nbsp;&nbsp;.addComponent(button1)</code></li>
  <li>Agrega espacio: <code>.addGap(10)</code></li>
  <li>Agrega otro componente: <code>.addComponent(button2)</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addGap()</code> para espacios</li>
  <li><strong>✅ Excelente:</strong> Usar mismos espacios para uniformidad, agregar espacios al inicio y final de grupos</li>
  <li><strong>⚠️ Evita:</strong> Espacios demasiado grandes — puede ser excesivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Espacios aparecerán entre componentes. Componentes no estarán presionados entre sí. Interfaz se verá ordenada.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (371, 'es', 'GroupLayout Maestro: Agregar Espacios Entre Componentes',
        'En grupo secuencial agrega componente, agrega espacio 10, agrega otro componente')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (373, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Manejar Múltiples Botones con Un ActionListener</h2>
<p class="intro">Un manejador para múltiples botones simplifica código. Puedes determinar fuente de evento y realizar acción necesaria. Sin esto, tendrás que crear manejador separado para cada botón.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Manejar múltiples fuentes de eventos</li>
  <li>Método <code>getSource()</code> — determinar fuente</li>
  <li>Crear manejadores universales</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Un manejador es necesario para simplificar código al manejar múltiples botones.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea manejador: <code>ActionListener listener = e -> {<br>
&nbsp;&nbsp;if (e.getSource() == button1) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Botón 1");<br>
&nbsp;&nbsp;} else if (e.getSource() == button2) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Botón 2");<br>
&nbsp;&nbsp;}<br>
};</code></li>
  <li>Agrega a botones: <code>button1.addActionListener(listener);<br>
button2.addActionListener(listener);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getSource()</code> para determinar</li>
  <li><strong>✅ Excelente:</strong> Usar <code>getActionCommand()</code> para comando, usar un manejador para grupo, usar switch para múltiples opciones</li>
  <li><strong>⚠️ Evita:</strong> Demasiadas condiciones — puede ser complejo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Un manejador funcionará para todos los botones. Al hacer clic en cualquier botón, manejador se activará, que determinará fuente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (373, 'es', 'ActionListener Maestro: Manejar Múltiples Botones',
        'Crea ActionListener, verifica getSource() para dos botones, agrega manejador a ambos botones')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (372, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Crear Grupos Paralelos en GroupLayout</h2>
<p class="intro">Los grupos paralelos permiten alinear componentes. Puedes crear columnas, filas, diseños complejos. Sin esto, componentes solo estarán colocados secuencialmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>createParallelGroup()</code> — crear grupo paralelo</li>
  <li>Alinear componentes en paralelo</li>
  <li>Crear diseños complejos</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los grupos paralelos son necesarios para alinear componentes y crear diseños complejos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea grupo paralelo: <code>layout.setHorizontalGroup(<br>
&nbsp;&nbsp;layout.createParallelGroup()<br>
&nbsp;&nbsp;&nbsp;&nbsp;.addComponent(button1)<br>
&nbsp;&nbsp;&nbsp;&nbsp;.addComponent(button2)<br>
);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createParallelGroup()</code> para colocación paralela</li>
  <li><strong>✅ Excelente:</strong> Combinar grupos secuenciales y paralelos, usar para crear columnas y filas</li>
  <li><strong>⚠️ Evita:</strong> Solo grupos paralelos — puede ser inflexible</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componentes estarán alineados en paralelo. Estarán colocados uno al lado del otro.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (372, 'es', 'GroupLayout Maestro: Crear Grupos Paralelos',
        'Crea grupo paralelo horizontal con dos botones')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (374, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Usar Comando de Acción en ActionListener</h2>
<p class="intro">El comando de acción permite identificar fuente. Puedes determinar qué botón está presionado sin verificar fuente. Sin comando, tendrás que verificar fuente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getActionCommand()</code> — obtener comando</li>
  <li>Método <code>setActionCommand()</code> — establecer comando</li>
  <li>Identificar fuente a través de comando</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El comando de acción es necesario para identificar fuente de evento.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece comando: <code>button.setActionCommand("SAVE");</code></li>
  <li>Obtén comando en manejador: <code>button.addActionListener(e -> {<br>
&nbsp;&nbsp;String cmd = e.getActionCommand();<br>
&nbsp;&nbsp;if ("SAVE".equals(cmd)) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Guardando!");<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setActionCommand()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar <code>getActionCommand()</code> para obtener, usar comandos claros, usar para identificación</li>
  <li><strong>⚠️ Evita:</strong> Duplicar comandos</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>En manejador podrás obtener comando. Al hacer clic, puedes determinar comando.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (374, 'es', 'ActionListener Maestro: Usar Comando de Acción',
        'Establece comando "SAVE" vía setActionCommand(), obtén comando en ActionListener vía getActionCommand()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (375, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Determinar Tiempo de Evento en ActionListener</h2>
<p class="intro">El tiempo de evento permite rastrear acciones. Puedes saber cuándo ocurrió evento, crear registros, rastrear secuencia. Sin tiempo, no puedes rastrear acciones.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getWhen()</code> — obtener tiempo</li>
  <li>Determinar tiempo de evento</li>
  <li>Crear marcas de tiempo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El tiempo de evento es necesario para rastrear acciones y crear registros.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén tiempo: <code>button.addActionListener(e -> {<br>
&nbsp;&nbsp;long when = e.getWhen();<br>
&nbsp;&nbsp;label.setText("Tiempo: " + new Date(when));<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getWhen()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar para registro, usar para rastreo, convertir a Date</li>
  <li><strong>⚠️ Evita:</strong> Ignorar tiempo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Podrás obtener tiempo de evento. Al hacer clic, puedes saber tiempo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (375, 'es', 'ActionListener Maestro: Determinar Cuándo',
        'Agrega ActionListener, obtén tiempo vía getWhen(), muéstralo')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (377, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Obtener Carácter de Tecla en KeyListener</h2>
<p class="intro">El carácter de tecla es importante para entrada de texto. Puedes obtener carácter, procesar texto, mejorar funcionalidad. Sin carácter, no puedes procesar texto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getKeyChar()</code> — obtener carácter</li>
  <li>Obtener carácter de tecla presionada</li>
  <li>Procesar entrada de texto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El carácter de tecla es necesario para procesar entrada de texto.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén carácter: <code>component.addKeyListener(new KeyAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void keyTyped(KeyEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;char ch = e.getKeyChar();<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Carácter: " + ch);<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getKeyChar()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar <code>keyTyped()</code> para caracteres, procesar entrada de texto, mejorar funcionalidad</li>
  <li><strong>⚠️ Evita:</strong> Ignorar teclas especiales</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Podrás obtener carácter de tecla presionada. Puedes procesar entrada de texto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (377, 'es', 'KeyListener Maestro: Obtener Carácter de Tecla',
        'Agrega KeyListener, sobrescribe keyTyped(), obtén carácter vía getKeyChar(), muestra')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (376, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Determinar Modificadores en ActionListener</h2>
<p class="intro">Los modificadores permiten manejar combinaciones. Puedes determinar si Ctrl, Alt, Shift están presionados, manejar combinaciones. Sin modificadores, no puedes manejar combinaciones.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getModifiers()</code> — obtener modificadores</li>
  <li>Verificar Ctrl, Alt, Shift</li>
  <li>Manejar combinaciones de teclas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los modificadores son necesarios para manejar combinaciones de teclas.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén modificadores: <code>button.addActionListener(e -> {<br>
&nbsp;&nbsp;int modifiers = e.getModifiers();<br>
&nbsp;&nbsp;if ((modifiers & ActionEvent.CTRL_MASK) != 0) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Ctrl presionado!");<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getModifiers()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Verificar CTRL_MASK para Ctrl, verificar ALT_MASK para Alt, verificar SHIFT_MASK para Shift</li>
  <li><strong>⚠️ Evita:</strong> Ignorar modificadores</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Podrás determinar modificadores. Al hacer clic, puedes saber si Ctrl, Alt, Shift están presionados.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (376, 'es', 'ActionListener Maestro: Determinar Modificadores',
        'Agrega ActionListener, verifica getModifiers() & CTRL_MASK, muestra mensaje')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (379, 'es', '<div class="lesson-header">
<h2>🎮 Lección 10: Obtener Código de Tecla en KeyListener</h2>
<p class="intro">El código de tecla es importante para teclas especiales. Puedes manejar Enter, Escape, flechas, mejorar funcionalidad. Sin código, no puedes manejar teclas especiales.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getKeyCode()</code> — obtener código de tecla</li>
  <li>Constantes <code>KeyEvent.VK_*</code> — códigos de teclas</li>
  <li>Manejar teclas especiales</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El código de tecla es necesario para manejar teclas especiales.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén código: <code>component.addKeyListener(new KeyAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void keyPressed(KeyEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;int code = e.getKeyCode();<br>
&nbsp;&nbsp;&nbsp;&nbsp;if (code == KeyEvent.VK_ENTER) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Enter presionado");<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getKeyCode()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar <code>keyPressed()</code> para códigos, usar constantes VK_*, manejar teclas especiales</li>
  <li><strong>⚠️ Evita:</strong> Ignorar teclas especiales</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Podrás obtener código de tecla presionada. Puedes manejar teclas especiales.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (379, 'es', 'KeyListener Maestro: Obtener Código de Tecla',
        'Agrega KeyListener, sobrescribe keyPressed(), obtén código vía getKeyCode(), verifica VK_ENTER')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (382, 'es', '<div class="lesson-header">
<h2>🎮 Lección 13: Obtener Carácter de Tecla en KeyListener</h2>
<p class="intro">El carácter de tecla es importante para entrada de texto. Puedes procesar caracteres, mejorar funcionalidad. Sin carácter, no puedes procesar entrada de texto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getKeyChar()</code> — obtener carácter</li>
  <li>Procesar teclas de caracteres</li>
  <li>Mejorar funcionalidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El carácter de tecla es necesario para procesar entrada de texto.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén carácter: <code>component.addKeyListener(new KeyAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void keyTyped(KeyEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;char ch = e.getKeyChar();<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Carácter: " + ch);<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getKeyChar()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar <code>keyTyped()</code> para caracteres, usar para entrada de texto, mejorar funcionalidad</li>
  <li><strong>⚠️ Evita:</strong> Ignorar caracteres especiales</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Podrás obtener carácter de tecla presionada. Puedes procesar entrada de texto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (382, 'es', 'KeyListener Maestro: Obtener Carácter de Tecla',
        'Agrega KeyListener, sobrescribe keyTyped(), obtén carácter vía getKeyChar(), muestra')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (378, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Crear Grupo Secuencial en GroupLayout</h2>
<p class="intro">El grupo secuencial coloca componentes secuencialmente. Puedes colocar componentes uno tras otro, mejorar diseño. Sin grupo, componentes no estarán colocados.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>createSequentialGroup()</code> — crear grupo secuencial</li>
  <li>Colocación secuencial de componentes</li>
  <li>Mejorar diseño</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El grupo secuencial es necesario para colocación secuencial de componentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea grupo: <code>GroupLayout.SequentialGroup hGroup = layout.createSequentialGroup();</code></li>
  <li>Agrega componentes: <code>hGroup.addComponent(component1).addComponent(component2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createSequentialGroup()</code> para crear</li>
  <li><strong>✅ Excelente:</strong> Usar <code>addComponent()</code> para agregar, usar para secuencia, mejorar diseño</li>
  <li><strong>⚠️ Evita:</strong> Mezclar con grupo paralelo incorrectamente</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componentes estarán colocados secuencialmente. Puedes mejorar diseño.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (378, 'es', 'GroupLayout Maestro: Crear Grupo Secuencial',
        'Crea grupo secuencial vía createSequentialGroup(), agrega componentes vía addComponent()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (380, 'es', '<div class="lesson-header">
<h2>🎮 Lección 11: Crear Grupo Paralelo en GroupLayout</h2>
<p class="intro">El grupo paralelo coloca componentes en paralelo. Puedes colocar componentes uno al lado del otro, alinear, mejorar diseño. Sin grupo, componentes no estarán colocados.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>createParallelGroup()</code> — crear grupo paralelo</li>
  <li>Colocación paralela de componentes</li>
  <li>Mejorar diseño</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El grupo paralelo es necesario para colocación paralela de componentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea grupo: <code>GroupLayout.ParallelGroup vGroup = layout.createParallelGroup();</code></li>
  <li>Agrega componentes: <code>vGroup.addComponent(component1).addComponent(component2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createParallelGroup()</code> para crear</li>
  <li><strong>✅ Excelente:</strong> Usar <code>addComponent()</code> para agregar, usar para paralelismo, mejorar diseño</li>
  <li><strong>⚠️ Evita:</strong> Mezclar con grupo secuencial incorrectamente</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componentes estarán colocados en paralelo. Puedes mejorar diseño.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (380, 'es', 'GroupLayout Maestro: Crear Grupo Paralelo',
        'Crea grupo paralelo vía createParallelGroup(), agrega componentes vía addComponent()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (381, 'es', '<div class="lesson-header">
<h2>🎮 Lección 12: Agregar Espacio en GroupLayout</h2>
<p class="intro">El espacio crea distancia. Puedes agregar distancia entre componentes, mejorar diseño. Sin espacio, componentes estarán apretados juntos.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>addGap()</code> — agregar espacio</li>
  <li>Crear distancia entre componentes</li>
  <li>Mejorar diseño</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El espacio es necesario para crear distancia entre componentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega espacio: <code>hGroup.addGap(10);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addGap()</code> para agregar</li>
  <li><strong>✅ Excelente:</strong> Usar para crear distancia, usar para mejorar diseño, mejorar colocación</li>
  <li><strong>⚠️ Evita:</strong> Espacios demasiado grandes</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Espacio aparecerá entre componentes. Puedes mejorar diseño.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (381, 'es', 'GroupLayout Maestro: Agregar Espacio', 'Agrega espacio 10 vía addGap() a grupo')
ON CONFLICT (task_id, language_code) DO NOTHING;
