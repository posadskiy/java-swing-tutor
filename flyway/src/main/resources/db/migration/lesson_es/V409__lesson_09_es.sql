-- Flyway migration V4: Lesson 9
-- This migration contains lesson, tasks, and documentation for lesson 9

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (74, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear un botón de alternancia</h2>
<p class="intro">Los botones de alternancia (<code>JToggleButton</code>) permiten activar y desactivar funciones. "Texto en negrita", "Cursiva", "Subrayado" — todo esto son botones de alternancia. Permanecen en el estado seleccionado hasta la siguiente pulsación.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>JToggleButton</code> — botón de alternancia</li>
  <li>Crear un botón de alternancia</li>
  <li>Dos estados: presionado/no presionado</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los botones de alternancia permiten activar y desactivar funciones con una pulsación. Permanecen en el estado seleccionado hasta la siguiente pulsación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea un botón de alternancia: <code>JToggleButton toggle = new JToggleButton("Habilitar");</code></li>
  <li>Añade al formulario: <code>add(toggle);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Crear con texto: <code>new JToggleButton("Texto")</code></li>
  <li><strong>✅ Excelente:</strong> Usar icono para distinción visual de estados</li>
  <li><strong>⚠️ Evita:</strong> Botón de alternancia vacío — propósito poco claro</li>
</ul>
<p><strong>Importante:</strong> El botón de alternancia tiene dos estados: seleccionado/no seleccionado. Verificar estado: <code>toggle.isSelected()</code>. Establecer estado: <code>toggle.setSelected(true)</code>. Similar a JCheckBox, pero parece un botón. Se puede agrupar mediante <code>ButtonGroup</code> para selección única.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un botón de alternancia en el formulario. Es un botón que permanece presionado después de hacer clic. Al hacer clic de nuevo, se suelta.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (74, 'es', 'Botón de alternancia principiante: crea un botón de alternancia',
        'Crea un botón de alternancia con texto "Habilitar" y añádelo al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (75, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Manejar clics en casilla de verificación</h2>
<p class="intro">Manejar clics hace la casilla de verificación interactiva. Puedes actualizar otros componentes, realizar acciones, mostrar/ocultar elementos. Sin esto, la casilla de verificación solo será para visualización.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>Añadir <code>ActionListener</code> a casilla de verificación</li>
  <li>Manejar clics en casilla de verificación</li>
  <li>Reaccionar a cambios de estado</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Manejar clics permite reaccionar a acciones del usuario y actualizar la interfaz en tiempo real.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Añade oyente: <code>JLabel label = new JLabel();<br>
checkBox.addActionListener(e -> {<br>
&nbsp;&nbsp;if (checkBox.isSelected()) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Casilla seleccionada!");<br>
&nbsp;&nbsp;} else {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Casilla desmarcada!");<br>
&nbsp;&nbsp;}<br>
});<br>
add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addActionListener()</code> para manejar</li>
  <li><strong>✅ Excelente:</strong> Verificar <code>isSelected()</code> para determinar estado, actualizar otros componentes al cambiar</li>
  <li><strong>⚠️ Evita:</strong> Ignorar estado — pérdida de funcionalidad</li>
</ul>
<p><strong>Importante:</strong> <code>setSelected(boolean)</code> — establecer estado programáticamente. Puedes usar ItemListener en lugar de ActionListener. ActionListener se activa al hacer clic.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al hacer clic en la casilla de verificación, se activará el manejador. Puedes verificar el estado y realizar acciones.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (75, 'es', 'Casilla de verificación maestra: maneja clics',
        'Añade ActionListener a casilla de verificación, verifica isSelected(), muestra mensaje según estado')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (76, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Posición de texto en casilla de verificación</h2>
<p class="intro">La posición del texto hace las casillas de verificación flexibles. Puedes colocar texto a la izquierda o derecha. Sin establecer, el texto estará a la derecha por defecto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setHorizontalTextPosition()</code> — posición del texto</li>
  <li>Configurar ubicación del texto relativa a la casilla de verificación</li>
  <li>Crear ubicación personalizada</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Configurar la posición del texto permite crear una interfaz más flexible y personalizada.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece posición del texto: <code>checkBox.setHorizontalTextPosition(SwingConstants.LEFT);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> LEFT para texto a la izquierda, RIGHT para texto a la derecha (por defecto)</li>
  <li><strong>✅ Excelente:</strong> CENTER para centrar, LEADING/TRAILING para dirección del texto</li>
  <li><strong>⚠️ Evita:</strong> Cambiar posición frecuentemente — puede ser inesperado</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El texto estará en la posición especificada. El texto puede estar a la izquierda o derecha de la casilla de verificación.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (76, 'es', 'Casilla de verificación maestra: configura posición del texto',
        'Establece posición del texto LEFT mediante setHorizontalTextPosition()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (77, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Modelo de estado de casilla de verificación</h2>
<p class="intro">El modelo de estado permite controlar el estado. Puedes obtener modelo, cambiarlo, crear modelo personalizado. Sin modelo, no puedes controlar el estado programáticamente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>getModel()</code> — obtener modelo</li>
  <li>El método <code>setModel()</code> — establecer modelo</li>
  <li>Trabajar con ButtonModel</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Trabajar con el modelo de estado permite controlar programáticamente el estado de la casilla de verificación y crear modelos personalizados.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén modelo: <code>ButtonModel model = checkBox.getModel();</code></li>
  <li>Establece estado: <code>model.setSelected(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getModel()</code> para obtener, <code>setModel()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Crear modelos personalizados, usar para gestión programática</li>
  <li><strong>⚠️ Evita:</strong> Cambiar modelo directamente — puede ser inesperado</li>
</ul>
<p><strong>Importante:</strong> <code>isSelected()</code> — verificar estado. Usa para gestión programática.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Puedes gestionar el estado a través del modelo. El estado se puede cambiar programáticamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (77, 'es', 'Casilla de verificación maestra: trabaja con modelo de estado',
        'Obtén modelo mediante getModel(), establece estado true mediante setSelected()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (78, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Mnemónica para casilla de verificación</h2>
<p class="intro">La mnemónica acelera el trabajo. Puedes activar la casilla de verificación mediante Alt+letra, sin usar el ratón. Sin mnemónica, tendrás que hacer clic con el ratón.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setMnemonic()</code> — establecer mnemónica</li>
  <li>Subrayar letra en el texto</li>
  <li>Crear casillas de verificación accesibles</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La mnemónica mejora la accesibilidad y acelera el trabajo para usuarios experimentados.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece mnemónica: <code>checkBox.setMnemonic(KeyEvent.VK_C);</code></li>
  <li>Añade subrayado en texto: <code>checkBox.setText("De acuerdo (&C)");</code></li>
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
<p>En el texto de la casilla de verificación, la letra estará subrayada. Puedes activar la casilla de verificación mediante Alt+letra.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (78, 'es', 'Casilla de verificación maestra: añade mnemónica',
        'Establece mnemónica VK_C mediante setMnemonic(), añade &C en texto de casilla de verificación')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (79, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Manejar cambios de estado</h2>
<p class="intro">Manejar estado hace la casilla de verificación interactiva. Puedes reaccionar a la selección, actualizar otros componentes. Sin manejo, la selección no tendrá efecto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>Manejar cambios mediante ItemListener</li>
  <li>Obtener estado</li>
  <li>Reaccionar a cambios</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Manejar cambios de estado permite reaccionar a acciones del usuario y sincronizar la interfaz.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Añade oyente: <code>checkBox.addItemListener(e -> {<br>
&nbsp;&nbsp;boolean selected = checkBox.isSelected();<br>
&nbsp;&nbsp;label.setText("Seleccionado: " + selected);<br>
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
<p>Al cambiar el estado, se activará el manejador. Puedes manejar la selección y actualizar otros componentes.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (79, 'es', 'Casilla de verificación maestra: maneja cambios de estado',
        'Añade ItemListener, verifica isSelected(), muestra estado')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (80, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Casilla de verificación de tres estados</h2>
<p class="intro">La casilla de verificación de tres estados añade estado indeterminado. Puedes mostrar que la selección no se ha hecho, mejorar la experiencia del usuario. Sin tres estados, solo dos estados.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setModel()</code> — establecer modelo</li>
  <li>La clase <code>JToggleButton.ToggleButtonModel</code> — modelo de botón de alternancia</li>
  <li>Crear casilla de verificación de tres estados</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La casilla de verificación de tres estados permite mostrar estado indeterminado, lo que mejora la experiencia del usuario en algunos escenarios.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea modelo: <code>ButtonModel model = new JToggleButton.ToggleButtonModel();</code></li>
  <li>Establece modelo: <code>checkBox.setModel(model);</code></li>
  <li>Establece estado indeterminado: <code>checkBox.getModel().setPressed(true);<br>
checkBox.getModel().setArmed(true);<br>
checkBox.getModel().setSelected(false);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setModel()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar para estado indeterminado, combinar estados, usar para mejorar UX</li>
  <li><strong>⚠️ Evita:</strong> Estados demasiado complejos</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La casilla de verificación será de tres estados. Puedes mostrar estado indeterminado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (80, 'es', 'Casilla de verificación maestra: haz de tres estados',
        'Crea ToggleButtonModel, establece mediante setModel(), configura estados para indeterminado')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (81, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Agrupar casillas de verificación</h2>
<p class="intro">La agrupación mejora la organización. Puedes vincular lógicamente casillas de verificación, mejorar la comprensión. Sin agrupación, las casillas de verificación estarán dispersas.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>Agrupación lógica de casillas de verificación</li>
  <li>Crear grupos de casillas de verificación relacionadas</li>
  <li>Mejorar organización de la interfaz</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Agrupar casillas de verificación relacionadas mejora la organización de la interfaz y simplifica el manejo de elementos lógicamente relacionados.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea grupo: <code>List&lt;JCheckBox&gt; group = Arrays.asList(checkBox1, checkBox2, checkBox3);</code></li>
  <li>Maneja grupo: <code>group.forEach(cb -> cb.addItemListener(e -> updateGroup()));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Colecciones para agrupar</li>
  <li><strong>✅ Excelente:</strong> Usar para vinculación lógica, manejar grupo junto, mejorar organización</li>
  <li><strong>⚠️ Evita:</strong> Agrupar casillas de verificación no relacionadas</li>
</ul>
<p><strong>Importante:</strong> Agrupa casillas de verificación lógicamente relacionadas. Haz grupos claros.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Las casillas de verificación estarán agrupadas lógicamente. Puedes manejar el grupo junto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (81, 'es', 'Casilla de verificación maestra: agrupa casillas de verificación',
        'Crea lista de casillas de verificación, añade ItemListener a todas mediante forEach()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (82, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Fuente de casilla de verificación</h2>
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
<p>Establecer fuente permite mejorar la apariencia visual y legibilidad del texto en la casilla de verificación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea fuente: <code>Font font = new Font("Arial", Font.BOLD, 14);</code></li>
  <li>Establece fuente: <code>checkBox.setFont(font);</code></li>
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
<p>El texto de la casilla de verificación estará con la fuente establecida. Puedes mejorar la apariencia visual.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (82, 'es', 'Casilla de verificación maestra: establece fuente',
        'Crea fuente new Font("Arial", Font.BOLD, 14), establece mediante setFont()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Spanish)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
