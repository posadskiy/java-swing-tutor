-- Flyway migration V4: Lesson 18
-- This migration contains lesson, tasks, and documentation for lesson 18

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (153, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear ventana de diálogo</h2>
<p class="intro">Los diálogos muestran información importante. Confirmación de eliminación, entrada de datos, mensajes de error — todo esto son diálogos. Atraen la atención y requieren respuesta del usuario.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>JDialog</code> — ventana de diálogo</li>
  <li>Crear diálogo</li>
  <li>Diálogos modales y no modales</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los diálogos son necesarios para mostrar información importante y solicitar datos del usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea diálogo: <code>JDialog dialog = new JDialog(frame, "Diálogo", true);</code></li>
  <li>Establece tamaño: <code>dialog.setSize(400, 300);</code></li>
  <li>Haz visible: <code>dialog.setVisible(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Especificar ventana padre y modalidad</li>
  <li><strong>✅ Excelente:</strong> Diálogo modal (true) — bloquea ventana padre, no modal (false) — se puede trabajar con ventana padre</li>
</ul>
<p><strong>Importante:</strong> Constructor: <code>new JDialog(padre, título, modal)</code>. Modal (true) — bloquea ventana padre hasta cerrar. No modal (false) — se puede trabajar con ambas ventanas. Para acciones importantes usa diálogo modal. Puedes establecer operación de cierre: <code>setDefaultCloseOperation(DISPOSE_ON_CLOSE);</code>.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá ventana de diálogo. Es una ventana sobre la ventana principal. Si modal — no se puede trabajar con la ventana principal hasta cerrar el diálogo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (153, 'es', 'Diálogo principiante: crea ventana emergente',
        'Crea diálogo modal con título "Diálogo", tamaño 400x300 y hazlo visible')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (154, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Crear barra de desplazamiento</h2>
<p class="intro">JScrollBar permite desplazar contenido. Listas grandes, textos largos, imágenes grandes — todo esto requiere desplazamiento. Sin esto, el contenido no cabrá en pantalla.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>JScrollBar</code> — barra de desplazamiento</li>
  <li>Crear barra de desplazamiento horizontal y vertical</li>
  <li>Añadir barra de desplazamiento al formulario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La barra de desplazamiento es necesaria para desplazar contenido que no cabe en pantalla.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea barra de desplazamiento: <code>JScrollBar scrollBar = new JScrollBar(JScrollBar.VERTICAL, 0, 10, 0, 100);</code></li>
  <li>Añade al formulario: <code>add(scrollBar);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> VERTICAL para vertical, HORIZONTAL para horizontal</li>
  <li><strong>✅ Excelente:</strong> Especificar orientación, valor, extensión, min, max, usar JScrollPane en lugar de JScrollBar para desplazamiento automático</li>
  <li><strong>⚠️ Evita:</strong> Usar JScrollBar directamente — generalmente JScrollPane es mejor</li>
</ul>
<p><strong>Importante:</strong> Generalmente se usa JScrollPane para desplazamiento automático. JScrollBar para control manual de desplazamiento.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá barra de desplazamiento con control deslizante. Puedes arrastrar el control deslizante para desplazar.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (154, 'es', 'Barra de desplazamiento principiante: crea barra de desplazamiento',
        'Crea JScrollBar vertical con valor 0, extensión 10, min 0, max 100, añade al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (155, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Manejar cambio de valor de barra de desplazamiento</h2>
<p class="intro">Manejar cambios hace la barra de desplazamiento interactiva. Puedes actualizar contenido, sincronizar con otros componentes, realizar acciones. Sin esto, la barra de desplazamiento será solo para mostrar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La interfaz <code>AdjustmentListener</code> — manejar cambios</li>
  <li>Manejar desplazamiento de barra de desplazamiento</li>
  <li>Reaccionar a cambio de valor</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Manejar cambios permite sincronizar la interfaz y reaccionar al desplazamiento.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Añade oyente: <code>scrollBar.addAdjustmentListener(e -> {<br>
&nbsp;&nbsp;int value = e.getValue();<br>
&nbsp;&nbsp;label.setText("Valor: " + value);<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addAdjustmentListener()</code> para manejar</li>
  <li><strong>✅ Excelente:</strong> Obtener valor mediante <code>getValue()</code>, actualizar otros componentes al cambiar, verificar <code>getValueIsAdjusting()</code> para valor final</li>
  <li><strong>⚠️ Evita:</strong> Procesar cada valor intermedio — puede ser lento</li>
</ul>
<p><strong>Importante:</strong> <code>getValueIsAdjusting()</code> — verificar si se está arrastrando el control deslizante. <code>getMinimum()</code>, <code>getMaximum()</code> — obtener rango. <code>setValue(int)</code> — establecer valor programáticamente.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al cambiar la barra de desplazamiento, se activará el manejador. Puedes obtener el nuevo valor y actualizar otros componentes.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (155, 'es', 'Barra de desplazamiento maestra: maneja cambio de valor',
        'Añade AdjustmentListener, obtén valor mediante getValue(), muéstralo')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (156, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Paso de desplazamiento de barra de desplazamiento</h2>
<p class="intro">El paso de desplazamiento define la velocidad. Puedes establecer cuánto desplazar al hacer clic en flechas o arrastrar. Sin establecer, el paso será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setUnitIncrement()</code> — paso de unidad</li>
  <li>El método <code>setBlockIncrement()</code> — paso de bloque</li>
  <li>Configurar velocidad de desplazamiento</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Establecer paso de desplazamiento permite controlar la velocidad y precisión del desplazamiento de contenido.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece paso de unidad: <code>scrollBar.setUnitIncrement(10);</code></li>
  <li>Establece paso de bloque: <code>scrollBar.setBlockIncrement(50);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setUnitIncrement()</code> para unidad, <code>setBlockIncrement()</code> para bloque</li>
  <li><strong>✅ Excelente:</strong> Usar valores razonables, adaptar al contenido</li>
  <li><strong>⚠️ Evita:</strong> Paso demasiado grande — puede ser incómodo</li>
</ul>
<p><strong>Importante:</strong> Unidad — clic en flechas. Bloque — clic en pista. Adapta al contenido.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El desplazamiento será con el paso especificado. Al hacer clic en flechas, el desplazamiento será por el valor especificado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (156, 'es', 'Barra de desplazamiento maestra: configura paso de desplazamiento',
        'Establece paso de unidad 10 mediante setUnitIncrement(), paso de bloque 50 mediante setBlockIncrement()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (157, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Cambiar paso de desplazamiento de barra de desplazamiento</h2>
<p class="intro">Cambiar paso adapta el desplazamiento. Puedes cambiar el paso según el contenido, mejorar la navegación. Sin cambiar, el paso será constante.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>Cambio dinámico de paso</li>
  <li>Adaptación al contenido</li>
  <li>Mejorar experiencia del usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El cambio dinámico de paso permite adaptar el desplazamiento a varios tipos de contenido.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Cambia paso de unidad: <code>scrollBar.setUnitIncrement(20);</code></li>
  <li>Cambia paso de bloque: <code>scrollBar.setBlockIncrement(100);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setUnitIncrement()</code> para cambiar</li>
  <li><strong>✅ Excelente:</strong> Adaptar al contenido, cambiar dinámicamente, usar valores razonables</li>
  <li><strong>⚠️ Evita:</strong> Paso demasiado grande — puede ser incómodo</li>
</ul>
<p><strong>Importante:</strong> Mejora la navegación adaptando el paso al contenido.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El paso de desplazamiento cambiará. El desplazamiento será con el nuevo paso.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (157, 'es', 'Barra de desplazamiento maestra: cambia paso de desplazamiento',
        'Cambia paso de unidad a 20 mediante setUnitIncrement(), paso de bloque a 100 mediante setBlockIncrement()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (158, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Orientación de barra de desplazamiento</h2>
<p class="intro">La orientación define la dirección. Puedes crear barra de desplazamiento horizontal o vertical, adaptar al contenido. Sin establecer, la orientación será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setOrientation()</code> — establecer orientación</li>
  <li>Constantes de orientación (HORIZONTAL, VERTICAL)</li>
  <li>Crear barra de desplazamiento horizontal o vertical</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Elegir orientación permite adaptar la barra de desplazamiento para diversas direcciones de desplazamiento de contenido.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece orientación: <code>scrollBar.setOrientation(JScrollBar.HORIZONTAL);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setOrientation()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar HORIZONTAL para horizontal, VERTICAL para vertical, adaptar al contenido</li>
  <li><strong>⚠️ Evita:</strong> Orientación incorrecta — puede ser incómodo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La orientación de la barra de desplazamiento se configurará. Puedes crear barra de desplazamiento horizontal o vertical.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (158, 'es', 'Barra de desplazamiento maestra: configura orientación',
        'Establece orientación HORIZONTAL mediante setOrientation()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (159, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Incremento de bloque de barra de desplazamiento</h2>
<p class="intro">El incremento de bloque acelera el desplazamiento. Al hacer clic en la pista, el desplazamiento será por gran distancia, mejorar la navegación. Sin incremento de bloque, el desplazamiento será lento.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setBlockIncrement()</code> — establecer incremento de bloque</li>
  <li>Desplazar por grandes distancias</li>
  <li>Mejorar experiencia del usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El incremento de bloque permite acelerar el desplazamiento y mejorar la navegación por contenido grande.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece incremento de bloque: <code>scrollBar.setBlockIncrement(100);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setBlockIncrement()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar valores grandes para desplazamiento rápido, combinar con <code>setUnitIncrement()</code>, usar para mejorar UX</li>
  <li><strong>⚠️ Evita:</strong> Valores demasiado grandes</li>
</ul>
<p><strong>Importante:</strong> Combina con incremento de unidad. Haz los valores razonables.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al hacer clic en la pista, el desplazamiento será por gran distancia. Puedes moverte rápidamente por el contenido.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (159, 'es', 'Barra de desplazamiento maestra: establece incremento de bloque',
        'Establece incremento de bloque 100 mediante setBlockIncrement()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (160, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Incremento unitario de barra de desplazamiento</h2>
<p class="intro">El incremento unitario define el paso de desplazamiento. Al hacer clic en flechas, el desplazamiento será por la distancia especificada, mejorar la navegación. Sin incremento, el desplazamiento será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setUnitIncrement()</code> — establecer incremento unitario</li>
  <li>Desplazar por pequeñas distancias</li>
  <li>Mejorar experiencia del usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El incremento unitario permite configurar la precisión del desplazamiento al usar las flechas de la barra de desplazamiento.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece incremento: <code>scrollBar.setUnitIncrement(10);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setUnitIncrement()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar valores razonables, combinar con <code>setBlockIncrement()</code>, mejorar experiencia del usuario</li>
  <li><strong>⚠️ Evita:</strong> Valores demasiado grandes o pequeños</li>
</ul>
<p><strong>Importante:</strong> Usa para desplazamiento preciso. Combina con incremento de bloque. Haz los valores razonables.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al hacer clic en flechas, el desplazamiento será por la distancia especificada. Puedes moverte con precisión por el contenido.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (160, 'es', 'Barra de desplazamiento maestra: establece incremento unitario',
        'Establece incremento unitario 10 mediante setUnitIncrement()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (161, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Establecer valor de barra de desplazamiento</h2>
<p class="intro">El valor define la posición. Puedes establecer la posición inicial, cambiarla, mejorar la navegación. Sin establecer, la posición será cero.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setValue()</code> — establecer valor</li>
  <li>El método <code>getValue()</code> — obtener valor</li>
  <li>Gestionar posición de desplazamiento</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Gestionar el valor permite controlar programáticamente la posición del desplazamiento.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece valor: <code>scrollBar.setValue(100);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setValue()</code> para establecer, <code>getValue()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar para gestionar posición, mejorar navegación</li>
  <li><strong>⚠️ Evita:</strong> Establecer valor fuera del rango</li>
</ul>
<p><strong>Importante:</strong> Verifica límites antes de establecer valor.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La posición de la barra de desplazamiento se establecerá. Puedes gestionar la posición del desplazamiento.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (161, 'es', 'Barra de desplazamiento maestra: establece valor', 'Establece valor 100 mediante setValue()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (162, 'es', '<div class="lesson-header">
<h2>🎮 Lección 10: Incremento de bloque de barra de desplazamiento (extendido)</h2>
<p class="intro">El incremento de bloque define el tamaño del bloque. Puedes establecer cuánto desplazar al hacer clic en la pista, mejorar la navegación. Sin establecer, el tamaño será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setBlockIncrement()</code> — establecer incremento de bloque</li>
  <li>Gestionar tamaño del bloque de desplazamiento</li>
  <li>Mejorar experiencia del usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El incremento de bloque permite configurar el desplazamiento rápido al hacer clic en el área de la barra de desplazamiento.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece incremento de bloque: <code>scrollBar.setBlockIncrement(50);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setBlockIncrement()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar valores razonables, usar para mejorar navegación, mejorar experiencia del usuario</li>
  <li><strong>⚠️ Evita:</strong> Incremento demasiado pequeño o grande</li>
</ul>
<p><strong>Importante:</strong> Haz el incremento cómodo para el usuario.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al hacer clic en la pista, el desplazamiento será por el incremento de bloque. Puedes mejorar la navegación.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (162, 'es', 'Barra de desplazamiento maestra: establece incremento de bloque',
        'Establece incremento de bloque 50 mediante setBlockIncrement()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Spanish)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
