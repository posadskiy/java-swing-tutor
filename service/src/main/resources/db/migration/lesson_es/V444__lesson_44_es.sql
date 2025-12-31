-- Flyway migration V4: Lesson 44
-- This migration contains lesson, tasks, and documentation for lesson 44

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (383, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear Diseño de Resorte con SpringLayout</h2>
<p class="intro">SpringLayout permite crear diseños flexibles. Componentes pueden "atraerse" entre sí a través de resortes. Esto da control máximo sobre posicionamiento.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>SpringLayout</code> — diseño de resorte</li>
  <li>Clase <code>Spring</code> — resorte</li>
  <li>Crear conexiones de resorte</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>SpringLayout es necesario para crear diseños flexibles con control máximo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece administrador: <code>SpringLayout layout = new SpringLayout();<br>
setLayout(layout);</code></li>
  <li>Agrega componente: <code>add(button);</code></li>
  <li>Establece conexiones de resorte: <code>layout.putConstraint(SpringLayout.WEST, button, 10, SpringLayout.WEST, this);<br>
layout.putConstraint(SpringLayout.NORTH, button, 10, SpringLayout.NORTH, this);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>putConstraint()</code> para establecer conexiones</li>
  <li><strong>✅ Excelente:</strong> Vincular componentes entre sí, usar <code>Spring.constant()</code> para valores fijos</li>
  <li><strong>⚠️ Evita:</strong> Demasiadas conexiones — difícil de gestionar</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componentes se colocarán con conexiones de resorte. Cuando cambie tamaño de ventana, componentes se "atraerán" entre sí.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (383, 'es', 'SpringLayout Principiante: Crear Diseño de Resorte',
        'Establece SpringLayout, agrega botón, establece conexiones WEST y NORTH con espacio 10 desde borde contenedor')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (384, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Vincular Componentes Entre Sí en SpringLayout</h2>
<p class="intro">Vincular componentes crea diseño flexible. Componentes mantendrán distancias entre sí cuando cambie tamaño de ventana. Sin esto, componentes pueden "separarse".</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Vincular componentes entre sí</li>
  <li>Crear conexiones de resorte entre componentes</li>
  <li>Configurar distancias entre componentes</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Vincular componentes es necesario para crear diseño flexible con preservación de distancias.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega componentes: <code>add(button1);<br>
add(button2);</code></li>
  <li>Vincula componentes: <code>layout.putConstraint(SpringLayout.EAST, button1, 10, SpringLayout.WEST, button2);</code></li>
  <li>O vincula verticalmente: <code>layout.putConstraint(SpringLayout.SOUTH, button1, 10, SpringLayout.NORTH, button2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Vincular componentes vía <code>putConstraint()</code></li>
  <li><strong>✅ Excelente:</strong> Usar EAST-WEST para vínculo horizontal, usar SOUTH-NORTH para vínculo vertical, vincular a contenedor para unión a bordes</li>
  <li><strong>⚠️ Evita:</strong> Demasiadas conexiones — difícil de gestionar</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componentes estarán vinculados entre sí. Cuando cambie tamaño de ventana, mantendrán distancias.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (384, 'es', 'SpringLayout Maestro: Vincular Componentes Entre Sí',
        'Agrega dos botones, vincula EAST de primer botón con WEST de segundo con espacio 10')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (386, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Determinar Cantidad de Clics en MouseListener</h2>
<p class="intro">La cantidad de clics permite distinguir acciones. Clic simple para selección, doble para abrir — todo esto requiere determinar cantidad de clics. Sin esto, no puedes distinguir tipos de clics.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getClickCount()</code> — cantidad de clics</li>
  <li>Distinguir clic simple y doble</li>
  <li>Manejar diferentes tipos de clics</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Determinar cantidad de clics es necesario para distinguir tipos de acciones.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Maneja clic: <code>component.addMouseListener(new MouseAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void mouseClicked(MouseEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;if (e.getClickCount() == 2) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Clic doble!");<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getClickCount()</code> para verificar</li>
  <li><strong>✅ Excelente:</strong> Manejar clic simple (1), manejar clic doble (2), manejar clic triple (3)</li>
  <li><strong>⚠️ Evita:</strong> Ignorar cantidad — pérdida de funcionalidad</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Podrás distinguir tipos de clics. En clic simple se ejecutará una acción, en doble — otra.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (386, 'es', 'MouseListener Maestro: Determinar Cantidad de Clics',
        'Agrega MouseListener, verifica getClickCount() == 2 para clic doble, muestra mensaje')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (385, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Usar Aritmética de Resortes en SpringLayout</h2>
<p class="intro">La aritmética de resortes permite crear diseños complejos. Puedes calcular distancias, crear dependencias, hacer interfaces adaptativas. Sin esto, tendrás que usar solo valores fijos.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Métodos <code>Spring.sum()</code>, <code>Spring.max()</code>, <code>Spring.min()</code></li>
  <li>Operaciones aritméticas con resortes</li>
  <li>Crear conexiones de resorte complejas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La aritmética de resortes es necesaria para crear diseños complejos con distancias calculadas.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea resortes: <code>Spring spring1 = Spring.constant(10);<br>
Spring spring2 = Spring.constant(20);</code></li>
  <li>Suma resortes: <code>Spring sum = Spring.sum(spring1, spring2);</code></li>
  <li>Usa en conexión: <code>layout.putConstraint(SpringLayout.WEST, button, sum, SpringLayout.WEST, this);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>Spring.sum()</code> para suma</li>
  <li><strong>✅ Excelente:</strong> Usar <code>Spring.max()</code> para máximo, usar <code>Spring.min()</code> para mínimo, combinar múltiples operaciones</li>
  <li><strong>⚠️ Evita:</strong> Cálculos demasiado complejos — puede ser confuso</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Resortes se calcularán matemáticamente. Distancias dependerán de otros componentes.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (385, 'es', 'SpringLayout Maestro: Usar Aritmética de Resortes',
        'Crea dos resortes vía Spring.constant(10) y Spring.constant(20), súmalos vía Spring.sum(), usa en putConstraint')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (387, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Determinar Botón de Ratón en MouseListener</h2>
<p class="intro">Determinar botón permite distinguir acciones. Botón izquierdo para selección, derecho para menú contextual — todo esto requiere determinar botón. Sin esto, no puedes distinguir botones.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getButton()</code> — obtener botón</li>
  <li>Constantes de botones (BUTTON1, BUTTON2, BUTTON3)</li>
  <li>Distinguir botón izquierdo, derecho y medio</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Determinar botón es necesario para distinguir acciones dependiendo de botón presionado.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Maneja clic: <code>component.addMouseListener(new MouseAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void mouseClicked(MouseEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;if (e.getButton() == MouseEvent.BUTTON1) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Botón izquierdo!");<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getButton()</code> para verificar</li>
  <li><strong>✅ Excelente:</strong> Usar BUTTON1 para izquierdo, usar BUTTON2 para medio, usar BUTTON3 para derecho</li>
  <li><strong>⚠️ Evita:</strong> Ignorar botón — pérdida de funcionalidad</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Podrás distinguir botones de ratón. Al hacer clic, puedes determinar qué botón está presionado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (387, 'es', 'MouseListener Maestro: Determinar Botón de Ratón',
        'Agrega MouseListener, verifica getButton() == BUTTON1, muestra mensaje')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (390, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Solicitar Foco en FocusListener</h2>
<p class="intro">Solicitar foco permite gestionar foco. Puedes establecer foco programáticamente, mejorar navegación. Sin solicitud, foco se establecerá automáticamente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>requestFocus()</code> — solicitar foco</li>
  <li>Método <code>requestFocusInWindow()</code> — solicitar foco en ventana</li>
  <li>Gestionar foco</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Solicitar foco es necesario para gestión programática de foco.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Solicita foco: <code>component.requestFocusInWindow();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>requestFocusInWindow()</code> para solicitar</li>
  <li><strong>✅ Excelente:</strong> Usar para gestionar foco, mejorar navegación, usar para mejorar UX</li>
  <li><strong>⚠️ Evita:</strong> Solicitar demasiado frecuentemente</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componente obtendrá foco. Puedes establecer foco programáticamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (390, 'es', 'FocusListener Maestro: Solicitar Foco', 'Solicita foco vía requestFocusInWindow()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (388, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Determinar Posición de Ratón en MouseListener</h2>
<p class="intro">La posición de ratón permite determinar lugar de clic. Puedes saber dónde ocurrió clic, manejar acción contextual. Sin posición, no puedes determinar lugar de clic.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getX()</code> — coordenada X</li>
  <li>Método <code>getY()</code> — coordenada Y</li>
  <li>Determinar posición de cursor</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Determinar posición de ratón es necesario para manejar acciones contextuales.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Maneja clic: <code>component.addMouseListener(new MouseAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void mouseClicked(MouseEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;int x = e.getX();<br>
&nbsp;&nbsp;&nbsp;&nbsp;int y = e.getY();<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Posición: (" + x + ", " + y + ")");<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getX()</code> para X</li>
  <li><strong>✅ Excelente:</strong> Usar <code>getY()</code> para Y, usar <code>getPoint()</code> para punto, usar para acciones contextuales</li>
  <li><strong>⚠️ Evita:</strong> Ignorar posición</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Podrás obtener posición de ratón. Al hacer clic, puedes saber coordenadas.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (388, 'es', 'MouseListener Maestro: Determinar Posición de Ratón',
        'Agrega MouseListener, obtén X vía getX(), Y vía getY(), muestra posición')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (393, 'es', '<div class="lesson-header">
<h2>🎮 Lección 11: Gestionar Enfocabilidad en FocusListener</h2>
<p class="intro">La enfocabilidad determina disponibilidad de foco. Puedes hacer componente no disponible para foco, mejorar navegación. Sin gestión, todos los componentes son enfocables.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setFocusable()</code> — establecer enfocabilidad</li>
  <li>Método <code>isFocusable()</code> — verificar enfocabilidad</li>
  <li>Gestionar disponibilidad de foco</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Gestionar enfocabilidad es necesario para mejorar navegación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Desactiva foco: <code>component.setFocusable(false);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setFocusable()</code> para gestionar</li>
  <li><strong>✅ Excelente:</strong> Usar false para desactivar, usar true para activar, mejorar navegación</li>
  <li><strong>⚠️ Evita:</strong> Desactivar para componentes interactivos</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componente será no disponible para foco. Puedes mejorar navegación.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (393, 'es', 'FocusListener Maestro: Gestionar Enfocabilidad', 'Desactiva foco vía setFocusable(false)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (389, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Determinar Cantidad de Clics en MouseListener</h2>
<p class="intro">La cantidad de clics permite distinguir tipos. Puedes manejar clic simple, doble, triple, crear diferentes acciones. Sin verificación, no puedes distinguir tipos.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getClickCount()</code> — obtener cantidad</li>
  <li>Distinguir clic simple y doble</li>
  <li>Manejar diferentes tipos de clics</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Determinar cantidad de clics es necesario para distinguir tipos de acciones.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Maneja clic: <code>component.addMouseListener(new MouseAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void mouseClicked(MouseEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;if (e.getClickCount() == 2) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Clic doble!");<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getClickCount()</code> para verificar</li>
  <li><strong>✅ Excelente:</strong> Verificar == 1 para simple, verificar == 2 para doble, verificar == 3 para triple</li>
  <li><strong>⚠️ Evita:</strong> Ignorar cantidad</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Podrás determinar cantidad de clics. Al hacer clic, puedes saber si clic simple, doble o triple.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (389, 'es', 'MouseListener Maestro: Determinar Cantidad de Clics',
        'Agrega MouseListener, verifica getClickCount() == 2, muestra mensaje')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (396, 'es', '<div class="lesson-header">
<h2>🎮 Lección 14: Obtener Propietario de Foco en FocusListener</h2>
<p class="intro">El propietario de foco determina componente activo. Puedes obtener componente con foco, manejarlo, mejorar funcionalidad. Sin obtener, no puedes determinar componente activo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>KeyboardFocusManager</code> — administrador de foco</li>
  <li>Método <code>getFocusOwner()</code> — obtener propietario</li>
  <li>Determinar componente con foco</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Obtener propietario de foco es necesario para determinar componente activo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén propietario: <code>Component owner = KeyboardFocusManager.getCurrentKeyboardFocusManager().getFocusOwner();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getFocusOwner()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar KeyboardFocusManager, verificar null, mejorar funcionalidad</li>
  <li><strong>⚠️ Evita:</strong> Ignorar null</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Podrás obtener componente con foco. Puedes manejar componente activo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (396, 'es', 'FocusListener Maestro: Obtener Propietario de Foco',
        'Obtén propietario de foco vía KeyboardFocusManager.getCurrentKeyboardFocusManager().getFocusOwner()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (391, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Obtener Restricción en SpringLayout</h2>
<p class="intro">Obtener restricción permite gestionar posición. Puedes obtener restricción, cambiarla, mejorar gestión. Sin obtener, no puedes cambiar restricción.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getConstraint()</code> — obtener restricción</li>
  <li>Obtener restricciones de componente</li>
  <li>Gestionar restricciones</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Obtener restricción es necesario para gestionar posición de componente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén restricción: <code>SpringLayout.Constraints constraints = layout.getConstraints(component);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getConstraints()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar para gestión, cambiar restricciones, mejorar gestión</li>
  <li><strong>⚠️ Evita:</strong> Cambiar sin necesidad</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Podrás obtener restricciones de componente. Puedes cambiar posición, tamaño.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (391, 'es', 'SpringLayout Maestro: Obtener Restricción',
        'Obtén restricciones de componente vía getConstraints()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (392, 'es', '<div class="lesson-header">
<h2>🎮 Lección 10: Establecer Restricción en SpringLayout</h2>
<p class="intro">La restricción vincula componentes. Puedes establecer distancia entre componentes, mejorar diseño. Sin restricción, componentes no estarán vinculados.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>putConstraint()</code> — establecer restricción</li>
  <li>Vincular componentes</li>
  <li>Mejorar diseño</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La restricción es necesaria para vincular componentes y mejorar diseño.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece restricción: <code>layout.putConstraint(SpringLayout.WEST, component2, 10, SpringLayout.EAST, component1);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>putConstraint()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar SpringLayout.WEST, EAST para lados, usar para vincular, mejorar diseño</li>
  <li><strong>⚠️ Evita:</strong> Crear restricciones conflictivas</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componentes estarán vinculados por restricción. Puedes establecer distancia entre componentes.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (392, 'es', 'SpringLayout Maestro: Establecer Restricción',
        'Establece restricción vía putConstraint(WEST, component2, 10, EAST, component1)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (394, 'es', '<div class="lesson-header">
<h2>🎮 Lección 12: Crear Resorte en SpringLayout</h2>
<p class="intro">El resorte determina elasticidad de restricción. Puedes crear resorte con parámetros necesarios, mejorar diseño. Sin resorte, restricción será rígida.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>Spring</code> — resorte</li>
  <li>Método <code>Spring.constant()</code> — crear resorte constante</li>
  <li>Crear resortes para restricciones</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El resorte es necesario para crear restricciones elásticas.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea resorte: <code>Spring spring = Spring.constant(100);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>Spring.constant()</code> para crear</li>
  <li><strong>✅ Excelente:</strong> Usar para restricciones, usar para diseño, mejorar colocación</li>
  <li><strong>⚠️ Evita:</strong> Crear resortes demasiado rígidos</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Resorte será creado. Puedes usar para restricciones.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (394, 'es', 'SpringLayout Maestro: Crear Resorte', 'Crea resorte 100 vía Spring.constant(100)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (395, 'es', '<div class="lesson-header">
<h2>🎮 Lección 13: Obtener Restricción en SpringLayout</h2>
<p class="intro">La restricción determina posición. Puedes obtener restricción de componente, cambiarla, mejorar funcionalidad. Sin obtener, no puedes cambiar restricción.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getConstraint()</code> — obtener restricción</li>
  <li>Acceso a restricciones de componente</li>
  <li>Mejorar funcionalidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Obtener restricción es necesario para cambiar posición de componente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén restricción: <code>SpringLayout.Constraints constraints = layout.getConstraints(component);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getConstraints()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar para acceder a restricciones, usar para cambiar, mejorar funcionalidad</li>
  <li><strong>⚠️ Evita:</strong> Cambiar sin necesidad</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Podrás obtener restricción de componente. Puedes cambiar posición.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (395, 'es', 'SpringLayout Maestro: Obtener Restricción', 'Obtén restricción vía getConstraints(component)')
ON CONFLICT (task_id, language_code) DO NOTHING;
