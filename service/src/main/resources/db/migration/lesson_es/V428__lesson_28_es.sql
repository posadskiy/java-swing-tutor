-- Flyway migration V4: Lesson 28
-- This migration contains lesson, tasks, and documentation for lesson 28

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

-- Task 1: Creating JRadioButtonMenuItem
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (230, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear Botón de Radio en Menú</h2>
<p class="intro">JRadioButtonMenuItem permite seleccionar una opción de un grupo en menú. Tamaño de fuente, tema, modo de visualización — todo esto requiere seleccionar una opción. Sin ellos, tendrás que crear diálogos separados.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>JRadioButtonMenuItem</code> — botón de radio en menú</li>
  <li>Crear botones de radio en menú</li>
  <li>Agrupar con <code>ButtonGroup</code></li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los botones de radio en menú son necesarios para seleccionar una opción de un grupo de opciones mutuamente excluyentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea grupo: <code>ButtonGroup group = new ButtonGroup();</code></li>
  <li>Crea botones de radio: <code>JRadioButtonMenuItem item1 = new JRadioButtonMenuItem("Pequeño");</code> y <code>JRadioButtonMenuItem item2 = new JRadioButtonMenuItem("Mediano");</code></li>
  <li>Agrega al grupo: <code>group.add(item1);</code> y <code>group.add(item2);</code></li>
  <li>Agrega al menú: <code>menu.add(item1);</code> y <code>menu.add(item2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> ButtonGroup para agrupar</li>
  <li><strong>✅ Excelente:</strong> Crear nombres de opciones claros, seleccionar una opción por defecto, agregar manejadores para reaccionar a la selección</li>
  <li><strong>⚠️ Evita:</strong> Botones de radio sin grupo — se pueden seleccionar múltiples</li>
</ul>
<p><strong>Importante:</strong> <code>setSelected(true)</code> — seleccionar opción. <code>isSelected()</code> — verificar si está seleccionada.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerán botones de radio en el menú. Estos son elementos de menú con círculos. Puedes seleccionar solo una opción del grupo. Al seleccionar otra, la anterior se deselecciona.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (230, 'es', 'Botón de Radio en Menú Principiante: Crear Selección de Opción en Menú',
        'Crea ButtonGroup, crea dos JRadioButtonMenuItem, agrega al grupo y menú')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 2: Selected State
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (231, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Establecer Estado Seleccionado</h2>
<p class="intro">El estado seleccionado muestra la elección actual. El usuario ve qué opción está activa. Sin establecer estado, el usuario no sabe la elección actual.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setSelected(boolean)</code> — establecer estado seleccionado</li>
  <li>Seleccionar opción por defecto</li>
  <li>Verificar estado mediante <code>isSelected()</code></li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Establecer estado seleccionado es necesario para mostrar la elección actual al usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea botón de radio: <code>JRadioButtonMenuItem item = new JRadioButtonMenuItem("Mediano");</code></li>
  <li>Establece estado seleccionado: <code>item.setSelected(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Seleccionar una opción por defecto</li>
  <li><strong>✅ Excelente:</strong> Usar <code>setSelected(true)</code> para seleccionar, verificar estado mediante <code>isSelected()</code></li>
  <li><strong>⚠️ Evita:</strong> Seleccionar múltiples opciones en grupo — solo una estará activa</li>
</ul>
<p><strong>Importante:</strong> En grupo solo una puede estar seleccionada.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Una de las opciones estará seleccionada por defecto. El círculo estará lleno.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (231, 'es', 'Botón de Radio en Menú Maestro: Establecer Estado Seleccionado',
        'Crea JRadioButtonMenuItem, establece estado seleccionado mediante setSelected(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 3: ButtonGroup
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (232, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Crear Grupo de Selección</h2>
<p class="intro">ButtonGroup asegura selección única. En grupo solo una opción puede estar seleccionada. Sin grupo, puedes seleccionar múltiples opciones simultáneamente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>ButtonGroup</code> — grupo de exclusión mutua</li>
  <li>Agregar botones de radio al grupo</li>
  <li>Asegurar selección única</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>ButtonGroup es necesario para asegurar selección única entre opciones mutuamente excluyentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea grupo: <code>ButtonGroup group = new ButtonGroup();</code></li>
  <li>Crea botones de radio: <code>JRadioButtonMenuItem item1 = new JRadioButtonMenuItem("Pequeño");</code> y <code>JRadioButtonMenuItem item2 = new JRadioButtonMenuItem("Mediano");</code></li>
  <li>Agrega al grupo: <code>group.add(item1);</code> y <code>group.add(item2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> ButtonGroup para agrupar</li>
  <li><strong>✅ Excelente:</strong> Agregar todas las opciones a un grupo, usar para opciones mutuamente excluyentes</li>
  <li><strong>⚠️ Evita:</strong> Botones de radio sin grupo — se pueden seleccionar múltiples</li>
</ul>
<p><strong>Importante:</strong> Puedes crear múltiples grupos para diferentes conjuntos de opciones.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Los botones de radio estarán en grupo. Puedes seleccionar solo una opción. Al seleccionar otra, la anterior se deselecciona.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (232, 'es', 'Botón de Radio en Menú Maestro: Crear Grupo de Selección',
        'Crea ButtonGroup, crea tres JRadioButtonMenuItem, agrega todos al grupo y menú')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 4: Icon
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (233, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Agregar Icono a Botón de Radio en Menú</h2>
<p class="intro">Los iconos mejoran la percepción visual. Puedes reconocer rápidamente la opción por el icono. Sin iconos, el menú se ve menos atractivo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setIcon(Icon)</code> — establecer icono</li>
  <li>Clase <code>ImageIcon</code> — icono de imagen</li>
  <li>Mejora visual del menú</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los iconos mejoran la percepción visual y ayudan a reconocer rápidamente la opción.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea icono: <code>ImageIcon icon = new ImageIcon("icon.png");</code></li>
  <li>Establece icono: <code>item.setIcon(icon);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Iconos claros</li>
  <li><strong>✅ Excelente:</strong> Usar ImageIcon para imágenes, usar mismo tamaño de icono, los iconos deben reflejar el propósito de la opción</li>
  <li><strong>⚠️ Evita:</strong> Iconos demasiado grandes — pueden sobrecargar el menú</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El botón de radio tendrá un icono. El icono estará a la izquierda del texto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (233, 'es', 'Botón de Radio en Menú Maestro: Agregar Icono',
        'Crea JRadioButtonMenuItem, crea ImageIcon y establece mediante setIcon()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 5: Mnemonic
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (234, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Agregar Mnemónica a Botón de Radio en Menú</h2>
<p class="intro">La mnemónica acelera el trabajo. Puedes seleccionar opción presionando Alt + letra. Sin mnemónica, necesitas usar el mouse.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setMnemonic(int)</code> — establecer mnemónica</li>
  <li>Constantes <code>KeyEvent.VK_*</code> — códigos de tecla</li>
  <li>Acceso rápido desde teclado</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Las mnemónicas mejoran la accesibilidad y aceleran el trabajo desde el teclado.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece mnemónica: <code>item.setMnemonic(KeyEvent.VK_M);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Primera letra del nombre</li>
  <li><strong>✅ Excelente:</strong> Usar <code>KeyEvent.VK_*</code> para códigos, evitar conflictos con otras mnemónicas</li>
  <li><strong>⚠️ Evita:</strong> Mnemónicas duplicadas — puede haber conflicto</li>
</ul>
<p><strong>Importante:</strong> Se activa mediante Alt + letra.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>En el nombre, la letra mnemónica estará subrayada. Puedes presionar Alt + letra para seleccionar.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (234, 'es', 'Botón de Radio en Menú Maestro: Agregar Mnemónica',
        'Crea JRadioButtonMenuItem, establece mnemónica KeyEvent.VK_M mediante setMnemonic()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 6: Enabled/Disabled
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (235, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Habilitar/Deshabilitar Opción</h2>
<p class="intro">Habilitar/deshabilitar controla la disponibilidad. Puedes ocultar opciones no disponibles o mostrarlas en gris. Sin gestión, el usuario puede intentar seleccionar opción no disponible.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setEnabled(boolean)</code> — habilitar/deshabilitar</li>
  <li>Gestionar disponibilidad de opción</li>
  <li>Indicación visual de no disponibilidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Gestionar disponibilidad te permite mostrar estados de opciones y controlar la selección del usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Deshabilita opción: <code>item.setEnabled(false);</code></li>
  <li>O habilita: <code>item.setEnabled(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Deshabilitar opciones no disponibles</li>
  <li><strong>✅ Excelente:</strong> Usar <code>setEnabled(false)</code> para deshabilitar, cambiar dinámicamente disponibilidad, mostrar razón de no disponibilidad</li>
  <li><strong>⚠️ Evita:</strong> Deshabilitar sin explicación — el usuario no entenderá por qué</li>
</ul>
<p><strong>Importante:</strong> La opción deshabilitada está en gris e inactiva.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La opción se volverá gris e inactiva. No podrás seleccionar la opción deshabilitada.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (235, 'es', 'Botón de Radio en Menú Maestro: Habilitar/Deshabilitar Opción',
        'Crea JRadioButtonMenuItem, deshabilítalo mediante setEnabled(false)')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 7: Tooltip
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (236, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Agregar Sugerencia a Botón de Radio en Menú</h2>
<p class="intro">Las sugerencias ayudan al usuario. Puedes explicar el propósito de la opción, dar información adicional. Sin sugerencias, el usuario puede no entender el propósito.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setToolTipText(String)</code> — establecer sugerencia</li>
  <li>Agregar sugerencias emergentes</li>
  <li>Mejorar experiencia de usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Las sugerencias mejoran la experiencia de usuario proporcionando información adicional sobre las opciones.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece sugerencia: <code>item.setToolTipText("Seleccionar tamaño de fuente pequeño");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Sugerencias claras</li>
  <li><strong>✅ Excelente:</strong> Explicar propósito de la opción, dar información adicional</li>
  <li><strong>⚠️ Evita:</strong> Sugerencias demasiado largas — pueden ser inconvenientes</li>
</ul>
<p><strong>Importante:</strong> Haz las sugerencias cortas. Muestra al pasar el mouse.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al pasar el mouse, aparecerá una sugerencia. La sugerencia mostrará información adicional.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (236, 'es', 'Botón de Radio en Menú Maestro: Agregar Sugerencia',
        'Crea JRadioButtonMenuItem, establece sugerencia mediante setToolTipText()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 8: ActionListener
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (237, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Manejar Selección de Botón de Radio en Menú</h2>
<p class="intro">Manejar selección hace el menú funcional. Puedes aplicar opción seleccionada, cambiar configuraciones, actualizar interfaz. Sin manejador, la selección no tendrá efecto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Interfaz <code>ActionListener</code> — manejador de acciones</li>
  <li>Método <code>addActionListener()</code> — agregar oyente</li>
  <li>Reaccionar a selección de opción</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Manejar selección es necesario para aplicar opción seleccionada y actualizar interfaz.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega oyente: <code>item.addActionListener(e -> {<br>
&nbsp;&nbsp;label.setText("Opción seleccionada: " + item.getText());<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> ActionListener para manejar</li>
  <li><strong>✅ Excelente:</strong> Usar expresiones lambda para acciones simples, aplicar opción seleccionada, actualizar interfaz al seleccionar</li>
  <li><strong>⚠️ Evita:</strong> Manejador sin acción — la selección no tiene efecto</li>
</ul>
<p><strong>Importante:</strong> <code>getText()</code> — obtener texto de opción. <code>isSelected()</code> — verificar si está seleccionada.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al seleccionar opción, se realizará una acción. Si usaste JLabel, aparecerá un mensaje en pantalla.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (237, 'es', 'Botón de Radio en Menú Maestro: Manejar Selección',
        'Crea JRadioButtonMenuItem, agrega ActionListener que muestre texto de opción en consola')
ON CONFLICT (task_id, language_code) DO NOTHING;
