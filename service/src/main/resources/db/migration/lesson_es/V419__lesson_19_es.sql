-- Flyway migration V4: Lesson 19
-- This migration contains lesson, tasks, and documentation for lesson 19

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (163, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear ventana sin marco</h2>
<p class="intro">JWindow permite crear ventana sin marco. Sugerencias emergentes, pantallas de inicio, diálogos personalizados — todo esto requiere ventana sin marco. Sin ella, tendrás que usar JFrame con marco.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>JWindow</code> — ventana sin marco</li>
  <li>Crear ventana</li>
  <li>Diferencia de JFrame</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Las ventanas sin marco son necesarias para ventanas emergentes, pantallas de inicio y diálogos personalizados.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea ventana: <code>JWindow window = new JWindow(frame);</code></li>
  <li>Establece tamaño: <code>window.setSize(400, 300);</code></li>
  <li>Haz visible: <code>window.setVisible(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Especificar ventana padre</li>
  <li><strong>✅ Excelente:</strong> Usar para ventanas emergentes, usar para pantallas de inicio</li>
  <li><strong>⚠️ Evita:</strong> Usar en lugar de JFrame — mejor para ventanas con marco</li>
</ul>
<p><strong>Importante:</strong> <code>JWindow(padre)</code> — crear ventana. <code>JWindow()</code> — crear ventana sin padre. Sin marco y título.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá ventana sin marco. Es una ventana sin título y botones. Puedes usar para ventanas emergentes.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (163, 'es', 'Ventana principiante: crea ventana sin marco',
        'Crea ventana con marco padre, tamaño 400x300 y hazla visible')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (164, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Establecer tamaño de ventana</h2>
<p class="intro">El tamaño define las dimensiones de la ventana. Puedes establecer el tamaño necesario, mejorar la ubicación. Sin establecer, el tamaño será automático.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setSize(int, int)</code> — establecer tamaño</li>
  <li>El método <code>setSize(Dimension)</code> — establecer tamaño mediante Dimension</li>
  <li>Gestionar tamaño de ventana</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Gestionar el tamaño permite controlar las dimensiones de la ventana y mejorar el diseño de la interfaz.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece tamaño: <code>window.setSize(500, 400);</code></li>
  <li>O mediante Dimension: <code>window.setSize(new Dimension(500, 400));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setSize()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar Dimension para tamaño, usar para diseño, mejorar ubicación</li>
  <li><strong>⚠️ Evita:</strong> Establecer tamaño demasiado pequeño o grande</li>
</ul>
<p><strong>Importante:</strong> <code>getSize()</code> — obtener tamaño. Haz el tamaño razonable.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La ventana tendrá el tamaño establecido. Puedes mejorar la ubicación.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (164, 'es', 'Ventana maestra: establece tamaño',
        'Crea ventana, establece tamaño 500x400 mediante setSize(500, 400)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (165, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Establecer ubicación de ventana</h2>
<p class="intro">La ubicación define la posición de la ventana. Puedes establecer la posición necesaria, centrar la ventana, ubicar relativa a otra ventana. Sin establecer, la ventana aparecerá en lugar aleatorio.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setLocation(int, int)</code> — establecer ubicación</li>
  <li>El método <code>setLocation(Point)</code> — establecer ubicación mediante Point</li>
  <li>Gestionar posición de ventana</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Gestionar la ubicación permite controlar la posición de la ventana en pantalla y mejorar la experiencia del usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece ubicación: <code>window.setLocation(100, 100);</code></li>
  <li>O mediante Point: <code>window.setLocation(new Point(100, 100));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setLocation()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar Point para posición, centrar ventana relativa a pantalla, ubicar relativa a otra ventana</li>
  <li><strong>⚠️ Evita:</strong> Ubicar fuera de pantalla</li>
</ul>
<p><strong>Importante:</strong> <code>getLocation()</code> — obtener ubicación. <code>setLocationRelativeTo(null)</code> — centrar relativa a pantalla. <code>setLocationRelativeTo(componente)</code> — centrar relativa a componente.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La ventana aparecerá en la posición especificada. Puedes mejorar la ubicación.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (165, 'es', 'Ventana maestra: establece ubicación',
        'Crea ventana, establece ubicación 100, 100 mediante setLocation(100, 100)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (166, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Ventana siempre encima</h2>
<p class="intro">Siempre encima hace la ventana visible. Sugerencias emergentes, notificaciones, mensajes importantes — todo esto requiere ventana encima de otras. Sin esto, la ventana puede estar oculta.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setAlwaysOnTop(boolean)</code> — siempre encima</li>
  <li>Ventana encima de todas las demás ventanas</li>
  <li>Usar para ventanas importantes</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El modo "siempre encima" es necesario para ventanas importantes, notificaciones y sugerencias emergentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Habilita siempre encima: <code>window.setAlwaysOnTop(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setAlwaysOnTop(true)</code> para habilitar</li>
  <li><strong>✅ Excelente:</strong> Usar para ventanas importantes, usar para ventanas emergentes, usar para notificaciones</li>
  <li><strong>⚠️ Evita:</strong> Usar para ventanas regulares — puede interferir</li>
</ul>
<p><strong>Importante:</strong> <code>true</code> — siempre encima, <code>false</code> — prioridad normal.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La ventana estará siempre encima de otras ventanas. Incluso si abres otras ventanas, esta ventana permanecerá visible.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (166, 'es', 'Ventana maestra: haz siempre encima',
        'Crea ventana, habilita siempre encima mediante setAlwaysOnTop(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (167, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Color de fondo de ventana</h2>
<p class="intro">El color de fondo mejora la apariencia visual. Puedes establecer el color necesario, hacer la ventana notable. Sin establecer, el color será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setBackground(Color)</code> — establecer color de fondo</li>
  <li>Personalizar apariencia</li>
  <li>Mejorar apariencia visual</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Establecer color de fondo permite personalizar la apariencia de la ventana y mejorar la percepción visual.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece color de fondo: <code>window.setBackground(Color.WHITE);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setBackground()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar constantes Color, usar <code>new Color()</code> para colores personalizados, usar para mejorar apariencia</li>
  <li><strong>⚠️ Evita:</strong> Usar colores demasiado brillantes</li>
</ul>
<p><strong>Importante:</strong> <code>Color.WHITE</code>, <code>Color.BLACK</code>, <code>Color.GRAY</code> — colores estándar. <code>new Color(r, g, b)</code> — color personalizado. Haz el color razonable.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La ventana tendrá el color de fondo establecido. Puedes mejorar la apariencia visual.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (167, 'es', 'Ventana maestra: establece color de fondo',
        'Crea ventana, establece color de fondo Color.WHITE mediante setBackground()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (168, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Opacidad de ventana</h2>
<p class="intro">La opacidad crea efectos. Puedes hacer la ventana semi-transparente, crear efecto de niebla, mejorar la apariencia visual. Sin establecer, la ventana será opaca.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setOpacity(float)</code> — establecer opacidad</li>
  <li>Ventana transparente</li>
  <li>Crear efectos</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La opacidad permite crear efectos visuales y mejorar el diseño de la interfaz.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece opacidad: <code>window.setOpacity(0.8f);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setOpacity()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar valores de 0.0 (transparente) a 1.0 (opaco), usar para efectos, usar para mejorar apariencia</li>
  <li><strong>⚠️ Evita:</strong> Usar opacidad demasiado baja</li>
</ul>
<p><strong>Importante:</strong> 0.0 — completamente transparente, 1.0 — completamente opaco. Haz la opacidad razonable.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La ventana tendrá la opacidad establecida. Puedes ver a través de la ventana.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (168, 'es', 'Ventana maestra: establece opacidad',
        'Crea ventana, establece opacidad 0.8 mediante setOpacity(0.8f)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (169, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Cerrar ventana</h2>
<p class="intro">Cerrar ventana libera recursos. Puedes cerrar la ventana programáticamente, liberar memoria, finalizar trabajo. Sin cerrar, la ventana quedará en memoria.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>dispose()</code> — cerrar ventana</li>
  <li>Liberar recursos</li>
  <li>Gestionar ciclo de vida de ventana</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El cierre correcto de la ventana es necesario para liberar recursos y prevenir fugas de memoria.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Cierra ventana: <code>window.dispose();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>dispose()</code> para cerrar</li>
  <li><strong>✅ Excelente:</strong> Usar <code>setVisible(false)</code> para ocultar, liberar recursos, gestionar ciclo de vida</li>
  <li><strong>⚠️ Evita:</strong> No cerrar ventana — fuga de memoria</li>
</ul>
<p><strong>Importante:</strong> <code>dispose()</code> — cerrar ventana y liberar recursos. <code>setVisible(false)</code> — ocultar ventana sin liberar recursos. Usa <code>dispose()</code> para cierre final.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La ventana se cerrará y liberará recursos. Puedes gestionar el ciclo de vida de la ventana.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (169, 'es', 'Ventana maestra: cierra ventana', 'Crea ventana, ciérrala mediante dispose()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Spanish)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
