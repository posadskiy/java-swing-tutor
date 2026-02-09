-- Flyway migration V4: Lesson 27
-- This migration contains lesson, tasks, and documentation for lesson 27

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (221, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear Casilla de Verificación en Menú</h2>
<p class="intro">Las casillas de verificación en menú permiten alternar opciones. "Mostrar barra de herramientas", "Habilitar inicio automático", "Tema oscuro" — todo esto es conveniente hacerlo a través de casillas en menú. El estado de la opción es visible.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>JCheckBoxMenuItem</code> — casilla de verificación en menú</li>
  <li>Crear casilla de verificación en menú</li>
  <li>Gestionar estado de casilla</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Las casillas de verificación en menú son necesarias para alternar opciones con estado visible.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea casilla en menú: <code>JCheckBoxMenuItem showToolbar = new JCheckBoxMenuItem("Mostrar barra de herramientas");</code></li>
  <li>Establece estado (opcional): <code>showToolbar.setSelected(true);</code></li>
  <li>Agrega al menú: <code>viewMenu.add(showToolbar);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Nombres claros que reflejen la acción</li>
  <li><strong>✅ Excelente:</strong> Establecer estado inicial, agregar manejador para reaccionar al cambio</li>
  <li><strong>⚠️ Evita:</strong> Casilla sin manejador — el estado no afecta la aplicación</li>
</ul>
<p><strong>Importante:</strong> Verificar: <code>isSelected()</code> — devuelve true si está marcada. Manejador: <code>addItemListener(listener);</code> — para reaccionar al cambio.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá una casilla de verificación en el menú. Este es un elemento de menú con un cuadrado. Si está marcada — la marca es visible. Al hacer clic, el estado cambia.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (221, 'es', 'Casilla de Menú Principiante: Crear Alternador en Menú',
        'Crea casilla en menú "Mostrar panel", márcala y agrégalo al menú')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (222, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Seleccionar Pestaña Activa</h2>
<p class="intro">El cambio programático de pestañas permite gestionar la navegación. Puedes cambiar a la pestaña necesaria después de una acción, mostrar información necesaria. Sin esto, el usuario debe cambiar manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setSelectedIndex()</code> — selección por índice</li>
  <li>Método <code>setSelectedComponent()</code> — selección por componente</li>
  <li>Cambio programático de pestañas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El cambio programático es necesario para gestionar la navegación y mostrar automáticamente la información necesaria.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Selecciona por índice: <code>tabbedPane.setSelectedIndex(1);</code></li>
  <li>O selecciona por componente: <code>tabbedPane.setSelectedComponent(panel);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setSelectedIndex()</code> para seleccionar por índice, <code>setSelectedComponent()</code> para seleccionar por componente</li>
  <li><strong>✅ Excelente:</strong> Verificar validez del índice antes de seleccionar, usar <code>ChangeListener</code> para rastrear cambios</li>
  <li><strong>⚠️ Evita:</strong> Seleccionar índice inexistente — puede ser error</li>
</ul>
<p><strong>Importante:</strong> <code>getSelectedIndex()</code> — obtener índice de pestaña seleccionada. <code>getSelectedComponent()</code> — obtener componente seleccionado.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La pestaña activa cambiará programáticamente. Puedes cambiar a la pestaña necesaria sin clic del usuario.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (222, 'es', 'Pestañas Maestro: Seleccionar Pestaña Activa',
        'Selecciona pestaña con índice 1 mediante setSelectedIndex(1)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (223, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Ubicación de Pestañas</h2>
<p class="intro">La ubicación de pestañas afecta la interfaz. Puedes colocar pestañas arriba (estándar), abajo, izquierda, derecha. Sin configuración, las pestañas estarán arriba.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setTabPlacement()</code> — establecer ubicación</li>
  <li>Constantes de ubicación de pestañas</li>
  <li>Configurar apariencia de pestañas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Elegir ubicación te permite adaptar la interfaz a diferentes tipos de aplicaciones y mejorar el diseño.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece ubicación: <code>tabbedPane.setTabPlacement(JTabbedPane.BOTTOM);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> TOP para arriba (estándar), BOTTOM para abajo, LEFT para izquierda, RIGHT para derecha</li>
  <li><strong>⚠️ Evita:</strong> Cambiar frecuentemente la ubicación — puede ser inesperado</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Las pestañas estarán en la ubicación especificada. Pueden estar arriba, abajo, izquierda o derecha.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (223, 'es', 'Pestañas Maestro: Configurar Ubicación de Pestañas',
        'Establece ubicación BOTTOM mediante setTabPlacement()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (224, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Sugerencia para Pestaña</h2>
<p class="intro">La sugerencia proporciona información adicional. Puedes mostrar descripción de pestaña, información adicional. Sin sugerencia, el usuario no verá información adicional.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setToolTipTextAt()</code> — establecer sugerencia</li>
  <li>Crear pestañas informativas</li>
  <li>Mejorar experiencia de usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Las sugerencias mejoran la experiencia de usuario proporcionando información adicional sobre las pestañas.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega pestaña: <code>tabbedPane.addTab("Pestaña", component);</code></li>
  <li>Establece sugerencia: <code>tabbedPane.setToolTipTextAt(0, "Descripción de pestaña");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setToolTipTextAt()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar sugerencias claras, usar para descripción, usar para información adicional</li>
  <li><strong>⚠️ Evita:</strong> Sugerencias demasiado largas — puede ser inconveniente</li>
</ul>
<p><strong>Importante:</strong> Haz las sugerencias cortas.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al pasar el mouse, aparecerá una sugerencia. Puedes mostrar descripción de pestaña.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (224, 'es', 'Pestañas Maestro: Agregar Sugerencia',
        'Agrega pestaña, establece sugerencia "Descripción" mediante setToolTipTextAt(0, "Descripción")')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (225, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Habilitar/Deshabilitar Pestaña</h2>
<p class="intro">Habilitar/deshabilitar pestaña gestiona la disponibilidad. Puedes deshabilitar temporalmente la pestaña, hacerla no disponible. Sin gestión, todas las pestañas están siempre disponibles.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setEnabledAt()</code> — habilitar/deshabilitar pestaña</li>
  <li>Gestionar disponibilidad de pestañas</li>
  <li>Crear interfaces dinámicas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Gestionar disponibilidad te permite mostrar estados de pestañas y mejorar la lógica de la interfaz.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Deshabilita pestaña: <code>tabbedPane.setEnabledAt(0, false);</code></li>
  <li>O habilita: <code>tabbedPane.setEnabledAt(0, true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setEnabledAt()</code> para gestionar</li>
  <li><strong>✅ Excelente:</strong> Deshabilitar pestañas temporalmente no disponibles, habilitar cuando sea necesario, usar para interfaces dinámicas</li>
  <li><strong>⚠️ Evita:</strong> Deshabilitar sin razón</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La pestaña será habilitada o deshabilitada. Puedes gestionar la disponibilidad de pestañas.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (225, 'es', 'Pestañas Maestro: Habilitar/Deshabilitar Pestaña',
        'Deshabilita pestaña 0 mediante setEnabledAt(0, false), luego habilita mediante setEnabledAt(0, true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (226, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Obtener Índice de Pestaña</h2>
<p class="intro">El índice de pestaña permite gestionar pestañas. Puedes encontrar posición de pestaña, cambiar a la necesaria. Sin índice, no puedes gestionar pestañas.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>indexOfTab()</code> — obtener índice</li>
  <li>Método <code>getSelectedIndex()</code> — obtener índice seleccionado</li>
  <li>Trabajar con índices de pestañas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Trabajar con índices es necesario para la gestión programática de pestañas y navegación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén índice: <code>int index = tabbedPane.indexOfTab("Pestaña");</code></li>
  <li>O obtén seleccionado: <code>int selected = tabbedPane.getSelectedIndex();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>indexOfTab()</code> para obtener, <code>getSelectedIndex()</code> para seleccionado</li>
  <li><strong>✅ Excelente:</strong> Usar para navegación, usar para gestión</li>
  <li><strong>⚠️ Evita:</strong> Ignorar índices</li>
</ul>
<p><strong>Importante:</strong> Verificar existencia del índice.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Podrás obtener el índice de pestaña. Puedes usar para navegación y gestión.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (226, 'es', 'Pestañas Maestro: Obtener Índice de Pestaña',
        'Obtén índice mediante indexOfTab("Pestaña"), obtén seleccionado mediante getSelectedIndex()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (227, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Separador en Barra de Herramientas</h2>
<p class="intro">El separador mejora la organización. Puedes agrupar herramientas, mejorar legibilidad. Sin separador, todas las herramientas estarán juntas.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>addSeparator()</code> — agregar separador</li>
  <li>Agrupar herramientas</li>
  <li>Mejorar organización</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los separadores ayudan a agrupar visualmente herramientas y mejoran la legibilidad de la barra.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega separador: <code>toolBar.addSeparator();</code></li>
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
<p>Aparecerá un separador entre herramientas. Puedes agrupar herramientas.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (227, 'es', 'Barra de Herramientas Maestro: Agregar Separador', 'Agrega separador mediante addSeparator()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (228, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Espaciado en Barra de Herramientas</h2>
<p class="intro">El espaciado mejora la apariencia visual. Puedes agregar distancia entre herramientas, mejorar legibilidad. Sin espaciado, las herramientas estarán juntas.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>addSeparator()</code> — agregar separador para espaciado</li>
  <li>Mejorar apariencia visual</li>
  <li>Crear barra ordenada</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El espaciado mejora la percepción visual y la legibilidad de la barra de herramientas.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega separadores: <code>toolBar.addSeparator();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addSeparator()</code> para espaciado</li>
  <li><strong>✅ Excelente:</strong> Usar para agrupar, mejorar apariencia visual, mejorar legibilidad</li>
  <li><strong>⚠️ Evita:</strong> Demasiados separadores</li>
</ul>
<p><strong>Importante:</strong> Haz grupos lógicos. No abuses.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Habrá espaciado entre herramientas. Puedes agrupar herramientas.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (228, 'es', 'Barra de Herramientas Maestro: Establecer Espaciado',
        'Agrega separador mediante addSeparator() para crear espaciado')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (229, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Orientación de Barra de Herramientas</h2>
<p class="intro">La orientación determina la dirección. Puedes colocar la barra horizontal o verticalmente, mejorar diseño. Sin establecer, la orientación será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setOrientation()</code> — establecer orientación</li>
  <li>Constantes <code>SwingConstants.HORIZONTAL</code>, <code>SwingConstants.VERTICAL</code></li>
  <li>Gestionar dirección de la barra</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Elegir orientación te permite adaptar la barra de herramientas a diferentes diseños de interfaz.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece orientación: <code>toolBar.setOrientation(SwingConstants.VERTICAL);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setOrientation()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar HORIZONTAL para horizontal, VERTICAL para vertical, mejorar diseño</li>
  <li><strong>⚠️ Evita:</strong> Usar orientación inapropiada</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La barra de herramientas estará en la orientación especificada. Puedes mejorar el diseño.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (229, 'es', 'Barra de Herramientas Maestro: Establecer Orientación',
        'Establece orientación VERTICAL mediante setOrientation()')
ON CONFLICT (task_id, language_code) DO NOTHING;
