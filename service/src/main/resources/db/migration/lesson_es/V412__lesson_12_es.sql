-- Flyway migration V4: Lesson 12
-- This migration contains lesson, tasks, and documentation for lesson 12

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (101, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Manejar estado de botón de alternancia</h2>
<p class="intro">Manejar estado hace el botón de alternancia interactivo. Puedes actualizar otros componentes, realizar acciones, cambiar modos. Sin esto, el botón de alternancia solo será para visualización.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>Manejar estado mediante ActionListener</li>
  <li>El método <code>isSelected()</code> — verificar estado</li>
  <li>Reaccionar a alternancia</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Manejar estado permite reaccionar a acciones del usuario y actualizar la interfaz en tiempo real.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Añade oyente: <code>JLabel label = new JLabel();<br>
toggleButton.addActionListener(e -> {<br>
&nbsp;&nbsp;if (toggleButton.isSelected()) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Habilitado!");<br>
&nbsp;&nbsp;} else {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Deshabilitado!");<br>
&nbsp;&nbsp;}<br>
});<br>
add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>isSelected()</code> para verificar</li>
  <li><strong>✅ Excelente:</strong> Actualizar otros componentes al alternar, usar ItemListener para manejo más preciso</li>
  <li><strong>⚠️ Evita:</strong> Ignorar estado — pérdida de funcionalidad</li>
</ul>
<p><strong>Importante:</strong> <code>setSelected(boolean)</code> — establecer estado. Usa para cambiar modos.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al alternar, se activará el manejador. Puedes verificar el estado y realizar acciones.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (101, 'es', 'Botón de alternancia maestro: maneja estado',
        'Añade ActionListener, verifica isSelected(), muestra mensaje según estado')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (102, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Mnemónica para botón de alternancia</h2>
<p class="intro">La mnemónica acelera el trabajo. Puedes activar el botón de alternancia mediante Alt+letra, sin usar el ratón. Sin mnemónica, tendrás que hacer clic con el ratón.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setMnemonic()</code> — establecer mnemónica</li>
  <li>Subrayar letra en el texto</li>
  <li>Crear botones de alternancia accesibles</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La mnemónica mejora la accesibilidad y acelera el trabajo para usuarios experimentados.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece mnemónica: <code>toggleButton.setMnemonic(KeyEvent.VK_T);</code></li>
  <li>Añade subrayado en texto: <code>toggleButton.setText("Habilitar (&T)");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMnemonic()</code> para establecer, KeyEvent.VK_* para teclas</li>
  <li><strong>✅ Excelente:</strong> Mostrar mnemónica en texto mediante &, usar primera letra de la palabra</li>
  <li><strong>⚠️ Evita:</strong> Duplicar mnemónicas</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>En el texto del botón de alternancia, la letra estará subrayada. Puedes activar el botón de alternancia mediante Alt+letra.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (102, 'es', 'Botón de alternancia maestro: añade mnemónica',
        'Establece mnemónica VK_T mediante setMnemonic(), añade &T en texto del botón de alternancia')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (103, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Manejar cambio de estado</h2>
<p class="intro">Manejar estado hace el botón de alternancia interactivo. Puedes reaccionar a la alternancia, actualizar otros componentes. Sin manejo, la alternancia no tendrá efecto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>Manejar cambios mediante ItemListener</li>
  <li>Obtener estado</li>
  <li>Reaccionar a alternancia</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Manejar cambios de estado permite sincronizar la interfaz y reaccionar a acciones del usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Añade oyente: <code>toggleButton.addItemListener(e -> {<br>
&nbsp;&nbsp;boolean selected = toggleButton.isSelected();<br>
&nbsp;&nbsp;label.setText("Habilitado: " + selected);<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addItemListener()</code> para manejar</li>
  <li><strong>✅ Excelente:</strong> Usar <code>isSelected()</code> para verificar, <code>getStateChange()</code> para cambio, actualizar otros componentes</li>
  <li><strong>⚠️ Evita:</strong> Ignorar estado</li>
</ul>
<p><strong>Importante:</strong> Usa para sincronizar componentes de la interfaz.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al cambiar el estado, se activará el manejador. Puedes manejar la alternancia y actualizar otros componentes.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (103, 'es', 'Botón de alternancia maestro: maneja cambio de estado',
        'Añade ItemListener, verifica isSelected(), muestra estado')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (104, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Comando de acción de botón de alternancia</h2>
<p class="intro">El comando de acción permite identificar el botón de alternancia. Puedes determinar qué botón de alternancia está alternado sin verificar la fuente. Sin comando, tendrás que verificar la fuente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setActionCommand()</code> — establecer comando</li>
  <li>El método <code>getActionCommand()</code> — obtener comando</li>
  <li>Identificar botón de alternancia mediante comando</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El comando de acción simplifica la identificación del botón de alternancia en manejadores de eventos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece comando: <code>toggleButton.setActionCommand("ALTERNAR");</code></li>
  <li>Obtén comando en manejador: <code>toggleButton.addActionListener(e -> {<br>
&nbsp;&nbsp;String cmd = e.getActionCommand();<br>
&nbsp;&nbsp;label.setText("Comando: " + cmd);<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setActionCommand()</code> para establecer, <code>getActionCommand()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar comandos claros, usar para identificación</li>
  <li><strong>⚠️ Evita:</strong> Duplicar comandos</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>En el manejador, puedes obtener el comando. Al alternar, puedes determinar el comando.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (104, 'es', 'Botón de alternancia maestro: establece comando de acción',
        'Establece comando "ALTERNAR" mediante setActionCommand(), obtén comando en ActionListener mediante getActionCommand()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (105, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Fuente de botón de alternancia</h2>
<p class="intro">La fuente mejora la apariencia visual. Puedes establecer la fuente necesaria, tamaño, estilo, mejorar la legibilidad. Sin establecer, la fuente será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setFont()</code> — establecer fuente</li>
  <li>Mejorar apariencia visual</li>
  <li>Personalizar texto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Establecer fuente permite mejorar la apariencia visual y legibilidad del texto en el botón de alternancia.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea fuente: <code>Font font = new Font("Serif", Font.PLAIN, 16);</code></li>
  <li>Establece fuente: <code>toggleButton.setFont(font);</code></li>
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
<p>El texto del botón de alternancia estará con la fuente establecida. Puedes mejorar la apariencia visual.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (105, 'es', 'Botón de alternancia maestro: establece fuente',
        'Crea fuente new Font("Serif", Font.PLAIN, 16), establece mediante setFont()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (106, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Dibujo de borde de botón de alternancia</h2>
<p class="intro">El dibujo del borde afecta la apariencia visual. Puedes mostrar u ocultar el borde, mejorar el diseño. Sin establecer, el borde será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setBorderPainted()</code> — establecer dibujo de borde</li>
  <li>Gestionar visibilidad del borde</li>
  <li>Mejorar apariencia visual</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Gestionar el dibujo del borde permite mejorar la apariencia visual y diseño del botón de alternancia.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece dibujo: <code>toggleButton.setBorderPainted(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setBorderPainted()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar true para mostrar, false para ocultar, mejorar apariencia visual</li>
  <li><strong>⚠️ Evita:</strong> Ocultar sin necesidad</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El borde se mostrará u ocultará. Puedes mejorar la apariencia visual.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (106, 'es', 'Botón de alternancia maestro: establece dibujo de borde',
        'Establece dibujo true mediante setBorderPainted()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Spanish)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
