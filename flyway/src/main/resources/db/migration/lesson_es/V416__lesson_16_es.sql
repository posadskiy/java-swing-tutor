-- Flyway migration V4: Lesson 16
-- This migration contains lesson, tasks, and documentation for lesson 16

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (129, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear un panel</h2>
<p class="intro">Los paneles (<code>JPanel</code>) organizan la interfaz. Sin paneles, todos los componentes estarían en un solo lugar. Los paneles permiten agrupar componentes, crear estructura y aplicar diferentes gestores de diseño.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>JPanel</code> — contenedor para componentes</li>
  <li>Crear un panel</li>
  <li>Añadir componentes al panel</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los paneles son necesarios para organizar la interfaz y agrupar componentes relacionados.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea panel: <code>JPanel panel = new JPanel();</code></li>
  <li>Añade componentes al panel: <code>panel.add(new JButton("Botón"));</code></li>
  <li>Añade panel al formulario: <code>add(panel);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Crear panel, luego añadir componentes</li>
  <li><strong>✅ Excelente:</strong> Usar paneles para agrupar componentes relacionados</li>
  <li><strong>⚠️ Evita:</strong> Demasiados paneles anidados — difícil de gestionar</li>
</ul>
<p><strong>Importante:</strong> El panel es un contenedor donde puedes añadir otros componentes. Puedes anidar paneles dentro de otros para estructura compleja. Cada panel puede tener su propio gestor de diseño. Puedes establecer color de fondo: <code>panel.setBackground(Color.WHITE);</code>. Puedes establecer borde: <code>panel.setBorder(BorderFactory.createTitledBorder("Título"));</code>.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un panel en el formulario. Es un contenedor donde puedes añadir componentes. Los componentes se ubicarán según el gestor de diseño del panel.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (129, 'es', 'Panel principiante: crea un contenedor para componentes',
        'Crea un panel, añade un botón a él y añade el panel al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (130, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Crear selector con modelo</h2>
<p class="intro">JSpinner permite cambiar el valor paso a paso. Cantidad, edad, tamaño — todo esto requiere selector. Sin él, tendrás que introducir el número manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>JSpinner</code> — selector</li>
  <li>La clase <code>SpinnerNumberModel</code> — modelo de números</li>
  <li>Crear selector con rango</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El selector simplifica la selección de valores numéricos y previene errores de entrada.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea modelo: <code>SpinnerNumberModel model = new SpinnerNumberModel(10, 0, 100, 1);</code></li>
  <li>Crea selector: <code>JSpinner spinner = new JSpinner(model);</code></li>
  <li>Añade al formulario: <code>add(spinner);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> SpinnerNumberModel para números</li>
  <li><strong>✅ Excelente:</strong> Especificar min, max, paso en el modelo, usar SpinnerDateModel para fechas, usar SpinnerListModel para lista</li>
  <li><strong>⚠️ Evita:</strong> Paso demasiado grande — difícil seleccionar valor exacto</li>
</ul>
<p><strong>Importante:</strong> <code>getValue()</code> — obtener valor. <code>setValue(Object)</code> — establecer valor.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un selector con botones arriba/abajo. Puedes aumentar y disminuir el valor.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (130, 'es', 'Selector principiante: crea selector con modelo',
        'Crea SpinnerNumberModel con valor 10, min 0, max 100, paso 1, crea JSpinner del modelo, añade al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (131, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Gestor de diseño</h2>
<p class="intro">Los gestores de diseño organizan automáticamente los componentes. Sin ellos, los componentes se superpondrían. Con gestor, se organizan según reglas. Esta es la base de una interfaz profesional.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setLayout(LayoutManager layout)</code> — establecer gestor de diseño</li>
  <li>Varios gestores de diseño: <code>FlowLayout</code>, <code>BorderLayout</code>, <code>GridLayout</code></li>
  <li>Gestionar ubicación de componentes</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los gestores de diseño aseguran la ubicación correcta de componentes y adaptabilidad de la interfaz.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea panel: <code>JPanel panel = new JPanel();</code></li>
  <li>Establece gestor de diseño: <code>panel.setLayout(new FlowLayout());</code></li>
  <li>Añade componentes: <code>panel.add(new JButton("Botón 1"));</code><br><code>panel.add(new JButton("Botón 2"));</code></li>
  <li>Añade panel al formulario: <code>add(panel);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>FlowLayout</code> para ubicación simple</li>
  <li><strong>✅ Excelente:</strong> <code>BorderLayout</code> para interfaz estructurada, <code>GridLayout</code> para ubicación tabular</li>
  <li><strong>⚠️ Evita:</strong> Sin diseño — los componentes se superpondrán</li>
</ul>
<p><strong>Importante:</strong> <code>FlowLayout</code> — componentes en fila, se envuelven cuando falta espacio. <code>BorderLayout</code> — componentes en los bordes (NORTH, SOUTH, EAST, WEST, CENTER). <code>GridLayout</code> — componentes en cuadrícula (filas × columnas). Por defecto <code>JPanel</code> usa <code>FlowLayout</code>.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Los componentes se ubicarán según el gestor de diseño. Si usaste <code>FlowLayout</code>, se alinearán en fila. Si <code>BorderLayout</code> — en los bordes.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (131, 'es', 'Gestor de diseño: gestiona ubicación',
        'Crea un panel, establece FlowLayout, añade dos botones y añade el panel al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (132, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Selector para fechas</h2>
<p class="intro">El selector para fechas permite seleccionar fecha paso a paso. Cumpleaños, plazo, fecha de evento — todo esto requiere selección de fecha. Sin selector, tendrás que introducir la fecha manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>SpinnerDateModel</code> — modelo de fechas</li>
  <li>Crear selector para selección de fechas</li>
  <li>Configurar formato de fecha</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El selector para fechas simplifica la selección de fecha y previene errores de entrada.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea modelo de fechas: <code>SpinnerDateModel model = new SpinnerDateModel();</code></li>
  <li>Crea selector: <code>JSpinner spinner = new JSpinner(model);</code></li>
  <li>Configura formato: <code>JSpinner.DateEditor editor = new JSpinner.DateEditor(spinner, "dd/MM/yyyy");<br>
spinner.setEditor(editor);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> SpinnerDateModel para fechas</li>
  <li><strong>✅ Excelente:</strong> Configurar formato mediante DateEditor, especificar fechas min y max, usar Calendar para trabajar con fechas</li>
  <li><strong>⚠️ Evita:</strong> No especificar formato — puede ser poco claro</li>
</ul>
<p><strong>Importante:</strong> <code>getValue()</code> — obtener Date. Usa SimpleDateFormat para formatear.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un selector para selección de fecha. Puedes aumentar y disminuir la fecha. La fecha se mostrará en el formato especificado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (132, 'es', 'Selector maestro: crea selector para fechas',
        'Crea SpinnerDateModel, crea JSpinner, crea DateEditor con formato "dd/MM/yyyy", establece editor')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (133, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Selector con lista</h2>
<p class="intro">El selector con lista limita la selección. Solo puedes seleccionar de valores predefinidos. Sin lista, puedes introducir cualquier valor.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>SpinnerListModel</code> — modelo de lista</li>
  <li>Crear selector con lista de valores</li>
  <li>Navegar por la lista</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El selector con lista limita la selección a valores válidos y previene errores de entrada.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea lista: <code>String[] values = {"Enero", "Febrero", "Marzo"};</code></li>
  <li>Crea modelo: <code>SpinnerListModel model = new SpinnerListModel(values);</code></li>
  <li>Crea selector: <code>JSpinner spinner = new JSpinner(model);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> SpinnerListModel para lista</li>
  <li><strong>✅ Excelente:</strong> Usar array o lista, usar para selección limitada, usar para meses, días de la semana</li>
  <li><strong>⚠️ Evita:</strong> Lista demasiado larga — puede ser incómodo</li>
</ul>
<p><strong>Importante:</strong> SpinnerListModel(Object[]) — crear de array. SpinnerListModel(List) — crear de lista. Haz la lista clara.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un selector con lista de valores. Solo puedes seleccionar de la lista. Puedes navegar por la lista.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (133, 'es', 'Selector maestro: crea selector con lista',
        'Crea array de cadenas, crea SpinnerListModel, crea JSpinner con modelo')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (134, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Selector para números</h2>
<p class="intro">El selector para números limita la selección. Solo puedes seleccionar de un rango de números, establecer paso. Sin modelo, puedes introducir cualquier valor.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>SpinnerNumberModel</code> — modelo de números</li>
  <li>Crear selector para valores numéricos</li>
  <li>Configurar rango y paso</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El selector para números limita la selección a valores válidos y previene errores de entrada.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea modelo: <code>SpinnerNumberModel model = new SpinnerNumberModel(0, 0, 100, 1);</code></li>
  <li>Crea selector: <code>JSpinner spinner = new JSpinner(model);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> SpinnerNumberModel para números</li>
  <li><strong>✅ Excelente:</strong> Especificar valor inicial, especificar min y max, especificar paso</li>
  <li><strong>⚠️ Evita:</strong> No especificar rango — puede ser inseguro</li>
</ul>
<p><strong>Importante:</strong> value — valor inicial. min — valor mínimo. max — valor máximo. step — paso de cambio.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un selector para números. Solo puedes seleccionar del rango. Puedes cambiar el valor con el paso especificado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (134, 'es', 'Selector maestro: crea selector para números',
        'Crea SpinnerNumberModel con inicial 0, min 0, max 100, paso 1, crea JSpinner con modelo')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (135, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Manejar cambios de selector</h2>
<p class="intro">Manejar cambios hace el selector interactivo. Puedes reaccionar al cambio de valor, actualizar otros componentes. Sin manejo, los cambios no tendrán efecto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>Manejar cambios mediante ChangeListener</li>
  <li>Obtener nuevo valor</li>
  <li>Reaccionar a cambios</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Manejar cambios permite sincronizar la interfaz y reaccionar a acciones del usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Añade oyente: <code>spinner.addChangeListener(e -> {<br>
&nbsp;&nbsp;Object value = spinner.getValue();<br>
&nbsp;&nbsp;label.setText("Valor: " + value);<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addChangeListener()</code> para manejar</li>
  <li><strong>✅ Excelente:</strong> Obtener nuevo valor mediante <code>getValue()</code>, actualizar otros componentes, validar valor</li>
  <li><strong>⚠️ Evita:</strong> Ignorar cambios</li>
</ul>
<p><strong>Importante:</strong> Usa para sincronizar componentes de la interfaz.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al cambiar el valor, se activará el manejador. Puedes obtener el nuevo valor y actualizar otros componentes.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (135, 'es', 'Selector maestro: maneja cambios',
        'Añade ChangeListener, obtén valor mediante getValue(), muéstralo')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (136, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Selector para fechas (extendido)</h2>
<p class="intro">El selector para fechas limita la selección. Solo puedes seleccionar fecha, establecer paso de cambio. Sin modelo, puedes introducir cualquier valor.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>SpinnerDateModel</code> — modelo de fechas</li>
  <li>Crear selector para fechas</li>
  <li>Configurar paso y formato</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El selector para fechas simplifica la selección de fecha y previene errores de entrada.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea modelo: <code>SpinnerDateModel model = new SpinnerDateModel();</code></li>
  <li>Crea selector: <code>JSpinner spinner = new JSpinner(model);</code></li>
  <li>Configura editor: <code>JSpinner.DateEditor editor = new JSpinner.DateEditor(spinner, "dd.MM.yyyy");<br>
spinner.setEditor(editor);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> SpinnerDateModel para fechas</li>
  <li><strong>✅ Excelente:</strong> Usar DateEditor para formato, especificar formato de fecha, configurar paso de cambio</li>
  <li><strong>⚠️ Evita:</strong> No especificar formato — puede ser ilegible</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un selector para fechas. Puedes seleccionar fecha con el formato especificado. Puedes cambiar la fecha con el paso especificado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (136, 'es', 'Selector maestro: crea selector para fechas',
        'Crea SpinnerDateModel, crea JSpinner con modelo, crea DateEditor con formato "dd.MM.yyyy", establece mediante setEditor()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (137, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Formateador personalizado de selector</h2>
<p class="intro">El formateador personalizado permite personalizar la visualización. Puedes mostrar valores en el formato necesario, mejorar la legibilidad. Sin formateador, la visualización será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>JSpinner.DefaultEditor</code> — editor por defecto</li>
  <li>El método <code>setEditor()</code> — establecer editor</li>
  <li>Crear formateo personalizado</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El formateador personalizado mejora la legibilidad y permite mostrar valores en el formato necesario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea formateador: <code>JSpinner.NumberEditor editor = new JSpinner.NumberEditor(spinner, "#,##0.00");</code></li>
  <li>Establece editor: <code>spinner.setEditor(editor);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> NumberEditor para números</li>
  <li><strong>✅ Excelente:</strong> Usar DateEditor para fechas, usar formato personalizado, usar para mejorar legibilidad</li>
  <li><strong>⚠️ Evita:</strong> Formato demasiado complejo</li>
</ul>
<p><strong>Importante:</strong> Usa para formatear y mejorar legibilidad.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El valor se mostrará en formato personalizado. Puedes mostrar números con separadores, fechas en el formato necesario.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (137, 'es', 'Selector maestro: crea formateador personalizado',
        'Crea NumberEditor con formato "#,##0.00", establece mediante setEditor()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (138, 'es', '<div class="lesson-header">
<h2>🎮 Lección 10: Paso de selector</h2>
<p class="intro">El paso define el incremento. Puedes establecer el paso de cambio, mejorar el control. Sin paso, el incremento será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>SpinnerNumberModel</code> — modelo de números</li>
  <li>Parámetro stepSize — tamaño del paso</li>
  <li>Gestionar paso de cambio</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Establecer paso permite controlar el incremento del valor y mejorar la experiencia del usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea modelo con paso: <code>SpinnerNumberModel model = new SpinnerNumberModel(0, 0, 100, 5);</code></li>
  <li>Establece modelo: <code>spinner.setModel(model);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> SpinnerNumberModel para números</li>
  <li><strong>✅ Excelente:</strong> Especificar paso en constructor, usar para control, mejorar experiencia del usuario</li>
  <li><strong>⚠️ Evita:</strong> Paso demasiado grande o pequeño</li>
</ul>
<p><strong>Importante:</strong> step — tamaño del paso. Haz el paso razonable.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al cambiar, el valor cambiará por el paso. Puedes controlar el incremento.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (138, 'es', 'Selector maestro: establece paso',
        'Crea SpinnerNumberModel(0, 0, 100, 5), establece mediante setModel()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (139, 'es', '<div class="lesson-header">
<h2>🎮 Lección 11: Establecer valor de selector</h2>
<p class="intro">El valor define el estado actual. Puedes establecer el valor inicial, cambiarlo, mejorar el control. Sin establecer, el valor será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setValue()</code> — establecer valor</li>
  <li>El método <code>getValue()</code> — obtener valor</li>
  <li>Gestionar valor de selector</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Gestionar el valor permite controlar programáticamente el estado del selector.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece valor: <code>spinner.setValue(50);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setValue()</code> para establecer, <code>getValue()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar para control, mejorar experiencia del usuario</li>
  <li><strong>⚠️ Evita:</strong> Establecer valor fuera del rango</li>
</ul>
<p><strong>Importante:</strong> Verifica límites antes de establecer valor.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El valor del selector se establecerá. Puedes controlar el valor.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (139, 'es', 'Selector maestro: establece valor', 'Establece valor 50 mediante setValue()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (140, 'es', '<div class="lesson-header">
<h2>🎮 Lección 12: Obtener editor de selector</h2>
<p class="intro">El editor permite gestionar el campo de texto. Puedes acceder al campo de texto, cambiarlo, mejorar la funcionalidad. Sin acceso, no puedes gestionar el campo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>getEditor()</code> — obtener editor</li>
  <li>Acceder al campo de texto del selector</li>
  <li>Mejorar funcionalidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El acceso al editor permite personalizar el campo de texto y mejorar la funcionalidad del selector.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén editor: <code>JSpinner.DefaultEditor editor = (JSpinner.DefaultEditor) spinner.getEditor();</code></li>
  <li>Obtén campo de texto: <code>JTextField field = editor.getTextField();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getEditor()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Convertir a DefaultEditor, usar <code>getTextField()</code> para campo, mejorar funcionalidad</li>
  <li><strong>⚠️ Evita:</strong> Cambiar sin necesidad</li>
</ul>
<p><strong>Importante:</strong> DefaultEditor — editor por defecto. Usa para control y mejorar funcionalidad.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Puedes acceder al campo de texto. Puedes gestionar el campo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (140, 'es', 'Selector maestro: obtén editor',
        'Obtén editor mediante getEditor(), convierte a DefaultEditor, obtén campo de texto mediante getTextField()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Spanish)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
