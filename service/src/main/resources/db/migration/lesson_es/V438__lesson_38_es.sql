-- Flyway migration V4: Lesson 38
-- This migration contains lesson, tasks, and documentation for lesson 38

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (317, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Colocar Componentes en Fila con FlowLayout</h2>
<p class="intro">FlowLayout — diseño más simple. Componentes se alinean en fila y se envuelven automáticamente. Perfecto para barras de herramientas, botones, formularios simples. Este es diseño por defecto para JPanel.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>FlowLayout</code> — administrador de diseño en fila</li>
  <li>Crear FlowLayout</li>
  <li>Disposición automática de componentes</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>FlowLayout es necesario para diseño simple en fila de componentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece FlowLayout: <code>setLayout(new FlowLayout());</code></li>
  <li>Agrega componentes: <code>add(new JButton("Botón 1"));</code><br>
<code>add(new JButton("Botón 2"));</code><br>
<code>add(new JButton("Botón 3"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Para paneles simples</li>
  <li><strong>✅ Excelente:</strong> Configurar alineación, configurar espacios</li>
  <li><strong>⚠️ Evita:</strong> Para interfaces complejas mejor usar otros diseños</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componentes se alinearán en fila. Se colocarán uno tras otro de izquierda a derecha. Si no caben — se envolverán a nueva línea.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (317, 'es', 'FlowLayout Principiante: Colocar Componentes en Fila', 'Establece FlowLayout y agrega tres botones')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (318, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Agregar Acelerador a Elemento de Menú</h2>
<p class="intro">Los aceleradores aceleran trabajo. Puedes realizar acción sin abrir menú, lo cual es muy rápido. Sin ellos, tendrás que siempre abrir menú.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setAccelerator()</code> — establecer acelerador</li>
  <li>Clase <code>KeyStroke</code> — combinación de teclas</li>
  <li>Crear teclas de acceso rápido para elementos de menú</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los aceleradores son necesarios para acelerar trabajo con menú.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea combinación de teclas: <code>KeyStroke stroke = KeyStroke.getKeyStroke(KeyEvent.VK_S, InputEvent.CTRL_DOWN_MASK);</code></li>
  <li>Establece acelerador: <code>menuItem.setAccelerator(stroke);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setAccelerator()</code> para tecla de acceso rápido</li>
  <li><strong>✅ Excelente:</strong> Usar combinaciones estándar (Ctrl+S, Ctrl+C, Ctrl+V), mostrar acelerador en texto de menú</li>
  <li><strong>⚠️ Evita:</strong> Usar combinaciones no estándar — usuario no recordará</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Elemento de menú mostrará etiqueta con combinación de teclas. Puedes presionar Ctrl+tecla para realizar acción.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (318, 'es', 'Elemento de Menú Maestro: Agregar Acelerador',
        'Crea KeyStroke para Ctrl+S vía getKeyStroke(), establece acelerador vía setAccelerator()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (319, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Habilitar y Deshabilitar Elemento de Menú</h2>
<p class="intro">Habilitar/deshabilitar elementos hace menú contextual. Puedes deshabilitar comandos no disponibles, habilitar cuando sea necesario. Sin esto, usuario puede intentar realizar comando no disponible.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setEnabled()</code> — habilitar/deshabilitar</li>
  <li>Gestionar disponibilidad de elementos de menú</li>
  <li>Cambio dinámico de estado</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Gestionar disponibilidad de elementos de menú es necesario para crear interfaz contextual.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Deshabilita elemento: <code>menuItem.setEnabled(false);</code></li>
  <li>O habilita: <code>menuItem.setEnabled(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setEnabled(false)</code> para deshabilitar</li>
  <li><strong>✅ Excelente:</strong> Cambiar estado dinámicamente, deshabilitar comandos no disponibles, habilitar cuando cambie estado</li>
  <li><strong>⚠️ Evita:</strong> Siempre deshabilitado — puede ser poco claro</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Elemento de menú se volverá no disponible. Elemento deshabilitado será gris e inactivo. Puedes habilitar cuando sea necesario.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (319, 'es', 'Elemento de Menú Maestro: Habilitar y Deshabilitar Elemento',
        'Deshabilita elemento vía setEnabled(false), luego habilita vía setEnabled(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (320, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Agregar Sugerencia a Elemento de Menú</h2>
<p class="intro">La sugerencia proporciona información adicional. Puedes mostrar descripción de comando, teclas de acceso rápido. Sin sugerencia, usuario no verá información adicional.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setToolTipText()</code> — establecer sugerencia</li>
  <li>Crear elementos de menú informativos</li>
  <li>Mejorar experiencia de usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La sugerencia es necesaria para proporcionar información adicional sobre elemento de menú.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece sugerencia: <code>menuItem.setToolTipText("Guardar documento");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setToolTipText()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar sugerencias claras, usar para descripción, usar para teclas de acceso rápido</li>
  <li><strong>⚠️ Evita:</strong> Sugerencias demasiado largas</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Sugerencia aparecerá al pasar el mouse. Puedes mostrar descripción de comando.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (320, 'es', 'Elemento de Menú Maestro: Agregar Sugerencia',
        'Establece sugerencia "Guardar documento" vía setToolTipText()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (324, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Agregar Sugerencia a JRadioButtonMenuItem</h2>
<p class="intro">La sugerencia mejora informatividad. Puedes agregar descripción de elemento de menú, mejorar comprensión. Sin sugerencia, usuario puede no entender propósito.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setToolTipText()</code> — establecer sugerencia</li>
  <li>Mejorar informatividad</li>
  <li>Crear interfaz clara</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La sugerencia es necesaria para mejorar informatividad de elemento de menú.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece sugerencia: <code>radioButtonMenuItem.setToolTipText("Seleccionar tema");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setToolTipText()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar textos claros, usar para mejorar informatividad, mejorar comprensión</li>
  <li><strong>⚠️ Evita:</strong> Sugerencias demasiado largas</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Sugerencia aparecerá al pasar el mouse. Puedes mejorar informatividad.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (324, 'es', 'Elemento de Menú Radio Maestro: Agregar Sugerencia',
        'Establece sugerencia "Seleccionar tema" vía setToolTipText()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (321, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Agregar Acelerador a Elemento de Menú (Extendido)</h2>
<p class="intro">El acelerador acelera trabajo. Puedes activar elemento de menú vía combinación de teclas, sin abrir menú. Sin acelerador, tendrás que abrir menú.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setAccelerator()</code> — establecer acelerador</li>
  <li>Clase <code>KeyStroke</code> — combinación de teclas</li>
  <li>Crear teclas rápidas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los aceleradores son necesarios para acelerar trabajo con menú.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea combinación: <code>KeyStroke keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_S, InputEvent.CTRL_DOWN_MASK);</code></li>
  <li>Establece acelerador: <code>menuItem.setAccelerator(keyStroke);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setAccelerator()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar <code>KeyStroke.getKeyStroke()</code> para crear, usar CTRL, ALT, SHIFT, usar combinaciones estándar</li>
  <li><strong>⚠️ Evita:</strong> Duplicar combinaciones</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Combinación de teclas aparecerá en menú. Puedes activar elemento vía combinación.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (321, 'es', 'Elemento de Menú Maestro: Agregar Acelerador',
        'Crea KeyStroke para Ctrl+S vía getKeyStroke(), establece vía setAccelerator()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (322, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Agregar Icono a Elemento de Menú</h2>
<p class="intro">El icono mejora legibilidad. Puedes mostrar elemento visual, mejorar comprensión de propósito de elemento. Sin icono, elemento será solo con texto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setIcon()</code> — establecer icono</li>
  <li>Crear elementos visualmente estilizados</li>
  <li>Mejorar legibilidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El icono es necesario para mejorar legibilidad y estilo visual de elementos de menú.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece icono: <code>menuItem.setIcon(new ImageIcon("icon.png"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setIcon()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar ImageIcon para cargar, usar para estilo visual, usar iconos claros</li>
  <li><strong>⚠️ Evita:</strong> Iconos demasiado grandes — puede ser feo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Elemento de menú tendrá icono. Elemento tendrá elemento visual.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (322, 'es', 'Elemento de Menú Maestro: Agregar Icono', 'Establece icono vía setIcon() con ImageIcon')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (323, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Establecer Comando de Acción para JRadioButtonMenuItem</h2>
<p class="intro">El comando de acción permite identificar elemento de menú. Puedes determinar qué elemento está seleccionado sin verificar fuente. Sin comando, tendrás que verificar fuente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setActionCommand()</code> — establecer comando</li>
  <li>Método <code>getActionCommand()</code> — obtener comando</li>
  <li>Identificar elemento de menú vía comando</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El comando de acción es necesario para identificar elemento de menú en manejador.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece comando: <code>radioButtonMenuItem.setActionCommand("RADIO");</code></li>
  <li>Obtén comando en manejador: <code>radioButtonMenuItem.addActionListener(e -> {<br>
&nbsp;&nbsp;String cmd = e.getActionCommand();<br>
&nbsp;&nbsp;label.setText("Comando: " + cmd);<br>
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
<p>Podrás obtener comando en manejador. Al seleccionar, puedes determinar comando.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (323, 'es', 'Menú Radio Maestro: Establecer Comando de Acción',
        'Establece comando "RADIO" vía setActionCommand(), obtén comando en ActionListener vía getActionCommand()')
ON CONFLICT (task_id, language_code) DO NOTHING;
