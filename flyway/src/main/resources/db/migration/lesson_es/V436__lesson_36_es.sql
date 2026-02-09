-- Flyway migration V4: Lesson 36
-- This migration contains lesson, tasks, and documentation for lesson 36

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (301, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Abrir Paleta de Colores</h2>
<p class="intro">JColorChooser permite elegir cualquier color. Configuración de tema, selección de color de fondo, personalización de interfaz — todo esto requiere selección de color. Sin esto, usuario está limitado a colores preestablecidos.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>JColorChooser</code> — diálogo de selección de color</li>
  <li>Crear diálogo de selección de color</li>
  <li>Obtener color seleccionado</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>JColorChooser es necesario para selección de color en aplicación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Muestra diálogo de selección de color: <code>Color color = JColorChooser.showDialog(frame, "Elige color", Color.WHITE);</code></li>
  <li>Usa color seleccionado: <code>if (color != null) {<br>
&nbsp;&nbsp;panel.setBackground(color);<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Verificar para null — usuario puede haber cancelado</li>
  <li><strong>✅ Excelente:</strong> Especificar color inicial — lo mostrará al abrir, usar color seleccionado para configuración de componentes</li>
  <li><strong>⚠️ Evita:</strong> Ignorar null — puede ser error</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá diálogo de selección de color. Esta es ventana con paleta de colores. Puedes seleccionar color de espectro, pestañas o ingresar valores RGB. Después de selección, obtendrás objeto Color.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (301, 'es', 'Selección de Color Principiante: Abrir Paleta de Colores',
        'Muestra diálogo de selección de color con color inicial WHITE y usa color seleccionado')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (302, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Crear Diálogo Personalizado de Selección de Color</h2>
<p class="intro">El diálogo personalizado permite configurar selección de color. Puedes agregar botones adicionales, cambiar título, agregar manejadores. Sin esto, tendrás que usar diálogo estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Crear <code>JColorChooser</code> como componente</li>
  <li>Método <code>createDialog()</code> — crear diálogo</li>
  <li>Configurar diálogo de selección de color</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El diálogo personalizado es necesario para configuración extendida de selección de color.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea selector de color: <code>JColorChooser colorChooser = new JColorChooser(Color.WHITE);</code></li>
  <li>Crea diálogo: <code>JDialog dialog = JColorChooser.createDialog(<br>
&nbsp;&nbsp;frame,<br>
&nbsp;&nbsp;"Elige color",<br>
&nbsp;&nbsp;true,<br>
&nbsp;&nbsp;colorChooser,<br>
&nbsp;&nbsp;null,<br>
&nbsp;&nbsp;null<br>
);</code></li>
  <li>Muestra diálogo: <code>dialog.setVisible(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createDialog()</code> para crear diálogo</li>
  <li><strong>✅ Excelente:</strong> Agregar manejadores para botones OK y Cancel, configurar color inicial</li>
  <li><strong>⚠️ Evita:</strong> Configuración demasiado compleja — puede ser excesivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá diálogo personalizado de selección de color. Puedes configurarlo para tus necesidades, agregar manejadores.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (302, 'es', 'Selección de Color Maestro: Crear Diálogo Personalizado',
        'Crea JColorChooser con color inicial WHITE, crea diálogo vía createDialog, muestra diálogo')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (304, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Usar Todas las Regiones de BorderLayout</h2>
<p class="intro">Usar todas las regiones crea interfaz estructurada. Encabezado arriba, barra de herramientas abajo, contenido en centro — todo esto requiere todas las regiones. Sin esto, interfaz estará incompleta.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Todas las regiones BorderLayout (NORTH, SOUTH, EAST, WEST, CENTER)</li>
  <li>Colocar componentes en todas las regiones</li>
  <li>Crear diseño complejo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Usar todas las regiones es necesario para crear interfaz estructurada.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece administrador: <code>setLayout(new BorderLayout());</code></li>
  <li>Agrega a todas las regiones: <code>add(buttonNorth, BorderLayout.NORTH);<br>
add(buttonSouth, BorderLayout.SOUTH);<br>
add(buttonEast, BorderLayout.EAST);<br>
add(buttonWest, BorderLayout.WEST);<br>
add(panelCenter, BorderLayout.CENTER);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Todas las regiones para estructura</li>
  <li><strong>✅ Excelente:</strong> CENTER para contenido principal, NORTH/SOUTH para encabezados y paneles, EAST/WEST para paneles laterales</li>
  <li><strong>⚠️ Evita:</strong> Demasiados componentes en una región</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componentes se colocarán en todas las regiones. Cada componente tomará su región. CENTER tomará espacio restante.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (304, 'es', 'BorderLayout Maestro: Usar Todas las Regiones',
        'Establece BorderLayout, agrega componentes a las cinco regiones (NORTH, SOUTH, EAST, WEST, CENTER)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (303, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Configurar Modos de Selección de Color</h2>
<p class="intro">Configurar modos de selección hace paleta conveniente. Puedes mostrar solo pestañas necesarias, ocultar innecesarias. Sin esto, usuario verá todas las pestañas, incluso si no son necesarias.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setChooserPanels()</code> — configurar paneles de selección</li>
  <li>Clase <code>ColorChooserComponentFactory</code> — fábrica de componentes</li>
  <li>Configurar modos de selección de color</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Configurar modos de selección es necesario para simplificar interfaz de selección de color.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén paneles por defecto: <code>AbstractColorChooserPanel[] panels = ColorChooserComponentFactory.getDefaultChooserPanels();</code></li>
  <li>Establece paneles: <code>colorChooser.setChooserPanels(panels);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getDefaultChooserPanels()</code> para paneles estándar</li>
  <li><strong>✅ Excelente:</strong> Crear paneles de selección personalizados, filtrar paneles, dejando solo necesarios</li>
  <li><strong>⚠️ Evita:</strong> Eliminar todos los paneles — usuario no podrá seleccionar color</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Solo pestañas necesarias estarán en diálogo de selección de color. Puedes configurar qué modos de selección mostrar.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (303, 'es', 'Selección de Color Maestro: Configurar Modos de Selección',
        'Obtén paneles estándar vía getDefaultChooserPanels(), establécelos en colorChooser')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (306, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Agregar Espacios en BorderLayout</h2>
<p class="intro">Los espacios hacen diseño ordenado. Componentes no estarán presionados entre sí, habrá separación visual. Sin espacios, componentes estarán presionados a bordes.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setHgap()</code> — espacio horizontal</li>
  <li>Método <code>setVgap()</code> — espacio vertical</li>
  <li>Configurar espacios en BorderLayout</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los espacios son necesarios para crear diseño ordenado con separación visual de componentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea administrador: <code>BorderLayout layout = new BorderLayout();</code></li>
  <li>Establece espacios: <code>layout.setHgap(10);<br>
layout.setVgap(10);</code></li>
  <li>Establece administrador: <code>setLayout(layout);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setHgap()</code> para espacios horizontales, <code>setVgap()</code> para espacios verticales</li>
  <li><strong>✅ Excelente:</strong> Usar mismos espacios, especificar espacios en constructor</li>
  <li><strong>⚠️ Evita:</strong> Espacios demasiado grandes — puede ser excesivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Espacios aparecerán entre regiones. Componentes no estarán presionados entre sí. Diseño se verá ordenado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (306, 'es', 'BorderLayout Maestro: Agregar Espacios',
        'Crea BorderLayout, establece espacios horizontal y vertical a 10')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (305, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Agregar Panel de Vista Previa</h2>
<p class="intro">El panel de vista previa muestra color seleccionado. Puedes ver cómo se verá color antes de aplicar. Sin vista previa, tendrás que aplicar color para ver resultado.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setPreviewPanel()</code> — establecer panel de vista previa</li>
  <li>Crear panel de vista previa personalizado</li>
  <li>Mostrar color seleccionado</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El panel de vista previa es necesario para visualizar color seleccionado antes de aplicar.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea panel: <code>JPanel previewPanel = new JPanel();<br>
previewPanel.setPreferredSize(new Dimension(100, 50));</code></li>
  <li>Establece panel: <code>colorChooser.setPreviewPanel(previewPanel);</code></li>
  <li>Actualiza color: <code>colorChooser.getSelectionModel().addChangeListener(e -> {<br>
&nbsp;&nbsp;previewPanel.setBackground(colorChooser.getColor());<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setPreviewPanel()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Actualizar color vía ChangeListener, mostrar información adicional, usar panel personalizado</li>
  <li><strong>⚠️ Evita:</strong> Panel demasiado grande — puede ser excesivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Panel de vista previa aparecerá en diálogo. Panel mostrará color seleccionado. Color se actualizará al seleccionar.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (305, 'es', 'Selección de Color Maestro: Agregar Panel de Vista Previa',
        'Crea JPanel para vista previa, establece vía setPreviewPanel(), agrega ChangeListener para actualización de color')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (307, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Trabajar con Modelo de Selección de Color</h2>
<p class="intro">El modelo permite gestionar selección. Puedes obtener modelo, establecer color programáticamente, rastrear cambios. Sin modelo, no puedes gestionar selección.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getSelectionModel()</code> — obtener modelo</li>
  <li>Trabajar con ColorSelectionModel</li>
  <li>Gestionar selección de color</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El modelo es necesario para gestión programática de selección de color.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén modelo: <code>ColorSelectionModel model = colorChooser.getSelectionModel();</code></li>
  <li>Establece color: <code>model.setSelectedColor(Color.RED);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getSelectionModel()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar <code>setSelectedColor()</code> para establecer, usar <code>getSelectedColor()</code> para obtener, usar <code>addChangeListener()</code> para rastrear</li>
  <li><strong>⚠️ Evita:</strong> Ignorar modelo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Podrás gestionar selección vía modelo. Color puede ser establecido programáticamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (307, 'es', 'Selección de Color Maestro: Trabajar con Modelo',
        'Obtén modelo vía getSelectionModel(), establece color RED vía setSelectedColor()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (308, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Obtener Color Seleccionado</h2>
<p class="intro">Obtener color permite usar selección. Puedes obtener color seleccionado, aplicarlo a componentes. Sin obtener color, selección no tendrá efecto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getColor()</code> — obtener color</li>
  <li>Método <code>showDialog()</code> — mostrar diálogo</li>
  <li>Obtener color seleccionado</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Obtener color es necesario para aplicar color seleccionado a componentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Muestra diálogo: <code>Color color = JColorChooser.showDialog(frame, "Elige color", Color.WHITE);</code></li>
  <li>Usa color: <code>if (color != null) {<br>
&nbsp;&nbsp;component.setBackground(color);<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>showDialog()</code> para mostrar</li>
  <li><strong>✅ Excelente:</strong> Verificar null para cancelación, usar color inicial, aplicar color a componentes</li>
  <li><strong>⚠️ Evita:</strong> Ignorar null</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Diálogo de selección de color aparecerá. Puedes seleccionar color y obtenerlo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (308, 'es', 'Selección de Color Maestro: Obtener Color Seleccionado',
        'Muestra diálogo vía showDialog() con color inicial WHITE, verifica resultado para null')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (309, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Configurar Modelo de Color</h2>
<p class="intro">El modelo de color determina selección. Puedes configurar cómo se selecciona color, mejorar funcionalidad. Sin configuración, modelo será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setColorSelectionModel()</code> — establecer modelo</li>
  <li>Configurar selección de color</li>
  <li>Mejorar funcionalidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Configurar modelo de color es necesario para gestión extendida de selección de color.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea modelo: <code>DefaultColorSelectionModel model = new DefaultColorSelectionModel();<br>
model.setSelectedColor(Color.RED);</code></li>
  <li>Establece modelo: <code>colorChooser.setColorSelectionModel(model);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setColorSelectionModel()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar DefaultColorSelectionModel, configurar color inicial, usar para mejorar funcionalidad</li>
  <li><strong>⚠️ Evita:</strong> Modelo incorrecto</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Modelo de color será configurado. Puedes configurar selección de color.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (309, 'es', 'Selección de Color Maestro: Configurar Modelo de Color',
        'Crea DefaultColorSelectionModel, establece color RED, establece modelo vía setColorSelectionModel()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (310, 'es', '<div class="lesson-header">
<h2>🎮 Lección 10: Insertar Icono en JTextPane</h2>
<p class="intro">El icono mejora apariencia visual. Puedes insertar imagen en texto, mejorar formato. Sin icono, texto será solo texto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>insertIcon()</code> — insertar icono</li>
  <li>Insertar imágenes en texto</li>
  <li>Mejorar apariencia visual</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Insertar icono es necesario para mejorar apariencia visual de texto.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea icono: <code>ImageIcon icon = new ImageIcon("icon.png");</code></li>
  <li>Inserta icono: <code>textPane.insertIcon(icon);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>insertIcon()</code> para insertar</li>
  <li><strong>✅ Excelente:</strong> Usar ImageIcon para crear, usar para mejorar apariencia, mejorar formato</li>
  <li><strong>⚠️ Evita:</strong> Iconos demasiado grandes</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Icono aparecerá en texto. Puedes mejorar apariencia visual.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (310, 'es', 'Panel de Texto Maestro: Insertar Icono', 'Crea ImageIcon "icon.png", inserta vía insertIcon()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (311, 'es', '<div class="lesson-header">
<h2>🎮 Lección 11: Obtener Documento con Estilos</h2>
<p class="intro">El documento con estilos permite gestionar estilos. Puedes obtener acceso a estilos, cambiar formato, mejorar funcionalidad. Sin acceso, no puedes gestionar estilos.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getStyledDocument()</code> — obtener documento con estilos</li>
  <li>Acceso a estilos de documento</li>
  <li>Mejorar funcionalidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El acceso a documento con estilos es necesario para gestionar estilos y formato.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén documento: <code>StyledDocument doc = textPane.getStyledDocument();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getStyledDocument()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar para gestionar estilos, usar para formato, mejorar funcionalidad</li>
  <li><strong>⚠️ Evita:</strong> Cambiar sin necesidad</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Podrás obtener acceso a documento con estilos. Puedes gestionar estilos, formato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (311, 'es', 'Panel de Texto Maestro: Obtener Documento con Estilos',
        'Obtén documento con estilos vía getStyledDocument()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (312, 'es', '<div class="lesson-header">
<h2>🎮 Lección 12: Crear JTextPane Solo Lectura</h2>
<p class="intro">Solo lectura protege contenido. Puedes prohibir edición, mejorar seguridad. Sin protección, contenido puede ser cambiado.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setEditable()</code> — establecer editabilidad</li>
  <li>Protección de cambios</li>
  <li>Mejorar seguridad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El modo solo lectura es necesario para proteger contenido de cambios.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Desactiva edición: <code>textPane.setEditable(false);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setEditable(false)</code> para desactivar</li>
  <li><strong>✅ Excelente:</strong> Usar para protección, mejorar seguridad, usar para visualización</li>
  <li><strong>⚠️ Evita:</strong> Desactivar para campos editables</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Panel de texto será solo lectura. Contenido no puede ser cambiado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (312, 'es', 'Panel de Texto Maestro: Hacer Solo Lectura', 'Desactiva edición vía setEditable(false)')
ON CONFLICT (task_id, language_code) DO NOTHING;
