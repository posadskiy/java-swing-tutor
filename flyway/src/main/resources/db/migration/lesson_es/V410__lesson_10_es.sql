-- Flyway migration V4: Lesson 10
-- This migration contains lesson, tasks, and documentation for lesson 10

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (83, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear una lista desplegable</h2>
<p class="intro">Las listas desplegables (<code>JComboBox</code>) ahorran espacio. En lugar de muchos botones de radio — una lista compacta. Países, ciudades, categorías — todo esto es conveniente seleccionar de una lista.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>JComboBox</code> — lista desplegable</li>
  <li>Crear una lista con elementos</li>
  <li>Seleccionar un elemento de la lista</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Las listas desplegables ahorran espacio y simplifican la selección de muchas opciones.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea array de elementos: <code>String[] items = {"Opción 1", "Opción 2", "Opción 3"};</code></li>
  <li>Crea lista desplegable: <code>JComboBox&lt;String&gt; combo = new JComboBox&lt;&gt;(items);</code></li>
  <li>Añade al formulario: <code>add(combo);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Crear con array de elementos</li>
  <li><strong>✅ Excelente:</strong> Usar <code>JComboBox&lt;String&gt;</code> tipado</li>
  <li><strong>⚠️ Evita:</strong> Lista vacía — el usuario no podrá seleccionar</li>
</ul>
<p><strong>Importante:</strong> Puedes crear vacía: <code>new JComboBox&lt;&gt;()</code> y añadir elementos después. Añadir elemento: <code>combo.addItem("Nuevo elemento");</code>. Obtener seleccionado: <code>String selected = (String) combo.getSelectedItem();</code>. Establecer seleccionado: <code>combo.setSelectedItem("Opción 1");</code>. Puedes hacer editable: <code>combo.setEditable(true);</code>.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá una lista desplegable en el formulario. Es un campo con un botón con flecha hacia abajo. Al hacer clic, se abrirá la lista de opciones. Puedes seleccionar una opción.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (83, 'es', 'Lista desplegable principiante: crea una lista de selección',
        'Crea una lista desplegable con elementos "Opción 1", "Opción 2", "Opción 3" y añádela al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (84, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Lista editable</h2>
<p class="intro">Las listas editables dan más flexibilidad. El usuario puede seleccionar de opciones sugeridas o introducir la suya. Es como autocompletado con posibilidad de personalización.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setEditable(boolean editable)</code> — habilitar edición</li>
  <li>Listas desplegables editables</li>
  <li>Combinación de selección e introducción</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Las listas editables permiten al usuario seleccionar de opciones sugeridas o introducir la suya, lo que aumenta la flexibilidad de la interfaz.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea lista desplegable: <code>JComboBox&lt;String&gt; combo = new JComboBox&lt;&gt;(items);</code></li>
  <li>Haz editable: <code>combo.setEditable(true);</code></li>
  <li>Añade al formulario: <code>add(combo);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setEditable(true)</code> para introducción flexible</li>
  <li><strong>✅ Excelente:</strong> Combinación de lista y campo de texto</li>
  <li><strong>⚠️ Evita:</strong> Lista editable sin elementos — funciona como campo de texto</li>
</ul>
<p><strong>Importante:</strong> <code>setEditable(false)</code> — solo selección de lista (por defecto). Obtener texto introducido: <code>String text = (String) combo.getSelectedItem();</code>. Usa para campos donde son posibles tanto valores estándar como personalizados.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La lista se volverá editable. El usuario puede hacer clic en el campo e introducir su texto, o seleccionar de la lista desplegable.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (84, 'es', 'Lista editable: permite introducción de texto',
        'Crea una lista desplegable, hazla editable y añádela al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (85, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Modo de selección en lista</h2>
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
  <li><strong>✅ Excelente:</strong> <code>MULTIPLE_INTERVAL_SELECTION</code> para selección múltiple</li>
  <li><strong>⚠️ Evita:</strong> Selección múltiple donde se necesita una — confunde al usuario</li>
</ul>
<p><strong>Importante:</strong> <code>SINGLE_INTERVAL_SELECTION</code> — un rango continuo. Usa <code>SINGLE_SELECTION</code> para acciones con un elemento. Usa <code>MULTIPLE_INTERVAL_SELECTION</code> para operaciones masivas.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La lista funcionará en el modo especificado. Si elegiste <code>SINGLE_SELECTION</code>, solo se puede seleccionar un elemento. Si <code>MULTIPLE_INTERVAL_SELECTION</code> — varios con Ctrl/Cmd.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (85, 'es', 'Modo de selección: uno o varios elementos',
        'Crea una lista, establece modo de selección única y añádela al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (86, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Grupo de botones de radio</h2>
<p class="intro">Los grupos de botones de radio crean selección mutuamente excluyente. Género, edad, categoría — todo esto requiere seleccionar una opción. Sin grupo, se pueden seleccionar varios botones simultáneamente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>ButtonGroup</code> — grupo de botones</li>
  <li>El método <code>add()</code> — añadir botones al grupo</li>
  <li>Crear opciones mutuamente excluyentes</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El grupo asegura selección mutuamente excluyente, lo cual es crítico para el funcionamiento correcto de los botones de radio.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea grupo: <code>ButtonGroup group = new ButtonGroup();</code></li>
  <li>Añade botones: <code>group.add(radio1);</code><br><code>group.add(radio2);</code><br><code>group.add(radio3);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> ButtonGroup para agrupar</li>
  <li><strong>✅ Excelente:</strong> Añadir todos los botones de radio a un grupo, usar diferentes grupos para diferentes categorías</li>
  <li><strong>⚠️ Evita:</strong> No usar grupos — se pueden seleccionar varios</li>
</ul>
<p><strong>Importante:</strong> Solo un botón en el grupo puede estar seleccionado. El grupo no es visual, solo lógico.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Solo un botón de radio en el grupo puede estar seleccionado. Al seleccionar otro botón, el anterior se deseleccionará automáticamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (86, 'es', 'Botón de radio maestro: crea grupo de botones',
        'Crea ButtonGroup, añade tres botones de radio al grupo mediante add()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (87, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Icono de botón de radio</h2>
<p class="intro">Los iconos hacen los botones de radio visualmente atractivos. Puedes mostrar diferentes iconos para estado seleccionado y no seleccionado. Sin iconos, los botones de radio serán solo de texto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setIcon()</code> — establecer icono</li>
  <li>El método <code>setSelectedIcon()</code> — icono al seleccionar</li>
  <li>Crear botones de radio visualmente atractivos</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los iconos mejoran la percepción visual y permiten distinguir estados del botón de radio.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece icono: <code>radioButton.setIcon(new ImageIcon("unselected.png"));</code></li>
  <li>Establece icono de selección: <code>radioButton.setSelectedIcon(new ImageIcon("selected.png"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setIcon()</code> para icono regular, <code>setSelectedIcon()</code> para seleccionado</li>
  <li><strong>✅ Excelente:</strong> Usar <code>setPressedIcon()</code> para presionado, combinar icono y texto</li>
  <li><strong>⚠️ Evita:</strong> Iconos demasiado grandes — puede ser desordenado</li>
</ul>
<p><strong>Importante:</strong> <code>setDisabledIcon()</code> — establecer icono deshabilitado. Usa diferentes iconos para diferentes estados.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un icono en el botón de radio. Al seleccionar, el icono cambiará. Puedes crear botones de radio visualmente atractivos.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (87, 'es', 'Botón de radio maestro: añade icono',
        'Establece icono mediante setIcon(), establece icono de selección mediante setSelectedIcon()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (88, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Añadir botones de radio a grupo</h2>
<p class="intro">El grupo hace los botones mutuamente excluyentes. Solo un botón del grupo puede estar seleccionado. Sin grupo, se pueden seleccionar varios botones simultáneamente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>ButtonGroup</code> — grupo de botones</li>
  <li>El método <code>add()</code> — añadir al grupo</li>
  <li>Crear botones mutuamente excluyentes</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El grupo asegura selección mutuamente excluyente, lo cual es necesario para el funcionamiento correcto de los botones de radio.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea grupo: <code>ButtonGroup group = new ButtonGroup();</code></li>
  <li>Añade botones: <code>group.add(radioButton1);</code><br><code>group.add(radioButton2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> ButtonGroup para agrupar</li>
  <li><strong>✅ Excelente:</strong> Añadir todos los botones de radio al grupo, usar para opciones mutuamente excluyentes</li>
  <li><strong>⚠️ Evita:</strong> Añadir a varios grupos — puede ser inesperado</li>
</ul>
<p><strong>Importante:</strong> <code>remove()</code> — eliminar botón. <code>getButtonCount()</code> — obtener cantidad. Usa para opciones mutuamente excluyentes.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Los botones estarán en un grupo. Solo un botón del grupo puede estar seleccionado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (88, 'es', 'Botón de radio maestro: añade al grupo',
        'Crea ButtonGroup, añade dos botones de radio mediante add()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (89, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Mnemónica para botón de radio</h2>
<p class="intro">La mnemónica acelera el trabajo. Puedes activar el botón de radio mediante Alt+letra, sin usar el ratón. Sin mnemónica, tendrás que hacer clic con el ratón.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setMnemonic()</code> — establecer mnemónica</li>
  <li>Subrayar letra en el texto</li>
  <li>Crear botones de radio accesibles</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La mnemónica mejora la accesibilidad y acelera el trabajo para usuarios experimentados.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece mnemónica: <code>radioButton.setMnemonic(KeyEvent.VK_R);</code></li>
  <li>Añade subrayado en texto: <code>radioButton.setText("Rojo (&R)");</code></li>
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
<p>En el texto del botón de radio, la letra estará subrayada. Puedes activar el botón de radio mediante Alt+letra.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (89, 'es', 'Botón de radio maestro: añade mnemónica',
        'Establece mnemónica VK_R mediante setMnemonic(), añade &R en texto del botón de radio')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (90, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Manejar cambio de estado de botón de radio</h2>
<p class="intro">Manejar estado hace el botón de radio interactivo. Puedes reaccionar a la selección, actualizar otros componentes. Sin manejo, la selección no tendrá efecto.</p>
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
  <li>Añade oyente: <code>radioButton.addItemListener(e -> {<br>
&nbsp;&nbsp;if (e.getStateChange() == ItemEvent.SELECTED) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Seleccionado!");<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addItemListener()</code> para manejar</li>
  <li><strong>✅ Excelente:</strong> Usar <code>getStateChange()</code> para verificar, verificar SELECTED para selección, actualizar otros componentes</li>
  <li><strong>⚠️ Evita:</strong> Ignorar estado</li>
</ul>
<p><strong>Importante:</strong> SELECTED — seleccionado, DESELECTED — deseleccionado. Usa para sincronización.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al cambiar el estado, se activará el manejador. Puedes manejar la selección y actualizar otros componentes.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (90, 'es', 'Botón de radio maestro: maneja cambio de estado',
        'Añade ItemListener, verifica getStateChange() == SELECTED, muestra mensaje')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (91, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Comando de acción de botón de radio</h2>
<p class="intro">El comando de acción permite identificar el botón de radio. Puedes determinar qué botón de radio está seleccionado sin verificar la fuente. Sin comando, tendrás que verificar la fuente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setActionCommand()</code> — establecer comando</li>
  <li>El método <code>getActionCommand()</code> — obtener comando</li>
  <li>Identificar botón de radio mediante comando</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El comando de acción simplifica la identificación del botón de radio en manejadores de eventos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece comando: <code>radioButton.setActionCommand("OPCION1");</code></li>
  <li>Obtén comando en manejador: <code>radioButton.addActionListener(e -> {<br>
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
<p>En el manejador, puedes obtener el comando. Al seleccionar, puedes determinar el comando.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (91, 'es', 'Botón de radio maestro: establece comando de acción',
        'Establece comando "OPCION1" mediante setActionCommand(), obtén comando en ActionListener mediante getActionCommand()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (92, 'es', '<div class="lesson-header">
<h2>🎮 Lección 10: Fuente de botón de radio</h2>
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
<p>Establecer fuente permite mejorar la apariencia visual y legibilidad del texto en el botón de radio.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea fuente: <code>Font font = new Font("Arial", Font.ITALIC, 12);</code></li>
  <li>Establece fuente: <code>radioButton.setFont(font);</code></li>
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
<p>El texto del botón de radio estará con la fuente establecida. Puedes mejorar la apariencia visual.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (92, 'es', 'Botón de radio maestro: establece fuente',
        'Crea fuente new Font("Arial", Font.ITALIC, 12), establece mediante setFont()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (93, 'es', '<div class="lesson-header">
<h2>🎮 Lección 11: Dibujo de borde de botón de radio</h2>
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
<p>Gestionar el dibujo del borde permite mejorar la apariencia visual y diseño del botón de radio.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece dibujo: <code>radioButton.setBorderPainted(true);</code></li>
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
VALUES (93, 'es', 'Botón de radio maestro: establece dibujo de borde',
        'Establece dibujo true mediante setBorderPainted()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Spanish)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
