-- Flyway migration V4: Lesson 23
-- This migration contains lesson, tasks, and documentation for lesson 23

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (190, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear Barra de Herramientas</h2>
<p class="intro">JToolBar proporciona acceso rápido. Botones para acciones frecuentes, iconos para comandos, agrupar herramientas. Sin barra de herramientas, tendrás que usar menú.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>JToolBar</code> — barra de herramientas</li>
  <li>Crear barra de herramientas</li>
  <li>Agregar componentes a la barra</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La barra de herramientas es necesaria para acceso rápido a funciones usadas frecuentemente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea barra de herramientas: <code>JToolBar toolbar = new JToolBar();</code></li>
  <li>Agrega botones: <code>toolbar.add(new JButton("Botón 1"));</code> y <code>toolbar.add(new JButton("Botón 2"));</code></li>
  <li>Agrega al formulario: <code>add(toolbar, BorderLayout.NORTH);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>add()</code> para agregar componentes</li>
  <li><strong>✅ Excelente:</strong> Usar botones con iconos, agrupar herramientas relacionadas, usar separadores para agrupar</li>
  <li><strong>⚠️ Evita:</strong> Demasiados botones — sobrecarga la interfaz</li>
</ul>
<p><strong>Importante:</strong> <code>addSeparator()</code> — agregar separador. <code>add(Component, int index)</code> — agregar en posición. <code>remove(Component)</code> — eliminar componente.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá una barra de herramientas. Este es un panel con botones en la parte superior (o en otro lugar). Puedes realizar acciones rápidamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (190, 'es', 'Barra de Herramientas Principiante: Crear Barra con Botones',
        'Crea una barra de herramientas, agrega dos botones y agrégalo al formulario en BorderLayout.NORTH')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (191, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Orientación de Barra de Herramientas</h2>
<p class="intro">La orientación afecta la apariencia de la barra. Horizontal — para arriba/abajo, vertical — para izquierda/derecha. Puedes elegir la orientación apropiada para la interfaz.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setOrientation(int)</code> — establecer orientación</li>
  <li>Constantes <code>HORIZONTAL</code> y <code>VERTICAL</code></li>
  <li>Barra horizontal y vertical</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Elegir orientación te permite adaptar la barra a diferentes tipos de interfaces.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece la orientación: <code>toolbar.setOrientation(JToolBar.VERTICAL);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> HORIZONTAL para horizontal (por defecto), VERTICAL para vertical</li>
  <li><strong>✅ Excelente:</strong> Elegir orientación según el lugar, usar para ahorrar espacio</li>
  <li><strong>⚠️ Evita:</strong> Usar orientación incorrecta</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La barra de herramientas tendrá la orientación establecida. Horizontal — izquierda a derecha, vertical — arriba a abajo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (191, 'es', 'Barra de Herramientas Maestro: Establecer Orientación',
        'Crea una barra de herramientas, establece orientación vertical mediante setOrientation(JToolBar.VERTICAL)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (192, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Barra de Herramientas Flotante</h2>
<p class="intro">La barra flotante mejora la flexibilidad. Puedes mover la barra, colocarla en un lugar conveniente, configurar interfaz. Sin esto, la barra estará fija.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setFloatable(boolean)</code> — barra flotante</li>
  <li>Capacidad de mover la barra</li>
  <li>Mejorar experiencia de usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La barra flotante permite al usuario configurar la interfaz según sus preferencias.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Habilita barra flotante: <code>toolbar.setFloatable(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setFloatable(true)</code> para habilitar</li>
  <li><strong>✅ Excelente:</strong> Usar para mejorar flexibilidad, permitir al usuario configurar, mejorar experiencia de usuario</li>
  <li><strong>⚠️ Evita:</strong> Deshabilitar sin necesidad</li>
</ul>
<p><strong>Importante:</strong> <code>true</code> — habilitar movimiento (por defecto), <code>false</code> — fijar barra.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La barra de herramientas se puede mover. Puedes arrastrar la barra a otro lugar, hacerla flotante.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (192, 'es', 'Barra de Herramientas Maestro: Habilitar Barra Flotante',
        'Crea una barra de herramientas, habilita barra flotante mediante setFloatable(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (193, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Efecto de Pasar Mouse en Barra de Herramientas</h2>
<p class="intro">El efecto de pasar mouse mejora la experiencia visual. Los botones se resaltan al pasar el mouse, mejoran la retroalimentación, hacen la interfaz más responsiva. Sin efecto, los botones no reaccionarán al pasar el mouse.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setRollover(boolean)</code> — efecto de pasar mouse</li>
  <li>Resaltado de botones al pasar el mouse</li>
  <li>Mejorar experiencia visual</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El efecto de pasar mouse mejora la retroalimentación visual y hace la interfaz más responsiva.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Habilita efecto de pasar mouse: <code>toolbar.setRollover(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setRollover(true)</code> para habilitar</li>
  <li><strong>✅ Excelente:</strong> Usar para mejorar experiencia visual, mejorar retroalimentación, hacer interfaz más responsiva</li>
  <li><strong>⚠️ Evita:</strong> Deshabilitar sin necesidad</li>
</ul>
<p><strong>Importante:</strong> <code>true</code> — habilitar resaltado (por defecto), <code>false</code> — deshabilitar resaltado.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al pasar el mouse, los botones se resaltarán. Puedes mejorar la experiencia visual y la retroalimentación.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (193, 'es', 'Barra de Herramientas Maestro: Habilitar Efecto de Pasar Mouse',
        'Crea una barra de herramientas, habilita efecto de pasar mouse mediante setRollover(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (194, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Separador en Barra de Herramientas</h2>
<p class="intro">El separador agrupa herramientas. Puedes separar herramientas relacionadas, mejorar organización, hacer la barra más comprensible. Sin separadores, todas las herramientas estarán juntas.</p>
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
<p>Los separadores ayudan a organizar herramientas en grupos lógicos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega separador: <code>toolbar.addSeparator();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addSeparator()</code> para agregar</li>
  <li><strong>✅ Excelente:</strong> Agrupar herramientas relacionadas, mejorar organización, hacer barra más comprensible</li>
  <li><strong>⚠️ Evita:</strong> Usar demasiados separadores</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un separador en la barra de herramientas. Esta es una línea que separa grupos de herramientas. Puedes mejorar la organización.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (194, 'es', 'Barra de Herramientas Maestro: Agregar Separador',
        'Crea una barra de herramientas, agrega botón, agrega separador mediante addSeparator(), agrega otro botón')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (195, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Borde de Barra de Herramientas</h2>
<p class="intro">El borde mejora la apariencia visual. Puedes establecer el borde deseado, separar barra, mejorar diseño. Sin configuración, el borde será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setBorder(Border)</code> — establecer borde</li>
  <li>Mejorar apariencia visual</li>
  <li>Personalizar apariencia</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El borde te permite separar visualmente la barra y mejorar el diseño de la interfaz.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece el borde: <code>toolbar.setBorder(BorderFactory.createEtchedBorder());</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setBorder()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar BorderFactory para crear bordes, usar para mejorar apariencia, separar barra</li>
  <li><strong>⚠️ Evita:</strong> Usar bordes demasiado gruesos</li>
</ul>
<p><strong>Importante:</strong> <code>BorderFactory.createEtchedBorder()</code> — borde grabado. <code>BorderFactory.createLineBorder(Color)</code> — línea. <code>BorderFactory.createTitledBorder(String)</code> — borde con título.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La barra de herramientas tendrá el borde establecido. Puedes mejorar la apariencia visual.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (195, 'es', 'Barra de Herramientas Maestro: Establecer Borde',
        'Crea una barra de herramientas, establece borde mediante setBorder(BorderFactory.createEtchedBorder())')
ON CONFLICT (task_id, language_code) DO NOTHING;
