-- Flyway migration V4: Lesson 24
-- This migration contains lesson, tasks, and documentation for lesson 24

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (196, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear Barra de Menú</h2>
<p class="intro">La barra de menú es la navegación de la aplicación. Archivo, Editar, Ver, Ayuda — estos son menús estándar. Sin menú, el usuario no podrá encontrar todas las funciones de la aplicación.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>JMenuBar</code> — barra de menú</li>
  <li>Crear barra de menú</li>
  <li>Agregar menús a la barra</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La barra de menú es necesaria para organizar la navegación y acceder a las funciones de la aplicación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea barra de menú: <code>JMenuBar menuBar = new JMenuBar();</code></li>
  <li>Crea menú: <code>JMenu fileMenu = new JMenu("Archivo");</code></li>
  <li>Agrega menú a la barra: <code>menuBar.add(fileMenu);</code></li>
  <li>Establece barra de menú en ventana: <code>frame.setJMenuBar(menuBar);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Crear barra de menú, luego agregar menús</li>
  <li><strong>✅ Excelente:</strong> Menús estándar: Archivo, Editar, Ver, Ayuda</li>
  <li><strong>⚠️ Evita:</strong> Demasiados menús — sobrecarga la interfaz</li>
</ul>
<p><strong>Importante:</strong> Puedes agregar múltiples menús. Los menús se organizan horizontalmente en la barra.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá una barra de menú en la parte superior de la ventana. Este es un panel horizontal con nombres de menús. Al hacer clic en un menú, se abrirá una lista desplegable de elementos.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (196, 'es', 'Barra de Menú Principiante: Crear Menú de Aplicación',
        'Crea una barra de menú, agrega menú "Archivo" y establécelo en la ventana')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (197, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Política de Desplazamiento</h2>
<p class="intro">La política de desplazamiento determina cuándo mostrar barras de desplazamiento. Puedes mostrar siempre, ocultar cuando no se necesiten, o nunca mostrar. Sin configuración, las barras aparecerán cuando se necesiten.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setHorizontalScrollBarPolicy()</code> — política horizontal</li>
  <li>Método <code>setVerticalScrollBarPolicy()</code> — política vertical</li>
  <li>Configurar visualización de barras de desplazamiento</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La política de desplazamiento te permite controlar la visibilidad de las barras de desplazamiento y optimizar el uso del espacio.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece política horizontal: <code>scrollPane.setHorizontalScrollBarPolicy(ScrollPaneConstants.ALWAYS);</code></li>
  <li>Establece política vertical: <code>scrollPane.setVerticalScrollBarPolicy(ScrollPaneConstants.AS_NEEDED);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> AS_NEEDED para visualización automática</li>
  <li><strong>✅ Excelente:</strong> Usar ALWAYS para visualización constante, usar NEVER para ocultar, combinar diferentes políticas</li>
  <li><strong>⚠️ Evita:</strong> ALWAYS cuando no se necesiten — ocupa espacio</li>
</ul>
<p><strong>Importante:</strong> AS_NEEDED — mostrar cuando se necesite, ALWAYS — mostrar siempre, NEVER — nunca mostrar.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Las barras de desplazamiento se mostrarán según la política. Pueden estar siempre visibles, aparecer cuando se necesiten, o estar ocultas.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (197, 'es', 'Panel Desplazable Maestro: Configurar Política de Desplazamiento',
        'Establece política horizontal ALWAYS, vertical AS_NEEDED')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (198, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Trabajar con Viewport</h2>
<p class="intro">El viewport gestiona el área visible. Puedes desplazar a la posición necesaria, establecer posición inicial. Sin viewport, no puedes gestionar el área visible.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getViewport()</code> — obtener viewport</li>
  <li>Método <code>setViewPosition()</code> — establecer posición</li>
  <li>Gestionar área visible</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El viewport te permite gestionar programáticamente el área visible y la posición de desplazamiento.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén viewport: <code>JViewport viewport = scrollPane.getViewport();</code></li>
  <li>Establece posición: <code>viewport.setViewPosition(new Point(0, 100));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getViewport()</code> para obtener, <code>setViewPosition()</code> para posición</li>
  <li><strong>✅ Excelente:</strong> Usar para desplazamiento, usar para posición inicial</li>
  <li><strong>⚠️ Evita:</strong> Establecer fuera de límites — puede ser inesperado</li>
</ul>
<p><strong>Importante:</strong> <code>getViewPosition()</code> — obtener posición.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El área visible se desplazará. Puedes establecer la posición inicial.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (198, 'es', 'Panel Desplazable Maestro: Trabajar con Viewport',
        'Obtén viewport mediante getViewport(), establece posición (0, 100) mediante setViewPosition()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (199, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Desplazamiento Horizontal</h2>
<p class="intro">La política de desplazamiento determina la visibilidad. Puedes mostrar siempre, mostrar cuando se necesite, o nunca mostrar. Sin configuración, habrá política estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setHorizontalScrollBarPolicy()</code> — política de desplazamiento horizontal</li>
  <li>Constantes de política (ALWAYS, AS_NEEDED, NEVER)</li>
  <li>Gestionar visibilidad de desplazamiento</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Configurar el desplazamiento horizontal te permite controlar la visualización de la barra de desplazamiento según el contenido.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece política: <code>scrollPane.setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> AS_NEEDED para cuando se necesite</li>
  <li><strong>✅ Excelente:</strong> Usar ALWAYS para siempre, usar NEVER para nunca, adaptar al contenido</li>
  <li><strong>⚠️ Evita:</strong> ALWAYS para todo — puede ser excesivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El desplazamiento horizontal será según la política. Puedes gestionar la visibilidad del desplazamiento.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (199, 'es', 'Panel Desplazable Maestro: Configurar Desplazamiento Horizontal',
        'Establece política AS_NEEDED mediante setHorizontalScrollBarPolicy()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (200, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Borde de Viewport</h2>
<p class="intro">El borde del viewport crea separación visual. Puedes resaltar área de visualización, mejorar legibilidad. Sin borde, el área estará sin marco.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setViewportBorder()</code> — establecer borde</li>
  <li>Crear separación visual</li>
  <li>Mejorar apariencia</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El borde del viewport ayuda a separar visualmente el área de visualización y mejorar la legibilidad.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea borde: <code>Border border = BorderFactory.createLineBorder(Color.GRAY);</code></li>
  <li>Establece borde: <code>scrollPane.setViewportBorder(border);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> BorderFactory para crear</li>
  <li><strong>✅ Excelente:</strong> Usar <code>createLineBorder()</code> para línea, usar <code>createMatteBorder()</code> para mate, usar para separación visual</li>
  <li><strong>⚠️ Evita:</strong> Borde demasiado grueso — puede ser excesivo</li>
</ul>
<p><strong>Importante:</strong> Haz el borde delgado.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El viewport tendrá un borde. El área de visualización estará resaltada con un marco.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (200, 'es', 'Panel Desplazable Maestro: Agregar Borde de Viewport',
        'Crea borde mediante BorderFactory.createLineBorder(), establece mediante setViewportBorder()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (201, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Encabezado de Columna</h2>
<p class="intro">El encabezado de columna mejora la informatividad. Puedes mostrar encabezados para tablas, mejorar comprensión. Sin encabezado, la tabla estará sin etiquetas.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setColumnHeaderView()</code> — establecer encabezado de columna</li>
  <li>Encabezado para tablas</li>
  <li>Mejorar informatividad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El encabezado de columna es necesario para mejorar la informatividad de las tablas y visualización estructurada de datos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea encabezado: <code>JLabel header = new JLabel("Encabezado");</code></li>
  <li>Establece encabezado: <code>scrollPane.setColumnHeaderView(header);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setColumnHeaderView()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar para tablas, combinar con <code>setRowHeaderView()</code>, mejorar informatividad</li>
  <li><strong>⚠️ Evita:</strong> Encabezado sin contenido</li>
</ul>
<p><strong>Importante:</strong> Haz los encabezados claros.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un encabezado de columna sobre el contenido desplazable. Puedes usar para tablas.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (201, 'es', 'Panel Desplazable Maestro: Agregar Encabezado de Columna',
        'Crea JLabel "Encabezado", establece mediante setColumnHeaderView()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (202, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Encabezado de Fila</h2>
<p class="intro">El encabezado de fila mejora la informatividad. Puedes mostrar encabezados para tablas, mejorar comprensión. Sin encabezado, la tabla estará sin etiquetas.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setRowHeaderView()</code> — establecer encabezado de fila</li>
  <li>Encabezado para tablas</li>
  <li>Mejorar informatividad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El encabezado de fila es necesario para mejorar la informatividad de las tablas y visualización estructurada de datos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea encabezado: <code>JLabel header = new JLabel("Encabezado");</code></li>
  <li>Establece encabezado: <code>scrollPane.setRowHeaderView(header);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setRowHeaderView()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar para tablas, combinar con <code>setColumnHeaderView()</code>, mejorar informatividad</li>
  <li><strong>⚠️ Evita:</strong> Encabezado sin contenido</li>
</ul>
<p><strong>Importante:</strong> Haz los encabezados claros.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un encabezado de fila a la izquierda del contenido desplazable. Puedes usar para tablas.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (202, 'es', 'Panel Desplazable Maestro: Agregar Encabezado de Fila',
        'Crea JLabel "Encabezado", establece mediante setRowHeaderView()')
ON CONFLICT (task_id, language_code) DO NOTHING;
