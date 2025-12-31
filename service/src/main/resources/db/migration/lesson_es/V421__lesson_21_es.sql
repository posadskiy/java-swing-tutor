-- Flyway migration V4: Lesson 21
-- This migration contains lesson, tasks, and documentation for lesson 21

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (175, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear un Panel Dividido</h2>
<p class="intro">JSplitPane permite un uso eficiente del espacio. Lista de archivos a la izquierda, contenido a la derecha. Árbol a la izquierda, detalles a la derecha. La división hace que la interfaz sea funcional.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>JSplitPane</code> — panel dividido</li>
  <li>Crear división horizontal o vertical</li>
  <li>Agregar componentes a cada parte</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Un panel dividido es necesario para un uso eficiente del espacio y crear interfaces funcionales.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea componentes para las partes: <code>JPanel leftPanel = new JPanel();</code> y <code>JPanel rightPanel = new JPanel();</code></li>
  <li>Crea panel dividido: <code>JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, leftPanel, rightPanel);</code></li>
  <li>Agrega al formulario: <code>add(splitPane);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>HORIZONTAL_SPLIT</code> — división vertical (izquierda/derecha)</li>
  <li><strong>✅ Excelente:</strong> <code>VERTICAL_SPLIT</code> — división horizontal (arriba/abajo), configurar posición del divisor: <code>splitPane.setDividerLocation(200);</code></li>
