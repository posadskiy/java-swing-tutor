-- Flyway migration V4: Lesson 25
-- This migration contains lesson, tasks, and documentation for lesson 25

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (203, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear Menú Desplegable</h2>
<p class="intro">Los menús organizan funciones de la aplicación. Archivo → Abrir, Guardar, Salir. Editar → Copiar, Pegar. El menú hace las funciones accesibles y organizadas.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>JMenu</code> — menú desplegable</li>
  <li>Crear menú</li>
  <li>Agregar elementos de menú</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los menús son necesarios para organizar funciones de la aplicación y proporcionar acceso a comandos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea menú: <code>JMenu fileMenu = new JMenu("Archivo");</code></li>
  <li>Crea elementos de menú: <code>JMenuItem openItem = new JMenuItem("Abrir");</code> y <code>JMenuItem saveItem = new JMenuItem("Guardar");</code></li>
  <li>Agrega elementos al menú: <code>fileMenu.add(openItem);</code> y <code>fileMenu.add(saveItem);</code></li>
  <li>Agrega menú a la barra de menú: <code>menuBar.add(fileMenu);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Nombres claros de menú y elementos</li>
  <li><strong>✅ Excelente:</strong> Agregar separadores: <code>fileMenu.addSeparator();</code>, agregar submenú para agrupar</li>
  <li><strong>⚠️ Evita:</strong> Demasiados elementos — el menú se volverá largo</li>
</ul>
<p><strong>Importante:</strong> Separador: <code>menu.addSeparator();</code> — separación visual. Submenú: crear JMenu y agregar a otro menú. Mnemónico: <code>menu.setMnemonic(KeyEvent.VK_F);</code> — tecla de acceso rápido.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un menú "Archivo" en la barra de menú. Al hacer clic, se abrirá una lista desplegable con elementos. Puedes seleccionar un elemento para realizar una acción.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (203, 'es', 'Menú Principiante: Crear Menú Desplegable',
        'Crea menú "Archivo", agrega elemento "Abrir" y agrega menú a la barra de menú')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (204, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Crear Ventana sin Marco</h2>
<p class="intro">JWindow permite crear una ventana sin marco. Sugerencias emergentes, notificaciones, diálogos personalizados — todo esto requiere una ventana sin marco. Sin esto, tendrás que usar JFrame con marco.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>JWindow</code> — ventana sin marco</li>
  <li>Crear ventanas emergentes</li>
  <li>Agregar contenido a la ventana</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Las ventanas sin marco son necesarias para sugerencias emergentes, notificaciones y diálogos personalizados.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea ventana: <code>JWindow window = new JWindow(frame);</code></li>
  <li>Agrega contenido: <code>window.add(new JLabel("Ventana emergente"));</code></li>
  <li>Muestra ventana: <code>window.setVisible(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Especificar ventana padre</li>
  <li><strong>✅ Excelente:</strong> Usar <code>pack()</code> para tamaño, usar <code>setLocation()</code> para posición, usar para ventanas emergentes</li>
  <li><strong>⚠️ Evita:</strong> Ventanas demasiado grandes — puede ser inconveniente</li>
</ul>
<p><strong>Importante:</strong> Sin marco y barra de título.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá una ventana sin marco. La ventana estará sin barra de título y botones. Puedes agregar cualquier contenido.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (204, 'es', 'Ventana Principiante: Crear Ventana sin Marco',
        'Crea JWindow con padre frame, agrega JLabel, muestra ventana')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (205, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Ventana Siempre Encima</h2>
<p class="intro">La ventana encima la hace siempre visible. Sugerencias emergentes, notificaciones, mensajes importantes — todo esto requiere ventana encima. Sin esto, la ventana puede ser ocultada por otras ventanas.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setAlwaysOnTop()</code> — establecer encima</li>
  <li>Crear ventanas emergentes</li>
  <li>Configurar comportamiento de ventana</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El modo "siempre encima" es necesario para notificaciones importantes y sugerencias emergentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece encima: <code>window.setAlwaysOnTop(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setAlwaysOnTop(true)</code> para encima</li>
  <li><strong>✅ Excelente:</strong> Usar para notificaciones importantes, usar para sugerencias emergentes</li>
  <li><strong>⚠️ Evita:</strong> Siempre encima para todas las ventanas — puede interferir con el trabajo</li>
</ul>
<p><strong>Importante:</strong> No abusar — puede interferir.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La ventana estará siempre encima de otras ventanas. Incluso si abres otras ventanas, esta ventana permanecerá visible.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (205, 'es', 'Ventana Maestro: Hacer Siempre Encima', 'Establece siempre encima mediante setAlwaysOnTop(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (206, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Establecer Fondo de Ventana</h2>
<p class="intro">El fondo hace la ventana visualmente atractiva. Puedes resaltar ventana, crear temas, mejorar legibilidad. Sin fondo, la ventana será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setBackground()</code> — establecer fondo</li>
  <li>Crear ventanas de colores</li>
  <li>Configurar apariencia</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Configurar el fondo te permite mejorar el diseño visual y legibilidad de la ventana.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece fondo: <code>window.setBackground(Color.LIGHT_GRAY);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setBackground()</code> para fondo</li>
  <li><strong>✅ Excelente:</strong> Usar colores estándar, usar colores personalizados</li>
  <li><strong>⚠️ Evita:</strong> Colores demasiado brillantes — puede ser inconveniente</li>
</ul>
<p><strong>Importante:</strong> Usar colores apagados. Considerar contraste.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La ventana se volverá de color. El fondo de la ventana será del color especificado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (206, 'es', 'Ventana Maestro: Establecer Fondo', 'Establece fondo LIGHT_GRAY mediante setBackground()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (207, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Ventana Siempre Encima (Avanzado)</h2>
<p class="intro">Siempre encima hace la ventana visible. La ventana estará siempre encima de otras ventanas, no será ocultada. Sin esto, la ventana puede ser ocultada.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setAlwaysOnTop()</code> — siempre encima</li>
  <li>Crear ventanas flotantes</li>
  <li>Mejorar visibilidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El modo "siempre encima" es necesario para ventanas flotantes y notificaciones.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece siempre encima: <code>window.setAlwaysOnTop(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setAlwaysOnTop(true)</code> para siempre encima</li>
  <li><strong>✅ Excelente:</strong> Usar para ventanas flotantes, usar para notificaciones</li>
  <li><strong>⚠️ Evita:</strong> Siempre encima para todas las ventanas — puede ser intrusivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La ventana estará siempre encima de otras ventanas. La ventana no será ocultada.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (207, 'es', 'Ventana Maestro: Siempre Encima', 'Establece siempre encima mediante setAlwaysOnTop(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (208, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Establecer Fondo de Ventana (Avanzado)</h2>
<p class="intro">El fondo determina el color de la ventana. Puedes establecer el color deseado, mejorar diseño visual. Sin configuración, el fondo será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setBackground()</code> — establecer fondo</li>
  <li>Crear ventana de color</li>
  <li>Mejorar diseño visual</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Configurar el fondo te permite mejorar el diseño visual y crear ventanas temáticas.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece fondo: <code>window.setBackground(Color.LIGHT_GRAY);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setBackground()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar Color para color, usar para diseño visual, combinar con otras configuraciones</li>
  <li><strong>⚠️ Evita:</strong> Color demasiado brillante — puede ser inconveniente</li>
</ul>
<p><strong>Importante:</strong> Usar colores razonables.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El fondo de la ventana cambiará. La ventana tendrá el color especificado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (208, 'es', 'Ventana Maestro: Establecer Fondo', 'Establece fondo LIGHT_GRAY mediante setBackground()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (209, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Un Toque en Panel Dividido</h2>
<p class="intro">Un toque acelera el cambio. Puedes expandir o colapsar rápidamente el panel con un clic, mejorar navegación. Sin un toque, necesitas arrastrar el divisor.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setOneTouchExpandable()</code> — habilitar un toque</li>
  <li>Botones para expandir/colapsar rápido</li>
  <li>Mejorar experiencia de usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Un toque mejora la usabilidad y acelera el trabajo con el panel dividido.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Habilita un toque: <code>splitPane.setOneTouchExpandable(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setOneTouchExpandable(true)</code> para habilitar</li>
  <li><strong>✅ Excelente:</strong> Usar para cambio rápido, mejorar navegación, usar para mejorar UX</li>
  <li><strong>⚠️ Evita:</strong> Deshabilitar sin necesidad</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerán botones para expandir/colapsar rápido en el divisor. Puedes cambiar rápidamente entre paneles.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (209, 'es', 'Divisor Maestro: Habilitar Un Toque', 'Habilita un toque mediante setOneTouchExpandable(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (210, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Diseño Continuo en Panel Dividido</h2>
<p class="intro">El diseño continuo mejora la suavidad. Al arrastrar el divisor, los componentes se actualizarán continuamente, mejorar efecto visual. Sin diseño continuo, la actualización será solo al final.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setContinuousLayout()</code> — habilitar diseño continuo</li>
  <li>Redimensionamiento suave</li>
  <li>Mejorar experiencia de usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El diseño continuo asegura una actualización suave de la interfaz al arrastrar el divisor.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Habilita diseño continuo: <code>splitPane.setContinuousLayout(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setContinuousLayout(true)</code> para habilitar</li>
  <li><strong>✅ Excelente:</strong> Usar para suavidad, mejorar efecto visual, usar para mejorar UX</li>
  <li><strong>⚠️ Evita:</strong> Deshabilitar sin necesidad</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al arrastrar el divisor, los componentes se actualizarán suavemente. Puedes ver cambios en tiempo real.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (210, 'es', 'Divisor Maestro: Habilitar Diseño Continuo',
        'Habilita diseño continuo mediante setContinuousLayout(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (211, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Peso de Redimensionamiento en Panel Dividido</h2>
<p class="intro">El peso de redimensionamiento determina proporciones. Puedes establecer cómo se distribuye el espacio al redimensionar, mejorar diseño. Sin peso, las proporciones serán estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setResizeWeight()</code> — establecer peso de redimensionamiento</li>
  <li>Gestionar proporciones al redimensionar</li>
  <li>Mejorar diseño</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El peso de redimensionamiento te permite controlar cómo las partes del panel dividido responden al redimensionamiento de la ventana.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece peso: <code>splitPane.setResizeWeight(0.5);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setResizeWeight()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar 0.0-1.0 para peso. 0.0 — solo izquierdo/superior, 1.0 — solo derecho/inferior, 0.5 — uniformemente</li>
  <li><strong>⚠️ Evita:</strong> Usar valores fuera del rango</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al redimensionar, el espacio se distribuirá por peso. Puedes mejorar el diseño.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (211, 'es', 'Divisor Maestro: Establecer Peso de Redimensionamiento',
        'Establece peso 0.5 mediante setResizeWeight()')
ON CONFLICT (task_id, language_code) DO NOTHING;
