-- Flyway migration V4: Lesson 46
-- This migration contains lesson, tasks, and documentation for lesson 46

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (406, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Responder a Clics de Ratón con MouseListener</h2>
<p class="intro">MouseListener hace componentes interactivos. Puedes responder a clics, determinar posición de cursor, distinguir botones izquierdo y derecho. Sin oyente de ratón, componente no puede responder a acciones de usuario.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Interfaz <code>MouseListener</code> — manejador de eventos de ratón</li>
  <li>Método <code>addMouseListener()</code> — agregar oyente</li>
  <li>Eventos: clic, presionar, soltar, entrar, salir</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>MouseListener es necesario para crear componentes interactivos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea componente (ej., JPanel): <code>JPanel panel = new JPanel();</code></li>
  <li>Agrega oyente de ratón: <code>panel.addMouseListener(new MouseAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void mouseClicked(MouseEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Clic en posición: " + e.getX() + ", " + e.getY());<br>
&nbsp;&nbsp;}<br>
});</code></li>
  <li>Agrega a formulario: <code>add(panel);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>MouseAdapter</code> para simplificación</li>
  <li><strong>✅ Excelente:</strong> Lambda para acciones simples (si se soporta), clase separada para lógica compleja</li>
  <li><strong>⚠️ Evita:</strong> Implementar todos los métodos MouseListener — mucho código</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al hacer clic en componente, se ejecutará acción. Si usaste JLabel, mensaje con coordenadas de clic aparecerá en pantalla. Componente ahora responde a ratón.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (406, 'es', 'Oyente de Ratón Principiante: Responder a Clics de Ratón',
        'Crea panel, agrega MouseListener que muestra "¡Clic!" al hacer clic, y agrega a formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (407, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Crear Botones de Radio en Menú con JRadioButtonMenuItem</h2>
<p class="intro">JRadioButtonMenuItem permite seleccionar una opción de grupo en menú. Tamaño de fuente, tema, modo de visualización — todo esto requiere seleccionar una opción. Sin ellos, tendrás que crear diálogos separados.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>JRadioButtonMenuItem</code> — botón de radio en menú</li>
  <li>Crear grupo de botones de radio en menú</li>
  <li>Agregar a menú</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>JRadioButtonMenuItem es necesario para seleccionar una opción de grupo en menú.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea grupo: <code>ButtonGroup group = new ButtonGroup();</code></li>
  <li>Crea elementos de radio: <code>JRadioButtonMenuItem item1 = new JRadioButtonMenuItem("Pequeño");<br>
JRadioButtonMenuItem item2 = new JRadioButtonMenuItem("Mediano");</code></li>
  <li>Agrega a grupo y menú: <code>group.add(item1);<br>
group.add(item2);<br>
menu.add(item1);<br>
menu.add(item2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> ButtonGroup para agrupar</li>
  <li><strong>✅ Excelente:</strong> Establecer seleccionado por defecto vía <code>setSelected()</code>, agregar ActionListener para manejo</li>
  <li><strong>⚠️ Evita:</strong> No usar grupo — se pueden seleccionar varios</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Botones de radio aparecerán en menú. Puedes seleccionar una opción, otra se deseleccionará automáticamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (407, 'es', 'Elemento de Radio de Menú Principiante: Crear Botones de Radio en Menú',
        'Crea ButtonGroup, crea dos JRadioButtonMenuItem, agrega a grupo y menú')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (408, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Manejar Selección en JRadioButtonMenuItem</h2>
<p class="intro">Manejar selección hace elemento de radio interactivo. Puedes actualizar otros componentes, aplicar configuraciones, realizar acciones. Sin esto, selección no tendrá efecto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Manejar selección vía ActionListener</li>
  <li>Determinar elemento seleccionado</li>
  <li>Responder a selección</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Manejar selección es necesario para crear elemento de radio interactivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega oyente: <code>item.addActionListener(e -> {<br>
&nbsp;&nbsp;if (item.isSelected()) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Seleccionado: " + item.getText());<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>isSelected()</code> para verificar</li>
  <li><strong>✅ Excelente:</strong> Obtener texto vía <code>getText()</code>, actualizar otros componentes, usar ItemListener para manejo más preciso</li>
  <li><strong>⚠️ Evita:</strong> Ignorar selección — pérdida de funcionalidad</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al seleccionar, se activará manejador. Puedes obtener elemento seleccionado y realizar acciones.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (408, 'es', 'Elemento de Radio de Menú Maestro: Manejar Selección',
        'Agrega ActionListener, verifica isSelected(), muestra texto de elemento vía getText()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (409, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Crear Diálogo de Confirmación con JOptionPane</h2>
<p class="intro">Los diálogos de confirmación protegen de acciones accidentales. Eliminar archivo, salir de programa, restablecer datos — todo esto requiere confirmación. Sin ellos, usuario puede perder datos accidentalmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>showConfirmDialog()</code> — diálogo de confirmación</li>
  <li>Constantes <code>YES_NO_OPTION</code>, <code>YES_NO_CANCEL_OPTION</code></li>
  <li>Manejar resultado de confirmación</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El diálogo de confirmación es necesario para proteger de acciones accidentales.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Muestra diálogo de confirmación: <code>int result = JOptionPane.showConfirmDialog(<br>
&nbsp;&nbsp;frame,<br>
&nbsp;&nbsp;"¿Estás seguro?",<br>
&nbsp;&nbsp;"Confirmación",<br>
&nbsp;&nbsp;JOptionPane.YES_NO_OPTION<br>
);</code></li>
  <li>Maneja resultado: <code>if (result == JOptionPane.YES_OPTION) {<br>
&nbsp;&nbsp;label.setText("¡Usuario aceptó!");<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> YES_NO_OPTION para elección simple</li>
  <li><strong>✅ Excelente:</strong> Usar YES_NO_CANCEL_OPTION para tres opciones, verificar resultado antes de realizar acción</li>
  <li><strong>⚠️ Evita:</strong> Ignorar resultado — acción se ejecutará siempre</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá diálogo con pregunta y botones. Usuario puede elegir "Sí", "No" o "Cancelar". Resultado se puede manejar.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (409, 'es', 'Diálogo Maestro: Crear Diálogo de Confirmación',
        'Muestra diálogo de confirmación con YES_NO_OPTION, maneja resultado YES_OPTION')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (412, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Agregar JRadioButtonMenuItem a Grupo</h2>
<p class="intro">El grupo hace elementos mutuamente excluyentes. Puedes seleccionar solo un elemento de grupo. Sin grupo, puedes seleccionar varios.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>ButtonGroup</code> — grupo de botones</li>
  <li>Método <code>add()</code> — agregar a grupo</li>
  <li>Crear elementos mutuamente excluyentes</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El grupo es necesario para crear elementos mutuamente excluyentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea grupo: <code>ButtonGroup group = new ButtonGroup();</code></li>
  <li>Agrega elementos: <code>group.add(item1);<br>
group.add(item2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> ButtonGroup para agrupar</li>
  <li><strong>✅ Excelente:</strong> Agregar todos los elementos de radio a grupo, usar para opciones mutuamente excluyentes</li>
  <li><strong>⚠️ Evita:</strong> Agregar a varios grupos</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Elementos estarán en un grupo. Puedes seleccionar solo un elemento de grupo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (412, 'es', 'Elemento de Radio de Menú Maestro: Agregar a Grupo',
        'Crea ButtonGroup, agrega dos elementos de radio vía add()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (410, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Crear Diálogo de Entrada con JOptionPane</h2>
<p class="intro">El diálogo de entrada permite solicitar datos de usuario. Nombre, contraseña, configuraciones — todo esto se puede solicitar vía diálogo. Sin esto, tendrás que crear formularios separados.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>showInputDialog()</code> — diálogo de entrada</li>
  <li>Obtener texto ingresado</li>
  <li>Manejar cancelación de entrada</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El diálogo de entrada es necesario para solicitar datos de usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Muestra diálogo de entrada: <code>String input = JOptionPane.showInputDialog(<br>
&nbsp;&nbsp;frame,<br>
&nbsp;&nbsp;"Ingresa tu nombre:",<br>
&nbsp;&nbsp;"Entrada",<br>
&nbsp;&nbsp;JOptionPane.QUESTION_MESSAGE<br>
);</code></li>
  <li>Maneja resultado: <code>if (input != null && !input.isEmpty()) {<br>
&nbsp;&nbsp;label.setText("Ingresado: " + input);<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Verificar null — usuario puede haber cancelado</li>
  <li><strong>✅ Excelente:</strong> Verificar cadena vacía, usar QUESTION_MESSAGE para pregunta</li>
  <li><strong>⚠️ Evita:</strong> Ignorar null — puede haber error</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá diálogo con campo de entrada. Usuario puede ingresar texto y presionar OK o cancelar. Texto ingresado se puede obtener.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (410, 'es', 'Diálogo Maestro: Crear Diálogo de Entrada',
        'Muestra diálogo de entrada con pregunta "Ingresa tu nombre:", maneja resultado, verifica null y vacío')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (414, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Manejar Cambio de Estado en JRadioButtonMenuItem</h2>
<p class="intro">Manejar estado hace elemento interactivo. Puedes responder a selección, actualizar otros componentes. Sin manejo, selección no tendrá efecto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Manejar cambios vía ItemListener</li>
  <li>Obtener estado</li>
  <li>Responder a cambios</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Manejar estado es necesario para crear elemento de menú interactivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega oyente: <code>item.addItemListener(e -> {<br>
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
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Cuando cambie estado, se activará manejador. Puedes manejar selección y actualizar otros componentes.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (414, 'es', 'Elemento de Radio de Menú Maestro: Manejar Cambio de Estado',
        'Agrega ItemListener, verifica getStateChange() == SELECTED, muestra mensaje')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (411, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Crear Botones Personalizados en JOptionPane</h2>
<p class="intro">Los botones personalizados hacen diálogo flexible. Puedes crear botones con nombres necesarios, agregar opciones adicionales. Sin esto, tendrás que usar botones estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Crear botones personalizados</li>
  <li>Método <code>showOptionDialog()</code> — diálogo con opciones</li>
  <li>Configurar botones de diálogo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los botones personalizados son necesarios para crear diálogo flexible con opciones necesarias.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea arreglo de botones: <code>String[] options = {"Sí", "No", "Cancelar"};</code></li>
  <li>Muestra diálogo: <code>int result = JOptionPane.showOptionDialog(<br>
&nbsp;&nbsp;frame,<br>
&nbsp;&nbsp;"Elige acción",<br>
&nbsp;&nbsp;"Pregunta",<br>
&nbsp;&nbsp;JOptionPane.YES_NO_CANCEL_OPTION,<br>
&nbsp;&nbsp;JOptionPane.QUESTION_MESSAGE,<br>
&nbsp;&nbsp;null,<br>
&nbsp;&nbsp;options,<br>
&nbsp;&nbsp;options[0]<br>
);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>showOptionDialog()</code> para botones personalizados</li>
  <li><strong>✅ Excelente:</strong> Crear nombres de botones claros, especificar botón por defecto, manejar resultado por índice</li>
  <li><strong>⚠️ Evita:</strong> Demasiados botones — puede estar sobrecargado</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá diálogo con botones personalizados. Botones tendrán nombres especificados. Puedes elegir botón necesario.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (411, 'es', 'Diálogo Maestro: Crear Botones Personalizados',
        'Crea arreglo de cadenas con tres botones, muestra diálogo vía showOptionDialog() con estos botones')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (416, 'es', '<div class="lesson-header">
<h2>🎮 Lección 11: Agregar Icono a JRadioButtonMenuItem</h2>
<p class="intro">El icono mejora legibilidad. Puedes mostrar elemento visual, mejorar comprensión de propósito de elemento. Sin icono, elemento será solo con texto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setIcon()</code> — establecer icono</li>
  <li>Crear elementos con estilo visual</li>
  <li>Mejorar legibilidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El icono es necesario para mejorar legibilidad y estilo visual.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece icono: <code>item.setIcon(new ImageIcon("icon.png"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setIcon()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar ImageIcon para cargar, usar para estilo visual, usar iconos claros</li>
  <li><strong>⚠️ Evita:</strong> Iconos demasiado grandes</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Elemento de menú tendrá icono. Elemento tendrá elemento visual.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (416, 'es', 'Elemento de Radio de Menú Maestro: Agregar Icono', 'Establece icono vía setIcon() con ImageIcon')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (413, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Crear Diálogo de Entrada con JOptionPane</h2>
<p class="intro">El diálogo de entrada permite obtener datos. Puedes solicitar nombre, valor, texto. Sin diálogo de entrada, tendrás que crear diálogo personalizado.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>showInputDialog()</code> — diálogo de entrada</li>
  <li>Obtener datos ingresados</li>
  <li>Crear diálogos interactivos</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El diálogo de entrada es necesario para obtener datos de usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Muestra diálogo: <code>String input = JOptionPane.showInputDialog(frame, "Ingresa nombre:");</code></li>
  <li>Maneja resultado: <code>if (input != null) {<br>
&nbsp;&nbsp;label.setText("Nombre: " + input);<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>showInputDialog()</code> para entrada</li>
  <li><strong>✅ Excelente:</strong> Verificar null para cancelación, usar valor inicial, usar para entrada simple</li>
  <li><strong>⚠️ Evita:</strong> Entrada demasiado compleja — necesita diálogo personalizado</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá diálogo de entrada. Puedes ingresar valor y obtenerlo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (413, 'es', 'Diálogo Maestro: Crear Diálogo de Entrada',
        'Muestra diálogo de entrada vía showInputDialog() con mensaje "Ingresa nombre:", verifica resultado para null')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (415, 'es', '<div class="lesson-header">
<h2>🎮 Lección 10: Crear Diálogo de Confirmación con JOptionPane</h2>
<p class="intro">El diálogo de confirmación permite obtener confirmación. Puedes solicitar confirmación de acción, obtener respuesta. Sin diálogo, no puedes obtener confirmación.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>showConfirmDialog()</code> — diálogo de confirmación</li>
  <li>Obtener resultado (YES, NO, CANCEL)</li>
  <li>Crear diálogos interactivos</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El diálogo de confirmación es necesario para obtener confirmación de acción.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Muestra diálogo: <code>int result = JOptionPane.showConfirmDialog(frame, "¿Eliminar?", "Confirmación", JOptionPane.YES_NO_OPTION);</code></li>
  <li>Maneja resultado: <code>if (result == JOptionPane.YES_OPTION) {<br>
&nbsp;&nbsp;label.setText("¡Sí!");<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>showConfirmDialog()</code> para confirmación</li>
  <li><strong>✅ Excelente:</strong> Usar YES_NO_OPTION para sí/no, usar YES_NO_CANCEL_OPTION para sí/no/cancelar, verificar resultado</li>
  <li><strong>⚠️ Evita:</strong> Ignorar resultado</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá diálogo de confirmación. Puedes elegir sí, no o cancelar.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (415, 'es', 'Diálogo Maestro: Crear Diálogo de Confirmación',
        'Muestra diálogo de confirmación vía showConfirmDialog() con YES_NO_OPTION, verifica resultado == YES_OPTION')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (417, 'es', '<div class="lesson-header">
<h2>🎮 Lección 12: Crear Diálogo de Mensaje con JOptionPane</h2>
<p class="intro">El diálogo de mensaje permite informar usuario. Puedes mostrar mensaje, advertencia, error. Sin diálogo, no puedes informar usuario.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>showMessageDialog()</code> — diálogo de mensaje</li>
  <li>Tipos de mensaje (ERROR, INFORMATION, WARNING, QUESTION, PLAIN)</li>
  <li>Crear diálogos informativos</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El diálogo de mensaje es necesario para informar usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Muestra diálogo: <code>JOptionPane.showMessageDialog(frame, "Mensaje", "Título", JOptionPane.INFORMATION_MESSAGE);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>showMessageDialog()</code> para mostrar</li>
  <li><strong>✅ Excelente:</strong> Usar INFORMATION_MESSAGE para información, usar ERROR_MESSAGE para error, usar WARNING_MESSAGE para advertencia</li>
  <li><strong>⚠️ Evita:</strong> Tipo de mensaje incorrecto</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá diálogo de mensaje. Puedes mostrar información, advertencia o error.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (417, 'es', 'Diálogo Maestro: Crear Diálogo de Mensaje',
        'Muestra diálogo de mensaje vía showMessageDialog() con INFORMATION_MESSAGE')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (418, 'es', '<div class="lesson-header">
<h2>🎮 Lección 13: Establecer Ancho de Columna en JTable</h2>
<p class="intro">El ancho de columna mejora legibilidad. Puedes establecer ancho necesario, mejorar visualización. Sin establecer, ancho será automático.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setPreferredWidth()</code> — establecer ancho preferido</li>
  <li>Gestionar ancho de columnas</li>
  <li>Mejorar legibilidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El ancho de columna es necesario para mejorar legibilidad de tabla.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén modelo de columnas: <code>TableColumnModel columnModel = table.getColumnModel();</code></li>
  <li>Obtén columna: <code>TableColumn column = columnModel.getColumn(0);</code></li>
  <li>Establece ancho: <code>column.setPreferredWidth(200);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setPreferredWidth()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar <code>getColumnModel()</code> para obtener, usar para mejorar legibilidad, mejorar visualización</li>
  <li><strong>⚠️ Evita:</strong> Columnas demasiado estrechas o anchas</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Columna será ancho necesario. Puedes mejorar legibilidad.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (418, 'es', 'Tabla Maestro: Establecer Ancho de Columna',
        'Obtén modelo de columnas vía getColumnModel(), obtén columna 0, establece ancho 200 vía setPreferredWidth()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (419, 'es', '<div class="lesson-header">
<h2>🎮 Lección 14: Establecer Altura de Fila en JTable</h2>
<p class="intro">La altura de fila mejora legibilidad. Puedes establecer altura necesaria, mejorar visualización. Sin establecer, altura será automática.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setRowHeight()</code> — establecer altura de fila</li>
  <li>Gestionar altura de filas</li>
  <li>Mejorar legibilidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La altura de fila es necesaria para mejorar legibilidad de tabla.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece altura: <code>table.setRowHeight(30);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setRowHeight()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar para mejorar legibilidad, mejorar visualización, hacer altura razonable</li>
  <li><strong>⚠️ Evita:</strong> Altura demasiado pequeña o grande</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Filas serán altura necesaria. Puedes mejorar legibilidad.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (419, 'es', 'Tabla Maestro: Establecer Altura de Fila', 'Establece altura de fila 30 vía setRowHeight()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (420, 'es', '<div class="lesson-header">
<h2>🎮 Lección 15: Establecer Modo de Auto-Redimensionamiento en JTable</h2>
<p class="intro">El modo de auto-redimensionamiento determina comportamiento. Puedes establecer cómo cambian columnas cuando cambia tamaño de tabla, mejorar diseño. Sin establecer, modo será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setAutoResizeMode()</code> — establecer modo</li>
  <li>Constantes <code>JTable.AUTO_RESIZE_ALL_COLUMNS</code>, <code>JTable.AUTO_RESIZE_OFF</code></li>
  <li>Gestionar redimensionamiento automático</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El modo de auto-redimensionamiento es necesario para gestionar comportamiento de columnas cuando cambia tamaño.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece modo: <code>table.setAutoResizeMode(JTable.AUTO_RESIZE_ALL_COLUMNS);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setAutoResizeMode()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar AUTO_RESIZE_ALL_COLUMNS para todas, usar AUTO_RESIZE_OFF para desactivar, mejorar diseño</li>
  <li><strong>⚠️ Evita:</strong> Usar modo inapropiado</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Columnas cambiarán automáticamente. Puedes mejorar diseño.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (420, 'es', 'Tabla Maestro: Establecer Modo de Auto-Redimensionamiento',
        'Establece modo AUTO_RESIZE_ALL_COLUMNS vía setAutoResizeMode()')
ON CONFLICT (task_id, language_code) DO NOTHING;
