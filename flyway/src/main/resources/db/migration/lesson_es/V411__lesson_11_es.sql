-- Flyway migration V4: Lesson 11
-- This migration contains lesson, tasks, and documentation for lesson 11

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (94, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear una lista de elementos</h2>
<p class="intro">Las listas (<code>JList</code>) muestran muchos elementos. Archivos, productos, usuarios — todo esto es conveniente mostrar en una lista. Las listas hacen los datos organizados y accesibles para selección.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>JList</code> — lista de elementos</li>
  <li>Crear una lista con datos</li>
  <li>Mostrar elementos en una lista</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Las listas permiten mostrar muchos elementos de forma organizada y proporcionan selección conveniente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea array de elementos: <code>String[] items = {"Elemento 1", "Elemento 2", "Elemento 3"};</code></li>
  <li>Crea lista: <code>JList&lt;String&gt; list = new JList&lt;&gt;(items);</code></li>
  <li>Añade al formulario: <code>add(list);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Crear con array de elementos</li>
  <li><strong>✅ Excelente:</strong> Usar <code>JList&lt;String&gt;</code> tipado, usar DefaultListModel para lista dinámica</li>
  <li><strong>⚠️ Evita:</strong> Lista vacía — el usuario no verá elementos</li>
</ul>
<p><strong>Importante:</strong> Puedes crear con array: <code>new JList&lt;&gt;(items)</code>. Puedes crear con modelo: <code>new JList&lt;&gt;(model)</code>. Obtener seleccionado: <code>String selected = list.getSelectedValue();</code>. Establecer seleccionado: <code>list.setSelectedIndex(0);</code>. Las listas es mejor colocarlas en JScrollPane para desplazamiento.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá una lista de elementos en el formulario. Es una lista vertical con elementos. Puedes seleccionar un elemento haciendo clic.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (94, 'es', 'Lista principiante: crea una lista de elementos',
        'Crea una lista con elementos "Elemento 1", "Elemento 2", "Elemento 3" y añádela al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (95, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Modo de selección en lista</h2>
<p class="intro">El modo de selección determina el comportamiento de la lista. Un archivo para abrir, varios archivos para eliminar — diferentes tareas requieren diferentes modos. El modo correcto hace la interfaz intuitiva.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setSelectionMode(int mode)</code> — establecer modo de selección</li>
  <li>Modos: <code>SINGLE_SELECTION</code>, <code>SINGLE_INTERVAL_SELECTION</code>, <code>MULTIPLE_INTERVAL_SELECTION</code></li>
  <li>Gestionar selección de elementos en lista</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El modo de selección correcto hace la interfaz intuitiva y coincide con las expectativas del usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea lista: <code>JList&lt;String&gt; list = new JList&lt;&gt;(items);</code></li>
  <li>Establece modo de selección: <code>list.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);</code></li>
  <li>Añade al formulario: <code>add(list);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>SINGLE_SELECTION</code> para seleccionar un elemento</li>
  <li><strong>✅ Excelente:</strong> <code>MULTIPLE_INTERVAL_SELECTION</code> para selección múltiple, <code>SINGLE_INTERVAL_SELECTION</code> para seleccionar rango</li>
  <li><strong>⚠️ Evita:</strong> Selección múltiple donde se necesita una — confunde al usuario</li>
</ul>
<p><strong>Importante:</strong> SINGLE_INTERVAL_SELECTION — seleccionar un rango (Shift+clic). MULTIPLE_INTERVAL_SELECTION — seleccionar varios elementos (Ctrl+clic). Usa SINGLE_SELECTION para casos simples.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La lista funcionará en el modo seleccionado. Puedes seleccionar un elemento, rango, o varios elementos.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (95, 'es', 'Modo de selección: uno o varios elementos',
        'Crea una lista, establece modo MULTIPLE_INTERVAL_SELECTION mediante setSelectionMode() y añádela al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (96, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Obtener elemento seleccionado</h2>
<p class="intro">Obtener elemento seleccionado permite procesar la selección del usuario. Puedes realizar acción con elemento seleccionado, actualizar otros componentes. Sin esto, la lista solo será para visualización.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>getSelectedValue()</code> — obtener elemento seleccionado</li>
  <li>El método <code>getSelectedIndex()</code> — obtener índice del elemento seleccionado</li>
  <li>Trabajar con elementos seleccionados</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Obtener elemento seleccionado es necesario para procesar acciones del usuario y actualizar la interfaz.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea lista: <code>JList&lt;String&gt; list = new JList&lt;&gt;(items);</code></li>
  <li>Obtén elemento seleccionado: <code>String selected = list.getSelectedValue();</code></li>
  <li>Usa elemento seleccionado: <code>JLabel label = new JLabel("Seleccionado: " + selected);<br>
add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getSelectedValue()</code> para obtener elemento, <code>getSelectedIndex()</code> para obtener índice</li>
  <li><strong>✅ Excelente:</strong> Verificar null antes de usar, usar en manejador de eventos</li>
  <li><strong>⚠️ Evita:</strong> Ignorar null — puede causar error</li>
</ul>
<p><strong>Importante:</strong> <code>getSelectedValuesList()</code> — obtener lista de elementos seleccionados. Usa en ListSelectionListener.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Puedes obtener elemento seleccionado. Al seleccionar, puedes averiguar qué elemento está seleccionado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (96, 'es', 'Elemento seleccionado: obtén elemento seleccionado',
        'Crea una lista, obtén elemento seleccionado mediante getSelectedValue(), muéstralo')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (97, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Manejar selección de elementos</h2>
<p class="intro">Manejar selección hace la lista interactiva. Puedes reaccionar a la selección del usuario, actualizar otros componentes, realizar acciones. Sin manejo, la selección no tendrá efecto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La interfaz <code>ListSelectionListener</code> — oyente de selección</li>
  <li>El método <code>addListSelectionListener()</code> — añadir oyente</li>
  <li>Manejar eventos de selección</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Manejar selección permite reaccionar a acciones del usuario y actualizar la interfaz en tiempo real.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea lista: <code>JList&lt;String&gt; list = new JList&lt;&gt;(items);</code></li>
  <li>Añade oyente: <code>list.addListSelectionListener(e -> {<br>
&nbsp;&nbsp;if (!e.getValueIsAdjusting()) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;String selected = list.getSelectedValue();<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Seleccionado: " + selected);<br>
&nbsp;&nbsp;}<br>
});</code></li>
  <li>Añade al formulario: <code>add(list);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addListSelectionListener()</code> para manejar</li>
  <li><strong>✅ Excelente:</strong> Verificar <code>getValueIsAdjusting()</code> para evitar múltiples eventos, actualizar otros componentes al seleccionar, usar expresiones lambda para brevedad</li>
  <li><strong>⚠️ Evita:</strong> Ignorar <code>getValueIsAdjusting()</code> — múltiples eventos</li>
</ul>
<p><strong>Importante:</strong> Verifica <code>getValueIsAdjusting()</code> para evitar eventos extra. Usa para actualizar otros componentes.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al seleccionar elemento, se activará el manejador. Puedes manejar la selección y realizar acciones.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (97, 'es', 'Oyente de selección: maneja selección de elementos',
        'Crea una lista, añade ListSelectionListener, verifica getValueIsAdjusting(), obtén elemento seleccionado y muéstralo')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (98, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Modelo de lista</h2>
<p class="intro">DefaultListModel permite gestionar elementos dinámicamente. Puedes añadir nuevos elementos, eliminar antiguos, cambiar lista durante la ejecución. Sin modelo, la lista es estática.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>DefaultListModel</code> — modelo de lista</li>
  <li>Métodos <code>addElement()</code>, <code>removeElement()</code>, <code>getElementAt()</code></li>
  <li>Gestión dinámica de elementos de lista</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>DefaultListModel permite cambiar lista dinámicamente durante la ejecución de la aplicación, lo cual es necesario para interfaces interactivas.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea modelo: <code>DefaultListModel&lt;String&gt; model = new DefaultListModel&lt;&gt;();</code></li>
  <li>Añade elementos: <code>model.addElement("Elemento 1");</code><br><code>model.addElement("Elemento 2");</code></li>
  <li>Crea lista con modelo: <code>JList&lt;String&gt; list = new JList&lt;&gt;(model);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> DefaultListModel para lista dinámica</li>
  <li><strong>✅ Excelente:</strong> Usar <code>addElement()</code> para añadir, <code>removeElement()</code> para eliminar, <code>getElementAt()</code> para obtener elemento</li>
  <li><strong>⚠️ Evita:</strong> Usar array para lista dinámica — incómodo</li>
</ul>
<p><strong>Importante:</strong> <code>getSize()</code> — obtener tamaño del modelo. Usa para listas que cambian durante la ejecución.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La lista funcionará con modelo. Puedes añadir y eliminar elementos dinámicamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (98, 'es', 'Modelo de lista: trabaja con DefaultListModel',
        'Crea DefaultListModel, añade elementos mediante addElement(), crea lista con modelo y añádela al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (99, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Lista con desplazamiento</h2>
<p class="intro">El desplazamiento permite mostrar listas largas. Cientos de elementos, miles de registros — todo esto es conveniente ver con desplazamiento. Sin desplazamiento, la lista larga no cabrá en pantalla.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>JScrollPane</code> — panel con desplazamiento</li>
  <li>Añadir lista a JScrollPane</li>
  <li>Crear lista con desplazamiento</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El desplazamiento es necesario para mostrar listas largas y mejorar la experiencia del usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea lista: <code>JList&lt;String&gt; list = new JList&lt;&gt;(items);</code></li>
  <li>Crea panel con desplazamiento: <code>JScrollPane scrollPane = new JScrollPane(list);</code></li>
  <li>Añade al formulario: <code>add(scrollPane);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Siempre usar JScrollPane para listas</li>
  <li><strong>✅ Excelente:</strong> Configurar tamaños del panel con desplazamiento, usar <code>setPreferredSize()</code> para tamaño</li>
  <li><strong>⚠️ Evita:</strong> Lista sin desplazamiento — puede no caber</li>
</ul>
<p><strong>Importante:</strong> Configura tamaños para comodidad.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La lista será desplazable. Si hay muchos elementos, aparecerá la barra de desplazamiento. Puedes desplazar la lista.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (99, 'es', 'Lista con desplazamiento: añade desplazamiento',
        'Crea una lista, envuélvela en JScrollPane y añádela al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (100, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Selección múltiple</h2>
<p class="intro">La selección múltiple permite trabajar con varios elementos. Eliminar varios archivos, seleccionar varios productos — todo esto requiere selección múltiple. Sin esto, tendrás que seleccionar uno por uno.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>getSelectedValuesList()</code> — obtener lista de elementos seleccionados</li>
  <li>El método <code>getSelectedIndices()</code> — obtener índices de elementos seleccionados</li>
  <li>Trabajar con selección múltiple</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La selección múltiple es necesaria para operaciones masivas y mejorar la eficiencia del trabajo del usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea lista con selección múltiple: <code>JList&lt;String&gt; list = new JList&lt;&gt;(items);</code><br><code>list.setSelectionMode(ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);</code></li>
  <li>Obtén todos los elementos seleccionados: <code>List&lt;String&gt; selected = list.getSelectedValuesList();</code></li>
  <li>Usa elementos seleccionados: <code>JLabel label = new JLabel();<br>
for (String item : selected) {<br>
&nbsp;&nbsp;label.setText("Seleccionado: " + item);<br>
}<br>
add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getSelectedValuesList()</code> para obtener lista, <code>getSelectedIndices()</code> para obtener índices</li>
  <li><strong>✅ Excelente:</strong> Verificar que la lista no esté vacía, usar en manejador de eventos</li>
  <li><strong>⚠️ Evita:</strong> Ignorar lista vacía</li>
</ul>
<p><strong>Importante:</strong> <code>isSelectionEmpty()</code> — verificar si hay selección. Verifica vacío antes de usar. Usa para operaciones múltiples.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Puedes obtener todos los elementos seleccionados. Con selección múltiple, puedes procesar todos los elementos seleccionados.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (100, 'es', 'Selección múltiple: obtén todos los elementos seleccionados',
        'Crea una lista con MULTIPLE_INTERVAL_SELECTION, obtén todos los elementos seleccionados mediante getSelectedValuesList() y muéstralos')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Spanish)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
