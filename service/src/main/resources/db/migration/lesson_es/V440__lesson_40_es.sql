-- Flyway migration V4: Lesson 40
-- This migration contains lesson, tasks, and documentation for lesson 40

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (335, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear Cuadrícula Flexible con GridBagLayout</h2>
<p class="intro">GridBagLayout — administrador de diseño más poderoso. Formularios complejos, interfaces adaptativas, componentes de diferentes tamaños — todo esto requiere GridBagLayout. Sin esto, formularios complejos se verán desordenados.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>GridBagLayout</code> — cuadrícula flexible</li>
  <li>Clase <code>GridBagConstraints</code> — restricciones para componentes</li>
  <li>Crear diseño complejo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>GridBagLayout es necesario para crear diseños complejos y flexibles.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece administrador: <code>setLayout(new GridBagLayout());</code></li>
  <li>Crea restricciones: <code>GridBagConstraints gbc = new GridBagConstraints();</code></li>
  <li>Configura restricciones y agrega componente: <code>gbc.gridx = 0;<br>
gbc.gridy = 0;<br>
gbc.fill = GridBagConstraints.HORIZONTAL;<br>
add(button, gbc);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Constantes para fill: HORIZONTAL, VERTICAL, BOTH, NONE</li>
  <li><strong>✅ Excelente:</strong> Configurar weightx y weighty para estiramiento, usar insets para espacios</li>
  <li><strong>⚠️ Evita:</strong> Diseño demasiado complejo — difícil de mantener</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componentes se colocarán en cuadrícula flexible. Cada componente puede ocupar varias celdas y estirarse.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (335, 'es', 'GridBagLayout Principiante: Crear Cuadrícula Flexible',
        'Establece GridBagLayout, crea restricciones, agrega botón en posición (0,0) con fill=HORIZONTAL')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (336, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Configurar Estiramiento en GridBagLayout</h2>
<p class="intro">Configurar estiramiento hace interfaz adaptativa. Cuando cambie tamaño de ventana, componentes se estirarán proporcionalmente. Sin esto, interfaz se verá desordenada en diferentes tamaños.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Propiedades <code>weightx</code> y <code>weighty</code> — prioridad de estiramiento</li>
  <li>Configurar estiramiento de componentes</li>
  <li>Crear diseño adaptativo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Configurar estiramiento es necesario para crear interfaz adaptativa.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Configura weightx: <code>gbc.weightx = 1.0;</code></li>
  <li>Configura weighty: <code>gbc.weighty = 1.0;</code></li>
  <li>Agrega componente: <code>add(button, gbc);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> weightx = 1.0 para estiramiento horizontal</li>
  <li><strong>✅ Excelente:</strong> Usar weighty = 1.0 para estiramiento vertical, usar 0.0 para componentes que no deben estirarse</li>
  <li><strong>⚠️ Evita:</strong> Todos los componentes con weight = 1.0 — serán mismo tamaño</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componentes se estirarán cuando cambie tamaño de ventana. Componentes con weight = 1.0 tomarán todo espacio disponible.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (336, 'es', 'GridBagLayout Maestro: Configurar Estiramiento',
        'Configura weightx = 1.0 y weighty = 1.0 para restricciones, agrega componente')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (338, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Configurar Alineación en FlowLayout</h2>
<p class="intro">La alineación hace interfaz ordenada. Componentes estarán alineados igual, interfaz se verá profesional. Sin alineación, componentes estarán colocados caóticamente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Constantes de alineación (LEFT, CENTER, RIGHT)</li>
  <li>Método <code>setAlignment()</code> — establecer alineación</li>
  <li>Configurar alineación de componentes</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La alineación es necesaria para crear interfaz ordenada.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea administrador con alineación: <code>FlowLayout layout = new FlowLayout(FlowLayout.CENTER);</code></li>
  <li>Establece administrador: <code>setLayout(layout);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> CENTER para centrar</li>
  <li><strong>✅ Excelente:</strong> Usar LEFT para alineación izquierda, usar RIGHT para alineación derecha, usar LEADING/TRAILING para dirección de texto</li>
  <li><strong>⚠️ Evita:</strong> Diferente alineación para diferentes componentes</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componentes estarán alineados. Todos los componentes estarán alineados igual. Interfaz se verá ordenada.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (338, 'es', 'FlowLayout Maestro: Configurar Alineación',
        'Crea FlowLayout con alineación CENTER, establece administrador')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (337, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Estirar Componente a Través de Múltiples Celdas</h2>
<p class="intro">Estirar componentes a través de múltiples celdas hace diseño flexible. Encabezados, botones grandes, áreas de texto — todo esto puede ocupar múltiples celdas. Sin esto, componentes estarán limitados a una celda.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Propiedades <code>gridwidth</code> y <code>gridheight</code> — tamaño de componente en celdas</li>
  <li>Crear componentes ocupando múltiples celdas</li>
  <li>Configurar tamaños de componentes</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Estirar componentes a través de múltiples celdas es necesario para crear diseño flexible.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Configura gridwidth: <code>gbc.gridwidth = 2;</code></li>
  <li>Configura gridheight: <code>gbc.gridheight = 2;</code></li>
  <li>Agrega componente: <code>add(button, gbc);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> gridwidth para estiramiento horizontal</li>
  <li><strong>✅ Excelente:</strong> Usar gridheight para estiramiento vertical, usar GridBagConstraints.REMAINDER para espacio restante, combinar gridwidth y gridheight para componentes grandes</li>
  <li><strong>⚠️ Evita:</strong> Componentes demasiado grandes — puede ser desordenado</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componente ocupará múltiples celdas. Componente se estirará a través de número especificado de celdas.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (337, 'es', 'GridBagLayout Maestro: Estirar Componente a Través de Múltiples Celdas',
        'Establece gridwidth = 2 y gridheight = 2 para restricciones, agrega componente')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (339, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Configurar Espacios en FlowLayout</h2>
<p class="intro">Los espacios hacen diseño ordenado. Componentes no estarán presionados entre sí, habrá separación visual. Sin espacios, componentes estarán colocados apretadamente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setHgap()</code> — espacio horizontal</li>
  <li>Método <code>setVgap()</code> — espacio vertical</li>
  <li>Configurar espacios en FlowLayout</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los espacios son necesarios para crear diseño ordenado con separación visual.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea administrador: <code>FlowLayout layout = new FlowLayout();</code></li>
  <li>Establece espacios: <code>layout.setHgap(10);<br>
layout.setVgap(10);</code></li>
  <li>Establece administrador: <code>setLayout(layout);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setHgap()</code> para espacios horizontales, <code>setVgap()</code> para espacios verticales</li>
  <li><strong>✅ Excelente:</strong> Usar mismos espacios, especificar espacios en constructor</li>
  <li><strong>⚠️ Evita:</strong> Espacios demasiado grandes — puede ser excesivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Espacios aparecerán entre componentes. Componentes no estarán presionados entre sí. Diseño se verá ordenado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (339, 'es', 'FlowLayout Maestro: Configurar Espacios',
        'Crea FlowLayout, establece espacios horizontal y vertical a 10')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (342, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Establecer Ancla en GridBagLayout</h2>
<p class="intro">La ancla determina posición en celda. Puedes anclar componente a borde de celda, centrar, mejorar diseño. Sin ancla, posición será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Campo <code>anchor</code> en <code>GridBagConstraints</code> — ancla</li>
  <li>Posicionar componente en celda</li>
  <li>Mejorar diseño</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La ancla es necesaria para posicionamiento preciso de componente en celda.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece ancla: <code>constraints.anchor = GridBagConstraints.CENTER;</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> anchor para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar CENTER para centrar, usar NORTH, SOUTH, EAST, WEST, mejorar diseño</li>
  <li><strong>⚠️ Evita:</strong> Usar ancla incorrecta</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componente estará posicionado por ancla. Puedes centrar, anclar a bordes.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (342, 'es', 'GridBagLayout Maestro: Establecer Ancla',
        'Establece ancla CENTER vía constraints.anchor = GridBagConstraints.CENTER')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (340, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Crear Diálogo de Entrada</h2>
<p class="intro">El diálogo de entrada permite obtener datos. Puedes solicitar texto, número, mejorar interactividad. Sin diálogo, no puedes obtener entrada.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>showInputDialog()</code> — diálogo de entrada</li>
  <li>Obtener entrada del usuario</li>
  <li>Crear diálogos interactivos</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El diálogo de entrada es necesario para obtener datos del usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea diálogo: <code>String input = JOptionPane.showInputDialog("Ingresa nombre:");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>showInputDialog()</code> para crear</li>
  <li><strong>✅ Excelente:</strong> Usar mensajes claros, manejar null (cancelación), usar para obtener datos</li>
  <li><strong>⚠️ Evita:</strong> Ignorar cancelación</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Diálogo de entrada aparecerá. Puedes ingresar texto, obtener resultado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (340, 'es', 'Diálogo Maestro: Crear Diálogo de Entrada',
        'Crea diálogo de entrada vía showInputDialog("Ingresa nombre:"), guarda resultado')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (344, 'es', '<div class="lesson-header">
<h2>🎮 Lección 10: Establecer Llenado en GridBagLayout</h2>
<p class="intro">El llenado determina estiramiento. Puedes estirar componente horizontalmente, verticalmente, ambos ejes, mejorar diseño. Sin llenado, componente será tamaño estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Campo <code>fill</code> en <code>GridBagConstraints</code> — llenado</li>
  <li>Estirar componente en celda</li>
  <li>Mejorar diseño</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El llenado es necesario para gestionar estiramiento de componente en celda.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece llenado: <code>constraints.fill = GridBagConstraints.BOTH;</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> fill para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar BOTH para ambos ejes, usar HORIZONTAL para horizontal, usar VERTICAL para vertical</li>
  <li><strong>⚠️ Evita:</strong> Usar llenado incorrecto</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componente se estirará por llenado. Puedes mejorar diseño.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (344, 'es', 'GridBagLayout Maestro: Establecer Llenado',
        'Establece llenado BOTH vía constraints.fill = GridBagConstraints.BOTH')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (341, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Crear Diálogo de Confirmación</h2>
<p class="intro">El diálogo de confirmación permite obtener respuesta. Puedes solicitar confirmación de acción, mejorar seguridad. Sin diálogo, no puedes confirmar acción.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>showConfirmDialog()</code> — diálogo de confirmación</li>
  <li>Obtener respuesta del usuario</li>
  <li>Crear diálogos interactivos</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El diálogo de confirmación es necesario para obtener confirmación de acción del usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea diálogo: <code>int result = JOptionPane.showConfirmDialog(null, "¿Confirmar acción?", "Confirmación", JOptionPane.YES_NO_OPTION);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>showConfirmDialog()</code> para crear</li>
  <li><strong>✅ Excelente:</strong> Usar YES_NO_OPTION para elección, manejar resultado, usar para confirmaciones</li>
  <li><strong>⚠️ Evita:</strong> Ignorar resultado</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Diálogo de confirmación aparecerá. Puedes elegir sí/no, obtener resultado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (341, 'es', 'Diálogo Maestro: Crear Diálogo de Confirmación',
        'Crea diálogo de confirmación vía showConfirmDialog() con YES_NO_OPTION, guarda resultado')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (343, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Crear Diálogo de Mensaje</h2>
<p class="intro">El diálogo de mensaje permite notificar usuario. Puedes mostrar información, advertencia, error, mejorar comunicación. Sin diálogo, no puedes notificar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>showMessageDialog()</code> — diálogo de mensaje</li>
  <li>Mostrar mensajes informativos</li>
  <li>Mejorar experiencia de usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El diálogo de mensaje es necesario para notificar usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea diálogo: <code>JOptionPane.showMessageDialog(null, "Operación completada", "Información", JOptionPane.INFORMATION_MESSAGE);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>showMessageDialog()</code> para crear</li>
  <li><strong>✅ Excelente:</strong> Usar INFORMATION_MESSAGE para información, usar WARNING_MESSAGE para advertencia, usar ERROR_MESSAGE para error</li>
  <li><strong>⚠️ Evita:</strong> Usar tipo inapropiado</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Diálogo de mensaje aparecerá. Puedes notificar usuario.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (343, 'es', 'Diálogo Maestro: Crear Diálogo de Mensaje',
        'Crea diálogo de mensaje vía showMessageDialog() con INFORMATION_MESSAGE')
ON CONFLICT (task_id, language_code) DO NOTHING;
