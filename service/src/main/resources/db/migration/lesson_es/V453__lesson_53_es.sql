-- Flyway migration V4: Lesson 53
-- This migration contains lesson, tasks, and documentation for lesson 53

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (458, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear Temporizador con Timer</h2>
<p class="intro">El temporizador permite realizar acciones periódicamente. Animaciones, actualizaciones de interfaz, verificaciones de estado — todo esto requiere temporizadores. Sin ellos, no puedes crear interfaz dinámica.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>Timer</code> — temporizador</li>
  <li>Métodos <code>start()</code>, <code>stop()</code>, <code>restart()</code></li>
  <li>Crear acciones periódicas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El temporizador es necesario para crear interfaz dinámica con acciones periódicas.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea ActionListener: <code>ActionListener task = new ActionListener() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void actionPerformed(ActionEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Tic!");<br>
&nbsp;&nbsp;}<br>
};</code></li>
  <li>Crea temporizador: <code>Timer timer = new Timer(1000, task);</code></li>
  <li>Inicia temporizador: <code>timer.start();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Especificar retraso en milisegundos</li>
  <li><strong>✅ Excelente:</strong> Usar <code>setRepeats(false)</code> para ejecución única, usar <code>setInitialDelay()</code> para retraso inicial</li>
  <li><strong>⚠️ Evita:</strong> Verificación demasiado frecuente — puede ser lento</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El temporizador se activará cada segundo. La acción se realizará periódicamente. Puedes crear animaciones, actualizaciones de interfaz.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (458, 'es', 'Temporizador Principiante: Crea Temporizador',
        'Crea ActionListener, crea Timer con retraso 1000 ms, inicia temporizador')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (459, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Detener y Reiniciar Temporizador</h2>
<p class="intro">El control del temporizador permite controlar ejecución de acciones. Puedes pausar animación, detener actualizaciones, reiniciar desde principio. Sin esto, temporizador funcionará constantemente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>stop()</code> — detener temporizador</li>
  <li>Método <code>restart()</code> — reiniciar temporizador</li>
  <li>Gestionar estado del temporizador</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El control del temporizador es necesario para controlar ejecución de acciones periódicas.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Detén temporizador: <code>timer.stop();</code></li>
  <li>Reinicia temporizador: <code>timer.restart();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>stop()</code> para detener</li>
  <li><strong>✅ Excelente:</strong> Usar <code>restart()</code> para reiniciar desde principio, verificar <code>isRunning()</code> antes de detener</li>
  <li><strong>⚠️ Evita:</strong> Detener temporizador ya detenido — seguro, pero redundante</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El temporizador puede detenerse y reiniciarse. La acción se pausará y reanudará.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (459, 'es', 'Temporizador Maestro: Detén y Reinicia Temporizador',
        'Detén temporizador vía stop(), luego reinicia vía restart()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (462, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Determinar Código de Tecla en KeyListener</h2>
<p class="intro">El código de tecla permite procesar teclas específicas. Enter para confirmar, Escape para cancelar, flechas para navegación — todo esto requiere determinar código. Sin esto, no puedes procesar tecla específica.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getKeyCode()</code> — código de tecla</li>
  <li>Constantes de código de tecla (VK_ENTER, VK_SPACE)</li>
  <li>Procesar teclas específicas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El código de tecla es necesario para procesar teclas específicas.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Maneja pulsación: <code>component.addKeyListener(new KeyAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void keyPressed(KeyEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;if (e.getKeyCode() == KeyEvent.VK_ENTER) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Enter pulsado!");<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getKeyCode()</code> para verificar</li>
  <li><strong>✅ Excelente:</strong> Usar constantes VK_* para teclas, procesar teclas de función, procesar flechas para navegación</li>
  <li><strong>⚠️ Evita:</strong> Ignorar código — pérdida de funcionalidad</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Puedes procesar teclas específicas. Cuando Enter se pulse, se ejecutará una acción, cuando Escape — otra.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (462, 'es', 'KeyListener Maestro: Determina Código de Tecla',
        'Agrega KeyListener, verifica getKeyCode() == VK_ENTER, muestra mensaje')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (460, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Crear Temporizador de Una Vez</h2>
<p class="intro">El temporizador de una vez permite realizar acción con retraso. Mostrar mensaje después de 3 segundos, cierre automático de ventana, ejecución retrasada — todo esto requiere temporizador de una vez. Sin esto, temporizador se repetirá infinitamente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setRepeats()</code> — establecer repetición</li>
  <li>Crear temporizador de una vez</li>
  <li>Usar temporizador para retrasos</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El temporizador de una vez es necesario para realizar acciones con retraso.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea temporizador: <code>Timer timer = new Timer(3000, e -> {<br>
&nbsp;&nbsp;label.setText("¡Pasaron 3 segundos!");<br>
});</code></li>
  <li>Desactiva repetición: <code>timer.setRepeats(false);</code></li>
  <li>Inicia temporizador: <code>timer.start();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setRepeats(false)</code> para ejecución única</li>
  <li><strong>✅ Excelente:</strong> Usar para retrasos antes de acciones, detener temporizador en manejador para confiabilidad</li>
  <li><strong>⚠️ Evita:</strong> Olvidar setRepeats(false) — se repetirá</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El temporizador se ejecutará una vez y se detendrá. La acción ocurrirá después del tiempo especificado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (460, 'es', 'Temporizador Maestro: Crea Temporizador de Una Vez',
        'Crea Timer con retraso 3000 ms, establece setRepeats(false), inicia temporizador')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (463, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Determinar Carácter de Tecla en KeyListener</h2>
<p class="intro">El carácter de tecla permite procesar texto. Puedes obtener carácter ingresado, procesar texto. Sin carácter, no puedes procesar entrada de texto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getKeyChar()</code> — obtener carácter</li>
  <li>Distinguir caracteres y códigos</li>
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
  <li>Maneja pulsación: <code>component.addKeyListener(new KeyAdapter() {<br>
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
  <li><strong>✅ Usa:</strong> <code>getKeyChar()</code> para obtener carácter</li>
  <li><strong>✅ Excelente:</strong> Usar <code>keyTyped()</code> para entrada de texto, procesar letras y números, filtrar caracteres</li>
  <li><strong>⚠️ Evita:</strong> Ignorar carácter — pérdida de funcionalidad</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Puedes obtener carácter ingresado. Al escribir, puedes determinar carácter.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (463, 'es', 'KeyListener Maestro: Determina Carácter de Tecla',
        'Agrega KeyListener, obtén carácter vía getKeyChar() en keyTyped(), muéstralo')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (461, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Establecer Retraso Inicial en Temporizador</h2>
<p class="intro">El retraso inicial permite retrasar inicio del temporizador. Mostrar mensaje después de 5 segundos, actualización automática después de carga, acciones retrasadas — todo esto requiere retraso inicial. Sin esto, temporizador comenzará inmediatamente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setInitialDelay()</code> — establecer retraso inicial</li>
  <li>Diferencia entre retraso inicial e intervalo</li>
  <li>Crear temporizadores con inicio retrasado</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El retraso inicial es necesario para inicio retrasado del temporizador.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea temporizador: <code>Timer timer = new Timer(1000, e -> {<br>
&nbsp;&nbsp;label.setText("¡Tic!");<br>
});</code></li>
  <li>Establece retraso inicial: <code>timer.setInitialDelay(5000);</code></li>
  <li>Inicia temporizador: <code>timer.start();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setInitialDelay()</code> para retrasar inicio</li>
  <li><strong>✅ Excelente:</strong> Establecer retraso e intervalo diferentes, usar para acciones retrasadas</li>
  <li><strong>⚠️ Evita:</strong> Retraso demasiado grande — usuario esperará</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El temporizador comenzará después del tiempo especificado. La primera ejecución ocurrirá después del retraso inicial, luego por intervalo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (461, 'es', 'Temporizador Maestro: Establece Retraso Inicial',
        'Crea Timer con intervalo 1000 ms, establece setInitialDelay(5000), inicia temporizador')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (464, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Determinar Modificadores en KeyListener</h2>
<p class="intro">Los modificadores permiten procesar combinaciones. Puedes determinar si Ctrl, Alt, Shift están pulsados, procesar combinaciones. Sin modificadores, no puedes procesar combinaciones.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getModifiersEx()</code> — obtener modificadores</li>
  <li>Verificar Ctrl, Alt, Shift</li>
  <li>Procesar combinaciones de teclas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los modificadores son necesarios para procesar combinaciones de teclas.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Maneja pulsación: <code>component.addKeyListener(new KeyAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void keyPressed(KeyEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;if ((e.getModifiersEx() & InputEvent.CTRL_DOWN_MASK) != 0) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Ctrl pulsado!");<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getModifiersEx()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Verificar CTRL_DOWN_MASK para Ctrl, verificar ALT_DOWN_MASK para Alt, verificar SHIFT_DOWN_MASK para Shift</li>
  <li><strong>⚠️ Evita:</strong> Ignorar modificadores</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Puedes determinar modificadores. Al pulsar, puedes saber si Ctrl, Alt, Shift están pulsados.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (464, 'es', 'KeyListener Maestro: Determina Modificadores',
        'Agrega KeyListener, verifica getModifiersEx() & CTRL_DOWN_MASK, muestra mensaje')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (465, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Determinar Ubicación de Tecla en KeyListener</h2>
<p class="intro">La ubicación de tecla permite distinguir posiciones. Puedes determinar si tecla izquierda o derecha está pulsada, procesar en consecuencia. Sin verificación, no puedes distinguir posiciones.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getKeyLocation()</code> — obtener ubicación</li>
  <li>Distinguir tecla izquierda y derecha</li>
  <li>Procesar ubicaciones diferentes</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La ubicación de tecla es necesaria para distinguir posiciones de teclas.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Maneja pulsación: <code>component.addKeyListener(new KeyAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void keyPressed(KeyEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;if (e.getKeyLocation() == KeyEvent.KEY_LOCATION_LEFT) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Tecla izquierda!");<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getKeyLocation()</code> para verificar</li>
  <li><strong>✅ Excelente:</strong> Verificar KEY_LOCATION_LEFT para izquierda, verificar KEY_LOCATION_RIGHT para derecha, verificar KEY_LOCATION_STANDARD para estándar</li>
  <li><strong>⚠️ Evita:</strong> Ignorar ubicación</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Puedes determinar ubicación de tecla. Al pulsar, puedes saber si tecla izquierda o derecha.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (465, 'es', 'KeyListener Maestro: Determina Ubicación de Tecla',
        'Agrega KeyListener, verifica getKeyLocation() == KEY_LOCATION_LEFT, muestra mensaje')
ON CONFLICT (task_id, language_code) DO NOTHING;
