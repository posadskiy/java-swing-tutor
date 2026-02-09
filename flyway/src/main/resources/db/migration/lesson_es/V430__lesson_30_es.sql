-- Flyway migration V4: Lesson 30
-- This migration contains lesson, tasks, and documentation for lesson 30

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (244, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear Tabla de Datos</h2>
<p class="intro">Las tablas muestran datos estructurados. Listas de usuarios, productos, pedidos — todo esto es conveniente mostrar en tabla. Las tablas hacen los datos legibles y organizados.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>JTable</code> — tabla para mostrar datos</li>
  <li>Crear tabla con datos</li>
  <li>Mostrar datos en forma tabular</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Las tablas son necesarias para mostrar datos estructurados en formato conveniente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea datos: <code>String[] columns = {"Nombre", "Edad", "Ciudad"};</code> y <code>Object[][] data = {{"Juan", 25, "Madrid"}, {"María", 30, "Barcelona"}};</code></li>
  <li>Crea tabla: <code>JTable table = new JTable(data, columns);</code></li>
  <li>Envuelve en JScrollPane: <code>JScrollPane scrollPane = new JScrollPane(table);</code></li>
  <li>Agrega al formulario: <code>add(scrollPane);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> JScrollPane para desplazamiento</li>
  <li><strong>✅ Excelente:</strong> Crear con array de datos y columnas, usar TableModel para datos complejos</li>
  <li><strong>⚠️ Evita:</strong> Sin JScrollPane — las tablas grandes no se desplazan</li>
</ul>
<p><strong>Importante:</strong> Siempre envuelve en JScrollPane para desplazamiento. Las celdas se pueden editar (habilitado por defecto).</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá una tabla con datos. Esta es una tabla con filas y columnas. Los datos se muestran en celdas. Puedes desplazarte si hay muchos datos.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (244, 'es', 'Tabla Principiante: Crear Tabla de Datos',
        'Crea tabla con columnas "Nombre", "Edad" y dos filas de datos, envuelve en JScrollPane y agrega al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (245, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Agregar Menú a Ventana</h2>
<p class="intro">La barra de menú en ventana crea el menú principal de la aplicación. Archivo, Editar, Ver — todos los comandos estándar están en el menú. Sin menú, los comandos estarán dispersos en botones.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setJMenuBar()</code> — establecer barra de menú</li>
  <li>Agregar menú a ventana</li>
  <li>Crear menú principal de aplicación</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La barra de menú es necesaria para crear el menú principal de la aplicación y organizar comandos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea barra de menú: <code>JMenuBar menuBar = new JMenuBar();</code></li>
  <li>Agrega menú: <code>menuBar.add(fileMenu);</code></li>
  <li>Establece en ventana: <code>frame.setJMenuBar(menuBar);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setJMenuBar()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Agregar menús antes de establecer, usar nombres de menú estándar (Archivo, Editar, Ver)</li>
  <li><strong>⚠️ Evita:</strong> Demasiados menús — puede estar sobrecargado</li>
</ul>
<p><strong>Importante:</strong> La barra de menú aparece en la parte superior de la ventana. Agrupa comandos relacionados.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La barra de menú aparecerá en la parte superior de la ventana. Puedes hacer clic en el menú y ver elementos.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (245, 'es', 'Barra de Menú Maestro: Agregar Menú a Ventana',
        'Crea JMenuBar, agrega menú mediante add(), establece en ventana mediante setJMenuBar()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (246, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Agregar Menú de Ayuda</h2>
<p class="intro">El menú de ayuda proporciona acceso a la ayuda. Ayuda, acerca del programa, teclas de acceso rápido — todo esto está en el menú de ayuda. Sin él, el usuario no podrá obtener ayuda.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Crear menú de ayuda</li>
  <li>Agregar elementos de ayuda</li>
  <li>Ubicación estándar del menú de ayuda</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El menú de ayuda es necesario para proporcionar acceso a la ayuda e información del programa.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea menú de ayuda: <code>JMenu helpMenu = new JMenu("Ayuda");</code></li>
  <li>Agrega elementos: <code>helpMenu.add(new JMenuItem("Contenido"));</code> y <code>helpMenu.add(new JMenuItem("Acerca de"));</code></li>
  <li>Agrega a la barra de menú: <code>menuBar.add(helpMenu);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Nombre estándar "Ayuda"</li>
  <li><strong>✅ Excelente:</strong> Colocar menú de ayuda a la derecha, agregar elementos estándar (Contenido, Acerca de), usar <code>setHelpMenu()</code> para ubicación automática</li>
  <li><strong>⚠️ Evita:</strong> Colocar en ubicación no estándar — puede ser inesperado</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El menú de ayuda aparecerá en la barra de menú. El menú estará a la derecha. Puedes agregar elementos de ayuda.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (246, 'es', 'Barra de Menú Maestro: Agregar Menú de Ayuda',
        'Crea JMenu "Ayuda", agrega dos elementos de menú, agrega a menuBar')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (247, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Colocar Menú de Ayuda a la Derecha</h2>
<p class="intro">Colocar menú de ayuda a la derecha es estándar. Los usuarios esperan encontrar el menú de ayuda a la derecha. Sin ubicación estándar, la interfaz será inesperada.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Ubicación estándar del menú de ayuda</li>
  <li>Método <code>setHelpMenu()</code> — establecer menú de ayuda</li>
  <li>Crear interfaz estándar</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La ubicación estándar mejora el reconocimiento de la interfaz y cumple con las expectativas de los usuarios.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea menú de ayuda: <code>JMenu helpMenu = new JMenu("Ayuda");</code></li>
  <li>Establece como menú de ayuda: <code>menuBar.setHelpMenu(helpMenu);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setHelpMenu()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Colocar menú de ayuda a la derecha, usar nombre estándar</li>
  <li><strong>⚠️ Evita:</strong> Colocar en ubicación no estándar</li>
</ul>
<p><strong>Importante:</strong> Seguir estándares de interfaz.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El menú de ayuda estará a la derecha. El menú se ubicará automáticamente en lugar estándar.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (247, 'es', 'Barra de Menú Maestro: Colocar Menú de Ayuda a la Derecha',
        'Crea JMenu "Ayuda", establece mediante setHelpMenu()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (248, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Agregar Borde a Barra de Menú</h2>
<p class="intro">El borde crea separación visual. Puedes resaltar la barra de menú, crear marco, mejorar legibilidad. Sin borde, la barra de menú se mezclará con el fondo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setBorder()</code> — establecer borde</li>
  <li>Crear separación visual</li>
  <li>Mejorar apariencia</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El borde mejora la percepción visual y la legibilidad de la barra de menú.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea borde: <code>Border border = BorderFactory.createMatteBorder(0, 0, 1, 0, Color.GRAY);</code></li>
  <li>Establece borde: <code>menuBar.setBorder(border);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> BorderFactory para crear</li>
  <li><strong>✅ Excelente:</strong> Usar <code>createMatteBorder()</code> para mate, usar <code>createLineBorder()</code> para línea, usar para separación visual</li>
  <li><strong>⚠️ Evita:</strong> Borde demasiado grueso — puede ser excesivo</li>
</ul>
<p><strong>Importante:</strong> Haz el borde delgado.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La barra de menú tendrá un borde. La barra de menú estará resaltada con marco.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (248, 'es', 'Barra de Menú Maestro: Agregar Borde',
        'Crea borde mate mediante BorderFactory.createMatteBorder(), establece mediante setBorder()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (249, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Agregar Menú de Ayuda (Extendido)</h2>
<p class="intro">El menú de ayuda mejora la accesibilidad. Puedes proporcionar ayuda, asistir al usuario. Sin menú de ayuda, el usuario puede estar perdido.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Crear menú de ayuda</li>
  <li>Agregar elementos de ayuda</li>
  <li>Mejorar accesibilidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El menú de ayuda es necesario para proporcionar acceso a la ayuda y mejorar la accesibilidad de la aplicación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea menú: <code>JMenu helpMenu = new JMenu("Ayuda");</code></li>
  <li>Agrega elementos: <code>helpMenu.add(new JMenuItem("Acerca de"));</code> y <code>helpMenu.add(new JMenuItem("Ayuda"));</code></li>
  <li>Agrega a la barra de menú: <code>menuBar.add(helpMenu);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Crear menú de ayuda</li>
  <li><strong>✅ Excelente:</strong> Agregar elementos útiles, usar para accesibilidad, colocar a la derecha</li>
  <li><strong>⚠️ Evita:</strong> Menú de ayuda sin contenido útil</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El menú de ayuda aparecerá en la barra de menú. Puedes obtener ayuda y asistencia.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (249, 'es', 'Barra de Menú Maestro: Agregar Menú de Ayuda',
        'Crea JMenu "Ayuda", agrega dos elementos de menú, agrega a la barra de menú')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (250, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Obtener Menú Emergente</h2>
<p class="intro">El menú emergente permite personalización. Puedes acceder al menú, configurarlo, mejorar funcionalidad. Sin acceso, no puedes personalizar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getPopupMenu()</code> — obtener menú emergente</li>
  <li>Acceso al menú emergente</li>
  <li>Personalización del menú</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El acceso al menú emergente es necesario para personalización y configuración del menú.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén menú: <code>JPopupMenu popup = menu.getPopupMenu();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getPopupMenu()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar para personalización, usar para configuración, mejorar funcionalidad</li>
  <li><strong>⚠️ Evita:</strong> Cambiar sin necesidad</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Puedes acceder al menú emergente. Puedes personalizar el menú.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (250, 'es', 'Menú Maestro: Obtener Menú Emergente', 'Obtén menú emergente mediante getPopupMenu()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (251, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Agregar Separador al Menú</h2>
<p class="intro">El separador mejora la organización. Puedes agrupar elementos de menú, mejorar legibilidad. Sin separador, todos los elementos estarán juntos.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>addSeparator()</code> — agregar separador</li>
  <li>Agrupar elementos de menú</li>
  <li>Mejorar organización</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los separadores ayudan a agrupar visualmente elementos de menú y mejoran la legibilidad.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega separador: <code>menu.addSeparator();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addSeparator()</code> para agregar</li>
  <li><strong>✅ Excelente:</strong> Usar para agrupar, usar para mejorar organización, mejorar legibilidad</li>
  <li><strong>⚠️ Evita:</strong> Demasiados separadores</li>
</ul>
<p><strong>Importante:</strong> Haz grupos lógicos. No abuses.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un separador entre elementos de menú. Puedes agrupar elementos.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (251, 'es', 'Menú Maestro: Agregar Separador', 'Agrega separador mediante addSeparator()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (252, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Establecer Retraso del Menú</h2>
<p class="intro">El retraso afecta el tiempo de apertura. Puedes establecer retraso antes de abrir el menú, mejorar rendimiento. Sin establecer, el retraso será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setDelay()</code> — establecer retraso</li>
  <li>Gestionar tiempo de apertura del menú</li>
  <li>Mejorar experiencia de usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Configurar retraso permite optimizar el rendimiento y mejorar la experiencia de usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece retraso: <code>menu.setDelay(200);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setDelay()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar valores razonables (100-500 ms), usar para mejorar rendimiento, mejorar experiencia de usuario</li>
  <li><strong>⚠️ Evita:</strong> Retraso demasiado grande o pequeño</li>
</ul>
<p><strong>Importante:</strong> Haz el retraso cómodo.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El menú se abrirá con retraso establecido. Puedes mejorar el rendimiento.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (252, 'es', 'Menú Maestro: Establecer Retraso', 'Establece retraso 200 ms mediante setDelay()')
ON CONFLICT (task_id, language_code) DO NOTHING;
