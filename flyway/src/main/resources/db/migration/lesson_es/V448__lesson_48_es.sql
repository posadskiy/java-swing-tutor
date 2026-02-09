-- Flyway migration V4: Lesson 48
-- This migration contains lesson, tasks, and documentation for lesson 48

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (429, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Rastrear Foco de Componente con FocusListener</h2>
<p class="intro">FocusListener permite responder a foco. Validación de entrada, sugerencias, retroalimentación visual — todo esto requiere manejo de foco. Sin esto, no puedes rastrear qué componente está activo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Interfaz <code>FocusListener</code> — manejo de foco</li>
  <li>Métodos <code>focusGained()</code> y <code>focusLost()</code></li>
  <li>Manejar cambios de foco</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>FocusListener es necesario para rastrear componente activo y manejar foco.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea oyente: <code>FocusListener listener = new FocusListener() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void focusGained(FocusEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Componente obtuvo foco!");<br>
&nbsp;&nbsp;}<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void focusLost(FocusEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Componente perdió foco!");<br>
&nbsp;&nbsp;}<br>
};</code></li>
  <li>Agrega oyente: <code>textField.addFocusListener(listener);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Validar datos al perder foco</li>
  <li><strong>✅ Excelente:</strong> Mostrar sugerencias al obtener foco, cambiar estilo visual al foco</li>
  <li><strong>⚠️ Evita:</strong> Demasiados manejadores — puede ser lento</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al hacer clic en componente, obtendrá foco. Al hacer clic en otro componente, primero perderá foco. Puedes rastrear todos los cambios de foco.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (429, 'es', 'FocusListener Principiante: Rastrear Foco de Componente',
        'Crea FocusListener, maneja obtención y pérdida de foco, agrega a campo de texto')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (430, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Validación al Perder Foco con FocusListener</h2>
<p class="intro">La validación al perder foco mejora experiencia de usuario. Puedes verificar email, número, fecha inmediatamente después de entrada. Sin esto, errores se descubrirán solo al enviar formulario.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Validación de datos en <code>focusLost()</code></li>
  <li>Verificar corrección de entrada</li>
  <li>Mostrar errores de validación</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La validación al perder foco es necesaria para mejorar experiencia de usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>En focusLost obtén texto: <code>String text = textField.getText();</code></li>
  <li>Verifica corrección: <code>if (text.isEmpty()) {<br>
&nbsp;&nbsp;textField.setBackground(Color.RED);<br>
&nbsp;&nbsp;label.setText("¡Campo no puede estar vacío!");<br>
} else {<br>
&nbsp;&nbsp;textField.setBackground(Color.WHITE);<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Validar en <code>focusLost()</code></li>
  <li><strong>✅ Excelente:</strong> Mostrar retroalimentación visual (color de fondo), mostrar mensaje de error, restaurar foco en error: <code>requestFocus()</code></li>
  <li><strong>⚠️ Evita:</strong> Validar en focusGained — demasiado temprano</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al perder foco, se ejecutará validación. Si datos son incorrectos, campo se resaltará rojo. Puedes devolver foco para corrección.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (430, 'es', 'FocusListener Maestro: Validar al Perder Foco',
        'En focusLost obtén texto de campo, verifica vacío, establece fondo rojo en error')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (432, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Navegar Tarjetas en CardLayout</h2>
<p class="intro">La navegación permite cambiar entre tarjetas. Puedes mostrar tarjeta necesaria, ir a siguiente o anterior. Sin navegación, solo primera tarjeta será visible.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>show()</code> — mostrar tarjeta por nombre</li>
  <li>Método <code>next()</code> — siguiente tarjeta</li>
  <li>Método <code>previous()</code> — tarjeta anterior</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La navegación es necesaria para cambiar entre tarjetas en CardLayout.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén administrador: <code>CardLayout layout = (CardLayout) panel.getLayout();</code></li>
  <li>Muestra tarjeta: <code>layout.show(panel, "card1");</code></li>
  <li>O cambia: <code>layout.next(panel);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>show()</code> para mostrar por nombre</li>
  <li><strong>✅ Excelente:</strong> Usar <code>next()</code> para siguiente tarjeta, usar <code>previous()</code> para anterior, usar <code>first()</code> y <code>last()</code> para extremos</li>
  <li><strong>⚠️ Evita:</strong> Cambiar sin verificar — puede ser inesperado</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Tarjetas cambiarán. Al llamar método, se mostrará tarjeta necesaria. Puedes navegar entre tarjetas.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (432, 'es', 'CardLayout Maestro: Navegar Tarjetas',
        'Obtén CardLayout, muestra tarjeta "card1" vía show(), luego cambia a siguiente vía next()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (431, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Gestionar Navegación de Foco con FocusListener</h2>
<p class="intro">Gestionar navegación de foco hace interfaz conveniente. Puedes configurar orden de transición entre campos, ocultar componentes innecesarios de navegación. Sin esto, foco transicionará en orden impredecible.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setFocusable()</code> — permitir foco</li>
  <li>Método <code>setFocusTraversalKeysEnabled()</code> — gestionar navegación</li>
  <li>Configurar orden de foco</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Gestionar navegación de foco es necesario para crear interfaz conveniente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Permite foco: <code>component.setFocusable(true);</code></li>
  <li>Configura navegación: <code>component.setFocusTraversalKeysEnabled(true);</code></li>
  <li>Solicita foco: <code>component.requestFocus();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setFocusable()</code> para gestionar foco</li>
  <li><strong>✅ Excelente:</strong> Usar <code>setFocusTraversalKeysEnabled()</code> para navegación, usar <code>requestFocus()</code> para foco programático, configurar orden vía FocusTraversalPolicy</li>
  <li><strong>⚠️ Evita:</strong> Hacer todos los componentes no enfocables — pérdida de funcionalidad</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Foco transicionará en orden necesario. Puedes gestionar qué componentes obtienen foco.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (431, 'es', 'FocusListener Maestro: Gestionar Navegación de Foco',
        'Establece setFocusable(true), establece setFocusTraversalKeysEnabled(true), solicita foco vía requestFocus()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (433, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Cambiar a Primera y Última Tarjeta en CardLayout</h2>
<p class="intro">Cambiar a tarjetas extremas acelera navegación. Puedes ir rápidamente a primera o última tarjeta. Sin esto, tendrás que cambiar una por una.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>first()</code> — primera tarjeta</li>
  <li>Método <code>last()</code> — última tarjeta</li>
  <li>Navegar a tarjetas extremas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Cambiar a tarjetas extremas es necesario para navegación rápida.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén administrador: <code>CardLayout layout = (CardLayout) panel.getLayout();</code></li>
  <li>Cambia a primera: <code>layout.first(panel);</code></li>
  <li>O a última: <code>layout.last(panel);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>first()</code> para primera tarjeta</li>
  <li><strong>✅ Excelente:</strong> Usar <code>last()</code> para última, usar para navegación rápida, combinar con <code>next()</code> y <code>previous()</code></li>
  <li><strong>⚠️ Evita:</strong> Cambiar sin verificar</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Tarjeta cambiará a primera o última. Puedes ir rápidamente a tarjetas extremas.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (433, 'es', 'CardLayout Maestro: Cambiar a Primera y Última',
        'Obtén CardLayout, cambia a primera vía first(), luego a última vía last()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (434, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Obtener Cantidad de Tarjetas en CardLayout</h2>
<p class="intro">La cantidad de tarjetas permite gestionar navegación. Puedes saber cuántas tarjetas hay, crear navegación cíclica. Sin contar, no puedes gestionar navegación.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getComponentCount()</code> — cantidad de componentes</li>
  <li>Contar tarjetas en contenedor</li>
  <li>Mejorar navegación</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La cantidad de tarjetas es necesaria para gestionar navegación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén cantidad: <code>int count = panel.getComponentCount();</code></li>
  <li>Usa cantidad: <code>JLabel label = new JLabel("Tarjetas: " + count);<br>
add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getComponentCount()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar para navegación, usar para navegación cíclica, verificar antes de navegar</li>
  <li><strong>⚠️ Evita:</strong> Ignorar cantidad</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Podrás obtener cantidad de tarjetas. Puedes usar para navegación.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (434, 'es', 'CardLayout Maestro: Obtener Cantidad de Tarjetas',
        'Obtén cantidad de componentes vía getComponentCount(), muéstrala')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (435, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Mostrar Tarjeta por Nombre en CardLayout</h2>
<p class="intro">Mostrar por nombre simplifica navegación. Puedes cambiar a tarjeta por nombre, sin saber su posición. Sin nombre, tendrás que saber posición.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>show()</code> — mostrar tarjeta por nombre</li>
  <li>Navegar por nombre de tarjeta</li>
  <li>Mejorar gestión de tarjetas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Mostrar por nombre es necesario para simplificar navegación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén administrador: <code>CardLayout layout = (CardLayout) panel.getLayout();</code></li>
  <li>Muestra tarjeta: <code>layout.show(panel, "cardName");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>show()</code> para mostrar</li>
  <li><strong>✅ Excelente:</strong> Usar nombres claros, usar para navegación, combinar con otros métodos</li>
  <li><strong>⚠️ Evita:</strong> Usar nombres inexistentes</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Tarjeta cambiará por nombre. Puedes cambiar a tarjeta necesaria.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (435, 'es', 'CardLayout Maestro: Mostrar Tarjeta por Nombre',
        'Obtén CardLayout, muestra tarjeta "cardName" vía show()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (436, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Establecer Orientación de Componente en FlowLayout</h2>
<p class="intro">La orientación de componente es importante para idiomas RTL. Puedes cambiar dirección para árabe, hebreo, mejorar soporte. Sin orientación, diseño será solo LTR.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setComponentOrientation()</code> — establecer orientación</li>
  <li>Soporte de idiomas RTL</li>
  <li>Mejorar internacionalización</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La orientación de componente es necesaria para soporte de idiomas RTL.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece orientación: <code>flowLayout.setComponentOrientation(ComponentOrientation.RIGHT_TO_LEFT);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setComponentOrientation()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar RIGHT_TO_LEFT para RTL, usar LEFT_TO_RIGHT para LTR, mejorar internacionalización</li>
  <li><strong>⚠️ Evita:</strong> Usar orientación incorrecta</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componentes se colocarán en orientación especificada. Puedes soportar idiomas RTL.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (436, 'es', 'FlowLayout Maestro: Establecer Orientación de Componente',
        'Establece orientación RIGHT_TO_LEFT vía setComponentOrientation()')
ON CONFLICT (task_id, language_code) DO NOTHING;
