-- Flyway migration V4: Lesson 49
-- This migration contains lesson, tasks, and documentation for lesson 49

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (437, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Manejar Selección de Elementos con ItemListener</h2>
<p class="intro">ItemListener permite responder a selección. Puedes manejar selección en casilla, botón de radio, cuadro combinado, actualizar otros componentes. Sin manejo, selección no tendrá efecto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Interfaz <code>ItemListener</code> — oyente de selección</li>
  <li>Método <code>itemStateChanged(ItemEvent)</code> — manejar cambio</li>
  <li>Usar con JCheckBox, JRadioButton, JComboBox</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>ItemListener es necesario para manejar selección de elementos y actualizar otros componentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega oyente: <code>checkBox.addItemListener(e -> {<br>
&nbsp;&nbsp;if (e.getStateChange() == ItemEvent.SELECTED) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Seleccionado!");<br>
&nbsp;&nbsp;} else {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Deseleccionado!");<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addItemListener()</code> para manejar</li>
  <li><strong>✅ Excelente:</strong> Usar <code>getStateChange()</code> para verificar, usar ItemEvent.SELECTED y DESELECTED, actualizar otros componentes</li>
  <li><strong>⚠️ Evita:</strong> Ignorar estado</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Cuando cambie selección, se activará manejador. Puedes manejar selección y actualizar otros componentes.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (437, 'es', 'ItemListener Principiante: Manejar Selección de Elementos',
        'Crea casilla, agrega ItemListener, verifica getStateChange() == ItemEvent.SELECTED, muestra mensaje')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (438, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Manejar Cambios con ChangeListener</h2>
<p class="intro">ChangeListener permite responder a cambios. Puedes manejar cambio de deslizador, selector, barra de progreso, actualizar otros componentes. Sin manejo, cambios no tendrán efecto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Interfaz <code>ChangeListener</code> — oyente de cambios</li>
  <li>Método <code>stateChanged(ChangeEvent)</code> — manejar cambio</li>
  <li>Usar con JSlider, JSpinner, JProgressBar</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>ChangeListener es necesario para manejar cambios de valores y actualizar otros componentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega oyente: <code>slider.addChangeListener(e -> {<br>
&nbsp;&nbsp;int value = slider.getValue();<br>
&nbsp;&nbsp;label.setText("Valor: " + value);<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addChangeListener()</code> para manejar</li>
  <li><strong>✅ Excelente:</strong> Usar <code>getValue()</code> para obtener valor, actualizar otros componentes, realizar acciones al cambiar</li>
  <li><strong>⚠️ Evita:</strong> Ignorar cambios</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Cuando cambie valor, se activará manejador. Puedes manejar cambio y actualizar otros componentes.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (438, 'es', 'ChangeListener Principiante: Manejar Cambios',
        'Crea deslizador, agrega ChangeListener, obtén valor vía getValue(), muéstralo')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (439, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Manejar Selección en Cuadro Combinado con ItemListener</h2>
<p class="intro">Manejar selección permite responder a selección de elemento. Puedes actualizar otros componentes, cargar datos, realizar acciones. Sin manejo, selección no tendrá efecto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Manejar selección en JComboBox</li>
  <li>Obtener elemento seleccionado</li>
  <li>Responder a cambio de selección</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Manejar selección es necesario para responder a selección de elemento en cuadro combinado.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega oyente: <code>comboBox.addItemListener(e -> {<br>
&nbsp;&nbsp;if (e.getStateChange() == ItemEvent.SELECTED) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;Object item = e.getItem();<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Seleccionado: " + item);<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addItemListener()</code> para manejar</li>
  <li><strong>✅ Excelente:</strong> Usar <code>getItem()</code> para obtener elemento, actualizar otros componentes, cargar datos al seleccionar</li>
  <li><strong>⚠️ Evita:</strong> Ignorar selección</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al seleccionar elemento, se activará manejador. Puedes manejar selección y actualizar otros componentes.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (439, 'es', 'ItemListener Maestro: Manejar Selección en Cuadro Combinado',
        'Crea cuadro combinado con elementos, agrega ItemListener, obtén elemento vía getItem(), muéstralo')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (440, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Manejar Cambios en Selector con ChangeListener</h2>
<p class="intro">Manejar cambios permite responder a cambio de valor. Puedes actualizar otros componentes, realizar validación, realizar acciones. Sin manejo, cambio no tendrá efecto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Manejar cambios en JSpinner</li>
  <li>Obtener valor de selector</li>
  <li>Responder a cambio de valor</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Manejar cambios es necesario para responder a cambio de valor en selector.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega oyente: <code>spinner.addChangeListener(e -> {<br>
&nbsp;&nbsp;Object value = spinner.getValue();<br>
&nbsp;&nbsp;label.setText("Valor: " + value);<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addChangeListener()</code> para manejar</li>
  <li><strong>✅ Excelente:</strong> Usar <code>getValue()</code> para obtener valor, actualizar otros componentes, realizar validación</li>
  <li><strong>⚠️ Evita:</strong> Ignorar cambios</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Cuando cambie valor, se activará manejador. Puedes manejar cambio y actualizar otros componentes.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (440, 'es', 'ChangeListener Maestro: Manejar Cambios en Selector',
        'Crea selector, agrega ChangeListener, obtén valor vía getValue(), muéstralo')
ON CONFLICT (task_id, language_code) DO NOTHING;
