-- Flyway migration V4: Lesson 42
-- This migration contains lesson, tasks, and documentation for lesson 42

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (356, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear Paneles Conmutables con CardLayout</h2>
<p class="intro">CardLayout es perfecto para interfaces multi-página. Asistentes de configuración, pestañas, formularios paso a paso — todo esto requiere CardLayout. Sin esto, tendrás que ocultar/mostrar componentes manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>CardLayout</code> — conmutación de paneles</li>
  <li>Métodos <code>show()</code>, <code>next()</code>, <code>previous()</code> — conmutación</li>
  <li>Crear interfaz multi-página</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>CardLayout es necesario para crear interfaces multi-página.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea administrador: <code>CardLayout cardLayout = new CardLayout();<br>
setLayout(cardLayout);</code></li>
  <li>Agrega paneles con nombres: <code>add(panel1, "card1");<br>
add(panel2, "card2");</code></li>
  <li>Conmuta panel: <code>cardLayout.show(this, "card1");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Nombres claros para tarjetas</li>
  <li><strong>✅ Excelente:</strong> Usar <code>show()</code> para conmutar por nombre, usar <code>next()</code> y <code>previous()</code> para navegación</li>
  <li><strong>⚠️ Evita:</strong> Demasiadas tarjetas — difícil de gestionar</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Solo un panel será visible. Al conmutar, un panel se oculta, otro se muestra. Es como pasar páginas.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (356, 'es', 'CardLayout Principiante: Crear Paneles Conmutables',
        'Crea CardLayout, agrega dos paneles con nombres "card1" y "card2", muestra "card1"')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (357, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Navegación Entre Tarjetas en CardLayout</h2>
<p class="intro">La navegación entre tarjetas hace interfaz interactiva. Puedes crear asistentes de configuración, formularios paso a paso, pestañas. Sin navegación, usuario no podrá conmutar entre paneles.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>next()</code> — siguiente tarjeta</li>
  <li>Método <code>previous()</code> — tarjeta anterior</li>
  <li>Métodos <code>first()</code> y <code>last()</code> — primera y última tarjeta</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La navegación entre tarjetas es necesaria para crear interfaz interactiva.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Conmuta a siguiente tarjeta: <code>cardLayout.next(this);</code></li>
  <li>O conmuta a anterior: <code>cardLayout.previous(this);</code></li>
  <li>O conmuta a primera: <code>cardLayout.first(this);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>next()</code> para navegación adelante</li>
  <li><strong>✅ Excelente:</strong> Usar <code>previous()</code> para navegación atrás, usar <code>first()</code> y <code>last()</code> para navegación a bordes, usar <code>show()</code> para navegación a tarjeta específica</li>
  <li><strong>⚠️ Evita:</strong> Conmutar sin verificar — puede causar error</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Tarjetas se conmutarán. Al llamar next(), siguiente tarjeta se mostrará, previous() — anterior. Puedes crear navegación entre paneles.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (357, 'es', 'CardLayout Maestro: Navegación Entre Tarjetas',
        'Conmuta a siguiente tarjeta vía next(), luego a anterior vía previous()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (359, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Configurar Peso en GridBagLayout</h2>
<p class="intro">El peso determina cómo se estiran componentes. Puedes especificar qué componentes obtendrán espacio extra cuando cambie tamaño. Sin peso, componentes no se estirarán.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Campos <code>weightx</code> y <code>weighty</code> — pesos de componentes</li>
  <li>Distribuir espacio extra</li>
  <li>Crear diseños flexibles</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El peso es necesario para gestionar estiramiento de componentes cuando cambia tamaño.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea restricciones: <code>GridBagConstraints gbc = new GridBagConstraints();</code></li>
  <li>Establece pesos: <code>gbc.weightx = 1.0;<br>
gbc.weighty = 1.0;</code></li>
  <li>Agrega componente: <code>add(component, gbc);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> weightx para peso horizontal</li>
  <li><strong>✅ Excelente:</strong> Usar weighty para peso vertical, usar 1.0 para distribución uniforme, usar 0.0 para tamaño fijo</li>
  <li><strong>⚠️ Evita:</strong> Pesos demasiado grandes — puede ser impredecible</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componentes se estirarán según peso. Cuando cambie tamaño, componentes con peso obtendrán espacio extra.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (359, 'es', 'GridBagLayout Maestro: Configurar Peso',
        'Crea GridBagConstraints, establece weightx y weighty a 1.0, agrega componente con restricciones')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (358, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Determinar Tarjeta Actual en CardLayout</h2>
<p class="intro">Determinar tarjeta actual permite gestionar navegación. Puedes mostrar botones correctos, actualizar estado, registrar transiciones. Sin esto, no puedes saber en qué tarjeta está usuario.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Determinar tarjeta visible actualmente</li>
  <li>Trabajar con nombres de tarjetas</li>
  <li>Verificar estado de CardLayout</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Determinar tarjeta actual es necesario para gestionar navegación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Almacena nombres de tarjetas: <code>String currentCard = "card1";</code></li>
  <li>Actualiza al conmutar: <code>cardLayout.show(this, "card2");<br>
currentCard = "card2";</code></li>
  <li>O usa componentes: <code>Component[] components = getComponents();<br>
for (Component comp : components) {<br>
&nbsp;&nbsp;if (comp.isVisible()) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Tarjeta visible: " + comp.getName());<br>
&nbsp;&nbsp;}<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Almacenar nombre de tarjeta actual en variable</li>
  <li><strong>✅ Excelente:</strong> Usar <code>isVisible()</code> para verificar visibilidad, usar <code>getName()</code> para obtener nombre de componente, crear método <code>getCurrentCard()</code> para conveniencia</li>
  <li><strong>⚠️ Evita:</strong> Verificar todos los componentes cada vez — puede ser lento</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Podrás saber tarjeta actual. Puedes verificar qué tarjeta es visible y realizar acciones basadas en eso.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (358, 'es', 'CardLayout Maestro: Conocer Tarjeta Actual',
        'Obtén todos los componentes, verifica isVisible() para cada uno, muestra nombre de componente visible')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (360, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Configurar Llenado en GridBagLayout</h2>
<p class="intro">El llenado determina cómo se estira componente. Puedes especificar en qué dirección componente llenará celda. Sin llenado, componente será tamaño mínimo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Campo <code>fill</code> — llenado de componente</li>
  <li>Constantes de llenado (NONE, HORIZONTAL, VERTICAL, BOTH)</li>
  <li>Crear componentes estirables</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El llenado es necesario para gestionar estiramiento de componente en celda.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea restricciones: <code>GridBagConstraints gbc = new GridBagConstraints();</code></li>
  <li>Establece llenado: <code>gbc.fill = GridBagConstraints.BOTH;</code></li>
  <li>Agrega componente: <code>add(component, gbc);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> BOTH para llenar en ambas direcciones</li>
  <li><strong>✅ Excelente:</strong> Usar HORIZONTAL para horizontal, usar VERTICAL para vertical, usar NONE para tamaño mínimo</li>
  <li><strong>⚠️ Evita:</strong> BOTH para todos — puede ser desordenado</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componente llenará celda. Componente se estirará según llenado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (360, 'es', 'GridBagLayout Maestro: Configurar Llenado',
        'Crea GridBagConstraints, establece fill = BOTH, agrega componente')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (361, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Configurar Ancla en GridBagLayout</h2>
<p class="intro">La ancla determina posición de componente. Puedes colocar componente en centro, esquinas, bordes de celda. Sin ancla, componente estará en posición estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Campo <code>anchor</code> — ancla de componente</li>
  <li>Constantes de ancla (CENTER, NORTH, SOUTH, EAST, WEST)</li>
  <li>Posicionar componente en celda</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La ancla es necesaria para posicionamiento preciso de componente en celda.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea restricciones: <code>GridBagConstraints gbc = new GridBagConstraints();</code></li>
  <li>Establece ancla: <code>gbc.anchor = GridBagConstraints.NORTH;</code></li>
  <li>Agrega componente: <code>add(component, gbc);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> CENTER para centro</li>
  <li><strong>✅ Excelente:</strong> Usar NORTH, SOUTH para vertical, usar EAST, WEST para horizontal, usar combinaciones (NORTHWEST, SOUTHEAST)</li>
  <li><strong>⚠️ Evita:</strong> Combinaciones demasiado complejas</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componente estará en posición especificada. Componente se colocará según ancla.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (361, 'es', 'GridBagLayout Maestro: Configurar Ancla',
        'Crea GridBagConstraints, establece anchor = NORTH, agrega componente')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (362, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Configurar Márgenes en GridBagLayout</h2>
<p class="intro">Los márgenes crean espacio alrededor de componente. Puedes especificar márgenes desde arriba, abajo, izquierda, derecha, mejorar diseño. Sin márgenes, componentes estarán presionados entre sí.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>Insets</code> — márgenes</li>
  <li>Campo <code>insets</code> — establecer márgenes</li>
  <li>Crear espacio alrededor de componente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los márgenes son necesarios para crear espacio alrededor de componente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea restricciones: <code>GridBagConstraints gbc = new GridBagConstraints();</code></li>
  <li>Establece márgenes: <code>gbc.insets = new Insets(5, 5, 5, 5);</code></li>
  <li>Agrega componente: <code>add(component, gbc);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Insets para espacios</li>
  <li><strong>✅ Excelente:</strong> Especificar márgenes para todos los lados, usar valores razonables, usar para mejorar diseño</li>
  <li><strong>⚠️ Evita:</strong> Márgenes demasiado grandes — puede ser excesivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Márgenes aparecerán alrededor de componente. Componente tendrá márgenes especificados.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (362, 'es', 'GridBagLayout Maestro: Configurar Márgenes',
        'Crea GridBagConstraints, establece insets = new Insets(5,5,5,5), agrega componente')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (363, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Establecer Panel de Vista Previa en JColorChooser</h2>
<p class="intro">El panel de vista previa mejora experiencia de usuario. Puedes mostrar vista previa personalizada, mejorar visualización. Sin panel, habrá vista previa estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setPreviewPanel()</code> — establecer panel de vista previa</li>
  <li>Panel de vista previa personalizado</li>
  <li>Mejorar experiencia de usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El panel de vista previa es necesario para mejorar experiencia de usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea panel: <code>JPanel previewPanel = new JPanel();</code></li>
  <li>Establece panel: <code>colorChooser.setPreviewPanel(previewPanel);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setPreviewPanel()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar panel personalizado, usar para mejorar UX, mejorar visualización</li>
  <li><strong>⚠️ Evita:</strong> Panel demasiado complejo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>En lugar de panel estándar, habrá personalizado. Puedes mejorar visualización.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (363, 'es', 'Selección de Color Maestro: Establecer Panel de Vista Previa',
        'Crea JPanel, establece vía setPreviewPanel()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (364, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Mostrar Primera Tarjeta en CardLayout</h2>
<p class="intro">La primera tarjeta permite volver al inicio. Puedes ir a primera tarjeta, mejorar navegación. Sin esto, necesitas conmutar manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>first()</code> — primera tarjeta</li>
  <li>Ir a primera tarjeta</li>
  <li>Mejorar navegación</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Ir a primera tarjeta es necesario para mejorar navegación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén layout: <code>CardLayout layout = (CardLayout) container.getLayout();</code></li>
  <li>Muestra primera tarjeta: <code>layout.first(container);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>first()</code> para navegación</li>
  <li><strong>✅ Excelente:</strong> Usar para navegación, combinar con <code>last()</code>, <code>next()</code>, <code>previous()</code>, mejorar navegación</li>
  <li><strong>⚠️ Evita:</strong> Conmutar sin contenedor</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Primera tarjeta será mostrada. Puedes volver al inicio.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (364, 'es', 'CardLayout Maestro: Mostrar Primera Tarjeta',
        'Obtén CardLayout vía getLayout(), convierte a CardLayout, llama first(container)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (365, 'es', '<div class="lesson-header">
<h2>🎮 Lección 10: Obtener Modelo de Selección de Color</h2>
<p class="intro">El modelo de selección permite gestionar color. Puedes obtener acceso a modelo, cambiar color programáticamente, mejorar funcionalidad. Sin acceso, no puedes gestionar color.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getSelectionModel()</code> — obtener modelo de selección</li>
  <li>Acceso a modelo de color</li>
  <li>Mejorar funcionalidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El modelo de selección es necesario para gestión programática de color.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén modelo: <code>ColorSelectionModel model = colorChooser.getSelectionModel();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getSelectionModel()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar para gestionar color, usar para cambios programáticos, mejorar funcionalidad</li>
  <li><strong>⚠️ Evita:</strong> Cambiar sin necesidad</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Podrás obtener acceso a modelo de selección. Puedes gestionar color programáticamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (365, 'es', 'Selección de Color Maestro: Obtener Modelo de Selección',
        'Obtén modelo de selección vía getSelectionModel()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (366, 'es', '<div class="lesson-header">
<h2>🎮 Lección 11: Mostrar Última Tarjeta en CardLayout</h2>
<p class="intro">La última tarjeta permite ir al final. Puedes ir a última tarjeta, mejorar navegación. Sin esto, necesitas conmutar manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>last()</code> — última tarjeta</li>
  <li>Ir a última tarjeta</li>
  <li>Mejorar navegación</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Ir a última tarjeta es necesario para mejorar navegación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén layout: <code>CardLayout layout = (CardLayout) container.getLayout();</code></li>
  <li>Muestra última tarjeta: <code>layout.last(container);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>last()</code> para navegación</li>
  <li><strong>✅ Excelente:</strong> Usar para navegación, combinar con <code>first()</code>, <code>next()</code>, <code>previous()</code>, mejorar navegación</li>
  <li><strong>⚠️ Evita:</strong> Conmutar sin contenedor</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Última tarjeta será mostrada. Puedes ir al final.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (366, 'es', 'CardLayout Maestro: Mostrar Última Tarjeta',
        'Obtén CardLayout vía getLayout(), convierte a CardLayout, llama last(container)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (367, 'es', '<div class="lesson-header">
<h2>🎮 Lección 12: Mostrar Siguiente Tarjeta en CardLayout</h2>
<p class="intro">La siguiente tarjeta permite avanzar. Puedes ir a siguiente tarjeta, mejorar navegación. Sin esto, necesitas conmutar manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>next()</code> — siguiente tarjeta</li>
  <li>Ir a siguiente tarjeta</li>
  <li>Mejorar navegación</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Ir a siguiente tarjeta es necesario para mejorar navegación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén layout: <code>CardLayout layout = (CardLayout) container.getLayout();</code></li>
  <li>Muestra siguiente tarjeta: <code>layout.next(container);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>next()</code> para navegación</li>
  <li><strong>✅ Excelente:</strong> Usar para navegación, combinar con <code>previous()</code>, <code>first()</code>, <code>last()</code>, mejorar navegación</li>
  <li><strong>⚠️ Evita:</strong> Conmutar sin contenedor</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Siguiente tarjeta será mostrada. Puedes avanzar.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (367, 'es', 'CardLayout Maestro: Mostrar Siguiente Tarjeta',
        'Obtén CardLayout vía getLayout(), convierte a CardLayout, llama next(container)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (368, 'es', '<div class="lesson-header">
<h2>🎮 Lección 13: Establecer Color en JColorChooser</h2>
<p class="intro">El color determina selección actual. Puedes establecer color inicial, obtener seleccionado, mejorar gestión. Sin establecer, color será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setColor()</code> — establecer color</li>
  <li>Método <code>getColor()</code> — obtener color</li>
  <li>Gestionar color</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Establecer color es necesario para gestionar selección de color.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece color: <code>colorChooser.setColor(Color.RED);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setColor()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar <code>getColor()</code> para obtener, usar constantes Color, mejorar gestión</li>
  <li><strong>⚠️ Evita:</strong> Ignorar color seleccionado</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Color será establecido. Puedes gestionar selección de color.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (368, 'es', 'Selección de Color Maestro: Establecer Color', 'Establece color RED vía setColor(Color.RED)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (369, 'es', '<div class="lesson-header">
<h2>🎮 Lección 14: Mostrar Tarjeta Anterior en CardLayout</h2>
<p class="intro">La tarjeta anterior permite retroceder. Puedes ir a tarjeta anterior, mejorar navegación. Sin esto, necesitas conmutar manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>previous()</code> — tarjeta anterior</li>
  <li>Ir a tarjeta anterior</li>
  <li>Mejorar navegación</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Ir a tarjeta anterior es necesario para mejorar navegación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén layout: <code>CardLayout layout = (CardLayout) container.getLayout();</code></li>
  <li>Muestra tarjeta anterior: <code>layout.previous(container);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>previous()</code> para navegación</li>
  <li><strong>✅ Excelente:</strong> Usar para navegación, combinar con <code>next()</code>, <code>first()</code>, <code>last()</code>, mejorar navegación</li>
  <li><strong>⚠️ Evita:</strong> Conmutar sin contenedor</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Tarjeta anterior será mostrada. Puedes retroceder.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (369, 'es', 'CardLayout Maestro: Mostrar Tarjeta Anterior',
        'Obtén CardLayout vía getLayout(), convierte a CardLayout, llama previous(container)')
ON CONFLICT (task_id, language_code) DO NOTHING;
