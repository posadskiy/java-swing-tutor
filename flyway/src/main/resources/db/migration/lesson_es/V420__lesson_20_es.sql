-- Flyway migration V4: Lesson 20
-- This migration contains lesson, tasks, and documentation for lesson 20

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (170, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear un Panel Desplazable</h2>
<p class="intro">JScrollPane permite ver contenido grande. Textos largos, listas grandes, imágenes grandes — todo esto requiere desplazamiento. Sin desplazamiento, no puedes ver todo el contenido.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>JScrollPane</code> — panel con desplazamiento</li>
  <li>Crear un área desplazable</li>
  <li>Agregar un componente a JScrollPane</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Un panel desplazable es necesario para mostrar contenido que no cabe en la pantalla.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea un componente (por ejemplo, JTextArea): <code>JTextArea area = new JTextArea("Texto largo...");</code></li>
  <li>Crea un panel desplazable: <code>JScrollPane scrollPane = new JScrollPane(area);</code></li>
  <li>Agrega al formulario: <code>add(scrollPane);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Envolver componente en JScrollPane</li>
  <li><strong>✅ Excelente:</strong> Configurar política de desplazamiento para horizontal y vertical</li>
  <li><strong>⚠️ Evita:</strong> JScrollPane sin componente — desplazamiento vacío</li>
</ul>
<p><strong>Importante:</strong> Constructor: <code>new JScrollPane(componente)</code>. Política de desplazamiento: <code>setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);</code>. Vertical: <code>setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED);</code>. Mostrar siempre: <code>ALWAYS</code>, según necesidad: <code>AS_NEEDED</code>, nunca: <code>NEVER</code>. Generalmente usado para JTextArea, JList, JTable, JTree.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un área desplazable. Si el contenido es más grande que el área, aparecerán barras de desplazamiento. Puedes desplazar el contenido con el mouse o el teclado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (170, 'es', 'Panel Desplazable Principiante: Agregar Desplazamiento',
        'Crea un área de texto, envuélvela en JScrollPane y agrégalo al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (171, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Doble Búfer del Panel</h2>
<p class="intro">El doble búfer mejora la suavidad. El renderizado ocurrirá en un búfer, luego se copiará a la pantalla, eliminando el parpadeo. Sin búfer, puede haber parpadeo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setDoubleBuffered()</code> — habilitar búfer</li>
  <li>Mejorar la suavidad del renderizado</li>
  <li>Crear animaciones suaves</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El doble búfer es necesario para un renderizado suave y eliminar el parpadeo durante las animaciones.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Habilita el búfer: <code>panel.setDoubleBuffered(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setDoubleBuffered(true)</code> para habilitar</li>
  <li><strong>✅ Excelente:</strong> Usar para animaciones, usar para renderizado personalizado, mejorar la suavidad</li>
  <li><strong>⚠️ Evita:</strong> Deshabilitar sin necesidad</li>
</ul>
<p><strong>Importante:</strong> <code>true</code> — habilitar (por defecto para JPanel), <code>false</code> — deshabilitar.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El renderizado será suave sin parpadeo. Las animaciones se verán mejor.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (171, 'es', 'Panel Maestro: Habilitar Doble Búfer',
        'Habilita el doble búfer mediante setDoubleBuffered(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (172, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Tamaño Preferido del Panel</h2>
<p class="intro">El tamaño preferido afecta el diseño. El administrador de diseño lo usa para la colocación, mejorar la posición. Sin tamaño, el tamaño será automático.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setPreferredSize()</code> — establecer tamaño preferido</li>
  <li>Gestionar el tamaño del panel</li>
  <li>Mejorar el diseño</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El tamaño preferido te permite controlar el diseño y mejorar la posición de los componentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece el tamaño: <code>panel.setPreferredSize(new Dimension(200, 100));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setPreferredSize()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar Dimension para el tamaño, usar para diseño, mejorar la posición</li>
  <li><strong>⚠️ Evita:</strong> Establecer un tamaño demasiado pequeño o grande</li>
</ul>
<p><strong>Importante:</strong> Haz el tamaño razonable.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El panel tendrá un tamaño preferido. El administrador de diseño lo tendrá en cuenta al colocar.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (172, 'es', 'Panel Maestro: Establecer Tamaño Preferido',
        'Establece el tamaño preferido 200x100 mediante setPreferredSize(new Dimension(200, 100))')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (173, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Tamaño Mínimo del Panel</h2>
<p class="intro">El tamaño mínimo limita la reducción. Puedes establecer un tamaño mínimo, prevenir un panel demasiado pequeño, mejorar el diseño. Sin límite, el panel puede ser demasiado pequeño.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setMinimumSize()</code> — establecer tamaño mínimo</li>
  <li>Gestionar el tamaño mínimo del panel</li>
  <li>Mejorar el diseño</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El tamaño mínimo te permite prevenir un panel demasiado pequeño y mejorar el diseño.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece el tamaño mínimo: <code>panel.setMinimumSize(new Dimension(100, 50));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMinimumSize()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar Dimension para el tamaño, usar para limitar, mejorar el diseño</li>
  <li><strong>⚠️ Evita:</strong> Establecer un tamaño mínimo demasiado grande</li>
</ul>
<p><strong>Importante:</strong> Haz el tamaño razonable.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El panel no puede ser más pequeño que el tamaño mínimo. Puedes prevenir un panel demasiado pequeño.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (173, 'es', 'Panel Maestro: Establecer Tamaño Mínimo',
        'Establece el tamaño mínimo 100x50 mediante setMinimumSize(new Dimension(100, 50))')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (174, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Tamaño Máximo del Panel</h2>
<p class="intro">El tamaño máximo limita la expansión. Puedes establecer un tamaño máximo, prevenir un panel demasiado grande, mejorar el diseño. Sin límite, el panel puede ser demasiado grande.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setMaximumSize()</code> — establecer tamaño máximo</li>
  <li>Gestionar el tamaño máximo del panel</li>
  <li>Mejorar el diseño</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El tamaño máximo te permite prevenir un panel demasiado grande y mejorar el diseño.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece el tamaño máximo: <code>panel.setMaximumSize(new Dimension(500, 300));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMaximumSize()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar Dimension para el tamaño, usar para limitar, mejorar el diseño</li>
  <li><strong>⚠️ Evita:</strong> Establecer un tamaño máximo demasiado pequeño</li>
</ul>
<p><strong>Importante:</strong> Haz el tamaño razonable.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El panel no puede ser más grande que el tamaño máximo. Puedes prevenir un panel demasiado grande.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (174, 'es', 'Panel Maestro: Establecer Tamaño Máximo',
        'Establece el tamaño máximo 500x300 mediante setMaximumSize(new Dimension(500, 300))')
ON CONFLICT (task_id, language_code) DO NOTHING;
