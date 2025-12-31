-- Flyway migration V4: Lesson 22
-- This migration contains lesson, tasks, and documentation for lesson 22

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (183, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear Interfaz con Pestañas</h2>
<p class="intro">JTabbedPane organiza contenido. Puedes dividir la interfaz en pestañas, agrupar contenido relacionado, ahorrar espacio. Sin pestañas, todo estará en un solo lugar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>JTabbedPane</code> — panel con pestañas</li>
  <li>Crear pestañas</li>
  <li>Agregar componentes a pestañas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Las pestañas son necesarias para organizar contenido y ahorrar espacio en la interfaz.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea panel con pestañas: <code>JTabbedPane tabbedPane = new JTabbedPane();</code></li>
  <li>Agrega pestañas: <code>tabbedPane.addTab("Pestaña 1", new JPanel());</code> y <code>tabbedPane.addTab("Pestaña 2", new JPanel());</code></li>
  <li>Agrega al formulario: <code>add(tabbedPane);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addTab()</code> para agregar pestañas</li>
  <li><strong>✅ Excelente:</strong> Usar nombres claros de pestañas, agrupar contenido relacionado</li>
  <li><strong>⚠️ Evita:</strong> Demasiadas pestañas — sobrecarga la interfaz</li>
</ul>
<p><strong>Importante:</strong> <code>addTab(String title, Icon icon, Component component)</code> — con icono. <code>insertTab(String title, Icon icon, Component component, String tip, int index)</code> — insertar pestaña. <code>removeTabAt(int index)</code> — eliminar pestaña. <code>setSelectedIndex(int index)</code> — seleccionar pestaña.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un panel con pestañas. Estas son pestañas en la parte superior, puedes cambiar entre ellas. El contenido de cada pestaña se muestra cuando se selecciona.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (183, 'es', 'Pestañas Principiante: Crear Interfaz con Pestañas',
        'Crea un panel con pestañas, agrega dos pestañas "Pestaña 1" y "Pestaña 2" y agrégalo al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (184, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Ubicación de Pestañas</h2>
<p class="intro">La ubicación afecta la apariencia de la interfaz. Arriba — estándar, abajo — alternativa, izquierda/derecha — para interfaces verticales. Puedes elegir la ubicación apropiada.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setTabPlacement(int)</code> — establecer ubicación</li>
  <li>Constantes <code>TOP</code>, <code>BOTTOM</code>, <code>LEFT</code>, <code>RIGHT</code></li>
  <li>Colocar pestañas en diferentes lugares</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Elegir ubicación te permite adaptar la interfaz a diferentes tipos de aplicaciones.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece la ubicación: <code>tabbedPane.setTabPlacement(JTabbedPane.BOTTOM);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> TOP para arriba (por defecto), BOTTOM para abajo, LEFT para izquierda, RIGHT para derecha</li>
  <li><strong>⚠️ Evita:</strong> Usar ubicación inapropiada</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Las pestañas se colocarán en la ubicación especificada. Arriba, abajo, izquierda o derecha. Puedes elegir la ubicación apropiada.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (184, 'es', 'Pestañas Maestro: Establecer Ubicación de Pestañas',
        'Crea un panel con pestañas, establece ubicación en la parte inferior mediante setTabPlacement(JTabbedPane.BOTTOM)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (185, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Selección de Pestaña</h2>
<p class="intro">La selección de pestaña permite cambio programático. Puedes abrir la pestaña necesaria al iniciar, cambiar después de acción, mejorar experiencia de usuario. Sin gestión, la selección será solo manual.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setSelectedIndex(int)</code> — seleccionar pestaña por índice</li>
  <li>Método <code>setSelectedComponent(Component)</code> — seleccionar pestaña por componente</li>
  <li>Gestionar pestaña seleccionada</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La selección programática de pestaña te permite controlar el contenido mostrado y mejorar la experiencia de usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Selecciona pestaña por índice: <code>tabbedPane.setSelectedIndex(1);</code></li>
  <li>O por componente: <code>tabbedPane.setSelectedComponent(component);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setSelectedIndex()</code> para seleccionar, <code>setSelectedComponent()</code> para seleccionar</li>
  <li><strong>✅ Excelente:</strong> Seleccionar pestaña al iniciar, cambiar después de acción</li>
  <li><strong>⚠️ Evita:</strong> Seleccionar pestaña inexistente</li>
</ul>
<p><strong>Importante:</strong> <code>getSelectedIndex()</code> — obtener índice de pestaña seleccionada. <code>getSelectedComponent()</code> — obtener componente seleccionado.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La pestaña seleccionada se volverá activa. El contenido de esta pestaña se mostrará. Puedes cambiar programáticamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (185, 'es', 'Pestañas Maestro: Seleccionar Pestaña',
        'Crea un panel con pestañas, agrega dos pestañas, selecciona segunda mediante setSelectedIndex(1)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (186, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Icono en Pestaña</h2>
<p class="intro">El icono mejora la apariencia visual. Puedes agregar un icono a la pestaña, hacerla más reconocible, mejorar la navegación. Sin icono, la pestaña será solo con texto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setIconAt(int, Icon)</code> — establecer icono</li>
  <li>Método <code>addTab(String, Icon, Component)</code> — agregar con icono</li>
  <li>Mejorar apariencia visual</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los iconos mejoran la percepción visual y la navegación por las pestañas.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega pestaña con icono: <code>tabbedPane.addTab("Pestaña", icon, component);</code></li>
  <li>O establece icono para existente: <code>tabbedPane.setIconAt(0, icon);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addTab()</code> con icono, <code>setIconAt()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar iconos claros, mejorar navegación</li>
  <li><strong>⚠️ Evita:</strong> Usar iconos demasiado grandes</li>
</ul>
<p><strong>Importante:</strong> <code>getIconAt(int index)</code> — obtener icono.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un icono en la pestaña. Puedes mejorar la apariencia visual y la navegación.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (186, 'es', 'Pestañas Maestro: Agregar Icono a Pestaña',
        'Crea un panel con pestañas, agrega pestaña con icono mediante addTab("Pestaña", icon, component)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (187, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Sugerencia en Pestaña</h2>
<p class="intro">La sugerencia ayuda al usuario. Puedes mostrar información adicional, explicar el propósito de la pestaña, mejorar la comprensión. Sin sugerencia, el usuario puede no entender el propósito de la pestaña.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setToolTipTextAt(int, String)</code> — establecer sugerencia</li>
  <li>Mostrar información al pasar el mouse</li>
  <li>Mejorar experiencia de usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Las sugerencias mejoran la comprensión de la interfaz y ayudan al usuario a orientarse.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece la sugerencia: <code>tabbedPane.setToolTipTextAt(0, "Esta es la primera pestaña");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setToolTipTextAt()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar sugerencias informativas, explicar propósito de pestaña, usar para ayudar al usuario</li>
  <li><strong>⚠️ Evita:</strong> Usar sugerencias demasiado largas</li>
</ul>
<p><strong>Importante:</strong> <code>getToolTipTextAt(int index)</code> — obtener sugerencia.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al pasar el mouse sobre la pestaña, aparecerá una sugerencia. Esta es una sugerencia emergente con información. Puedes mejorar la experiencia de usuario.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (187, 'es', 'Pestañas Maestro: Agregar Sugerencia a Pestaña',
        'Crea un panel con pestañas, agrega pestaña, establece sugerencia "Primera pestaña" mediante setToolTipTextAt(0, "Primera pestaña")')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (188, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Habilitar/Deshabilitar Pestaña</h2>
<p class="intro">Habilitar/deshabilitar gestiona la disponibilidad. Puedes deshabilitar pestaña cuando no esté disponible, mostrar estado, mejorar experiencia de usuario. Sin gestión, todas las pestañas están siempre disponibles.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setEnabledAt(int, boolean)</code> — habilitar/deshabilitar</li>
  <li>Gestionar disponibilidad de pestaña</li>
  <li>Mejorar experiencia de usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Gestionar disponibilidad te permite mostrar estados de pestañas y mejorar la experiencia de usuario.</p>
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
  <li><strong>✅ Excelente:</strong> Deshabilitar pestañas no disponibles, mostrar estado, mejorar experiencia de usuario</li>
  <li><strong>⚠️ Evita:</strong> Deshabilitar sin explicación</li>
</ul>
<p><strong>Importante:</strong> <code>isEnabledAt(int index)</code> — verificar disponibilidad.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La pestaña se volverá no disponible o disponible. La pestaña no disponible será gris e inactiva. Puedes gestionar la disponibilidad.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (188, 'es', 'Pestañas Maestro: Habilitar/Deshabilitar Pestaña',
        'Crea un panel con pestañas, agrega pestaña, deshabilítala mediante setEnabledAt(0, false)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (189, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Manejo de Cambio de Pestaña</h2>
<p class="intro">El manejo de cambios permite reaccionar al cambio. Puedes actualizar otros componentes, cargar datos, realizar acciones al cambiar. Sin manejo, no puedes reaccionar a cambios.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Interfaz <code>ChangeListener</code> — oyente de cambios</li>
  <li>Método <code>addChangeListener()</code> — agregar oyente</li>
  <li>Reaccionar al cambio de pestañas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El manejo de cambios te permite sincronizar la interfaz y reaccionar a acciones del usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega oyente: <code>tabbedPane.addChangeListener(e -> {<br>
&nbsp;&nbsp;int index = tabbedPane.getSelectedIndex();<br>
&nbsp;&nbsp;label.setText("Pestaña seleccionada: " + index);<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addChangeListener()</code> para manejar</li>
  <li><strong>✅ Excelente:</strong> Usar <code>getSelectedIndex()</code> para obtener índice, actualizar otros componentes, cargar datos al cambiar</li>
  <li><strong>⚠️ Evita:</strong> Ignorar cambios</li>
</ul>
<p><strong>Importante:</strong> <code>getSelectedComponent()</code> — obtener componente seleccionado.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al cambiar pestañas, se activará el manejador. Puedes manejar el cambio y actualizar otros componentes.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (189, 'es', 'Pestañas Maestro: Manejar Cambio de Pestaña',
        'Crea un panel con pestañas, agrega ChangeListener, obtén índice de pestaña seleccionada mediante getSelectedIndex(), muéstralo')
ON CONFLICT (task_id, language_code) DO NOTHING;