</ul>
<p><strong>Importante:</strong> Posición del divisor: <code>setDividerLocation(posición_en_píxeles)</code>. Proporción: <code>setResizeWeight(0.5)</code> — distribución igual. Un toque: <code>setOneTouchExpandable(true)</code> — botones para expansión rápida. Puedes anidar JSplitPane uno dentro del otro para interfaces complejas.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un panel dividido. La pantalla se dividirá en dos partes con un borde arrastrable. Puedes mover el divisor, cambiando los tamaños de las partes.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (175, 'es', 'Panel Dividido Principiante: Dividir Pantalla por la Mitad',
        'Crea un panel dividido horizontal con dos paneles y agrégalo al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (176, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Orientación del Panel Dividido</h2>
<p class="intro">La orientación afecta la apariencia de la división. Horizontal — izquierda/derecha, vertical — arriba/abajo. Puedes elegir la orientación apropiada para la interfaz.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setOrientation(int)</code> — establecer orientación</li>
  <li>Constantes <code>HORIZONTAL_SPLIT</code> y <code>VERTICAL_SPLIT</code></li>
  <li>División horizontal y vertical</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Elegir orientación te permite adaptar la división a diferentes tipos de interfaces.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece la orientación: <code>splitPane.setOrientation(JSplitPane.VERTICAL_SPLIT);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> HORIZONTAL_SPLIT para horizontal, VERTICAL_SPLIT para vertical</li>
  <li><strong>✅ Excelente:</strong> Elegir orientación según el lugar, usar para ahorrar espacio</li>
  <li><strong>⚠️ Evita:</strong> Usar orientación incorrecta</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El panel dividido tendrá la orientación establecida. Horizontal — izquierda/derecha, vertical — arriba/abajo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (176, 'es', 'Panel Dividido Maestro: Establecer Orientación',
        'Crea un panel dividido, establece orientación vertical mediante setOrientation(JSplitPane.VERTICAL_SPLIT)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (177, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Posición del Divisor</h2>
<p class="intro">La posición del divisor determina los tamaños de las partes. Puedes establecer la posición inicial, centrar el divisor, configurar proporciones. Sin configuración, la posición será aleatoria.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setDividerLocation(int)</code> — establecer posición</li>
  <li>Método <code>setDividerLocation(double)</code> — establecer posición en porcentaje</li>
  <li>Gestionar posición del divisor</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Gestionar la posición del divisor te permite controlar las proporciones iniciales de las partes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece posición en píxeles: <code>splitPane.setDividerLocation(200);</code></li>
  <li>O en porcentaje: <code>splitPane.setDividerLocation(0.5);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setDividerLocation()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar píxeles para posición precisa, usar porcentaje para posición proporcional, centrar divisor</li>
  <li><strong>⚠️ Evita:</strong> Establecer posición fuera de los límites</li>
</ul>
<p><strong>Importante:</strong> <code>getDividerLocation()</code> — obtener posición actual.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El divisor se establecerá en la posición especificada. Las partes tendrán los tamaños establecidos. Puedes configurar proporciones.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (177, 'es', 'Panel Dividido Maestro: Establecer Posición del Divisor',
        'Crea un panel dividido, establece posición del divisor 200 mediante setDividerLocation(200)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (178, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Peso de Redimensionamiento</h2>
<p class="intro">El peso determina cómo cambian las partes al redimensionar. Puedes establecer qué parte se expandirá más. Sin configuración, las partes cambiarán uniformemente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setResizeWeight(double)</code> — establecer peso</li>
  <li>Distribución de espacio al redimensionar</li>
  <li>Gestionar proporciones</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El peso de redimensionamiento te permite controlar cómo las partes del panel dividido responden al redimensionamiento de la ventana.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece el peso: <code>splitPane.setResizeWeight(0.3);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setResizeWeight()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar valores de 0.0 a 1.0. 0.0 — parte izquierda/superior no cambia, 1.0 — parte derecha/inferior no cambia, 0.5 — distribución igual</li>
</ul>
<p><strong>Importante:</strong> Usa para gestionar proporciones.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al redimensionar, las partes cambiarán según el peso. Puedes configurar qué parte se expandirá.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (178, 'es', 'Panel Dividido Maestro: Establecer Peso de Redimensionamiento',
        'Crea un panel dividido, establece peso 0.3 mediante setResizeWeight(0.3)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (179, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Un Toque en Panel Dividido</h2>
<p class="intro">Un toque simplifica el trabajo. Puedes expandir o colapsar rápidamente una parte con un clic. Sin esto, tendrás que arrastrar el divisor manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setOneTouchExpandable(boolean)</code> — un toque</li>
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
  <li><strong>✅ Excelente:</strong> Usar para mejorar usabilidad, usar para acceso rápido, mejorar experiencia de usuario</li>
  <li><strong>⚠️ Evita:</strong> Deshabilitar sin necesidad</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerán botones en el divisor. Puedes expandir o colapsar rápidamente una parte con un clic.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (179, 'es', 'Panel Dividido Maestro: Habilitar Un Toque',
        'Crea un panel dividido, habilita un toque mediante setOneTouchExpandable(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (180, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Diseño Continuo</h2>
<p class="intro">El diseño continuo mejora la experiencia visual. Al arrastrar el divisor, las partes se actualizan suavemente. Sin esto, la actualización ocurre solo después de soltar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setContinuousLayout(boolean)</code> — diseño continuo</li>
  <li>Actualización suave al arrastrar</li>
  <li>Mejorar experiencia visual</li>
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
  <li><strong>✅ Excelente:</strong> Usar para actualización suave, usar para mejorar experiencia visual, usar para componentes pesados</li>
  <li><strong>⚠️ Evita:</strong> Deshabilitar para componentes ligeros — puede ser más lento</li>
</ul>
<p><strong>Importante:</strong> <code>false</code> — actualizar solo después de soltar.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al arrastrar el divisor, las partes se actualizarán suavemente. Puedes ver cambios en tiempo real.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (180, 'es', 'Panel Dividido Maestro: Habilitar Diseño Continuo',
        'Crea un panel dividido, habilita diseño continuo mediante setContinuousLayout(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (181, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Borde del Panel Dividido</h2>
<p class="intro">El borde mejora la apariencia visual. Puedes establecer el borde deseado, separar partes, mejorar el diseño. Sin configuración, el borde será estándar.</p>
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
<p>El borde te permite mejorar la percepción visual y separar partes del panel dividido.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece el borde: <code>splitPane.setBorder(BorderFactory.createEtchedBorder());</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setBorder()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar BorderFactory para crear bordes, usar para mejorar apariencia, separar partes</li>
  <li><strong>⚠️ Evita:</strong> Usar bordes demasiado gruesos</li>
</ul>
<p><strong>Importante:</strong> <code>BorderFactory.createEtchedBorder()</code> — borde grabado. <code>BorderFactory.createLineBorder(Color)</code> — línea. <code>BorderFactory.createTitledBorder(String)</code> — borde con título.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El panel dividido tendrá el borde establecido. Puedes mejorar la apariencia visual.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (181, 'es', 'Panel Dividido Maestro: Establecer Borde',
        'Crea un panel dividido, establece borde mediante setBorder(BorderFactory.createEtchedBorder())')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (182, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Tamaños Mínimos de las Partes</h2>
<p class="intro">Los tamaños mínimos limitan la reducción. Puedes establecer tamaño mínimo para cada parte, prevenir partes demasiado pequeñas. Sin límite, las partes pueden ser demasiado pequeñas.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setLeftComponent(Component)</code> y <code>setRightComponent(Component)</code></li>
  <li>Método <code>setMinimumSize(Dimension)</code> para componentes</li>
  <li>Gestionar tamaños mínimos de las partes</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los tamaños mínimos te permiten prevenir partes demasiado pequeñas y mejorar el diseño.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece tamaño mínimo para componente: <code>leftPanel.setMinimumSize(new Dimension(100, 0));</code> y <code>rightPanel.setMinimumSize(new Dimension(100, 0));</code></li>
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
<p>Las partes no pueden ser más pequeñas que el tamaño mínimo. Puedes prevenir partes demasiado pequeñas.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (182, 'es', 'Panel Dividido Maestro: Establecer Tamaños Mínimos',
        'Crea un panel dividido, establece tamaño mínimo 100x0 para panel izquierdo mediante setMinimumSize()')
ON CONFLICT (task_id, language_code) DO NOTHING;
