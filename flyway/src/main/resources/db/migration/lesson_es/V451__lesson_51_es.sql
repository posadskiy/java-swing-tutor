-- Flyway migration V4: Lesson 51
-- This migration contains lesson, tasks, and documentation for lesson 51

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (448, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear Componente Personalizado</h2>
<p class="intro">Los componentes personalizados permiten crear elementos únicos. Puedes crear componente con comportamiento necesario, gráficos, funcionalidad. Sin componentes personalizados, solo puedes usar estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Extender <code>JComponent</code> — clase base</li>
  <li>Crear componente personalizado</li>
  <li>Anular métodos</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los componentes personalizados son necesarios para crear elementos de interfaz únicos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea clase extendiendo JComponent: <code>class MyComponent extends JComponent {<br>
&nbsp;&nbsp;public MyComponent() {<br>
&nbsp;&nbsp;&nbsp;&nbsp;setPreferredSize(new Dimension(200, 100));<br>
&nbsp;&nbsp;}<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;protected void paintComponent(Graphics g) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;super.paintComponent(g);<br>
&nbsp;&nbsp;&nbsp;&nbsp;// Renderizado personalizado<br>
&nbsp;&nbsp;}<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Extender JComponent para funcionalidad base</li>
  <li><strong>✅ Excelente:</strong> Establecer tamaño preferido, anular <code>paintComponent()</code> para renderizado, agregar funcionalidad personalizada</li>
  <li><strong>⚠️ Evita:</strong> No establecer tamaño — puede haber problema con diseño</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componente personalizado aparecerá. Puedes crear componente con comportamiento necesario.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (448, 'es', 'Componente Personalizado Principiante: Crea Tu Componente',
        'Crea clase extendiendo JComponent, establece tamaño preferido 200x100, anula paintComponent()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (449, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Establecer Tamaño Preferido en Componente Personalizado</h2>
<p class="intro">Los tamaños afectan diseño. El administrador de diseño usa tamaño preferido para colocación, mejorar disposición. Sin tamaños, tamaño será automático.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setPreferredSize(Dimension)</code> — establecer tamaño</li>
  <li>Método <code>setMinimumSize(Dimension)</code> — tamaño mínimo</li>
  <li>Método <code>setMaximumSize(Dimension)</code> — tamaño máximo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los tamaños son necesarios para diseño correcto de componentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece tamaño preferido: <code>setPreferredSize(new Dimension(300, 200));</code></li>
  <li>Establece tamaño mínimo: <code>setMinimumSize(new Dimension(100, 50));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setPreferredSize()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar <code>setMinimumSize()</code> para limitar, usar <code>setMaximumSize()</code> para limitar, usar para diseño</li>
  <li><strong>⚠️ Evita:</strong> Establecer tamaños demasiado pequeños o grandes</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componente tendrá tamaños establecidos. El administrador de diseño los considerará al colocar.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (449, 'es', 'Componente Personalizado Maestro: Establece Tamaño Preferido',
        'Crea componente personalizado, establece tamaño preferido 300x200 vía setPreferredSize()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (450, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Manejar Eventos en Componente Personalizado</h2>
<p class="intro">Manejar eventos hace componente interactivo. Puedes responder a clics, pulsaciones de teclas, movimientos de mouse, crear elementos interactivos. Sin manejo, componente será estático.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Agregar oyentes de eventos</li>
  <li>Manejar mouse y teclado</li>
  <li>Crear componentes interactivos</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Manejar eventos es necesario para crear componentes interactivos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega oyente de mouse: <code>addMouseListener(new MouseAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void mouseClicked(MouseEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Clic!");<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addMouseListener()</code> para mouse</li>
  <li><strong>✅ Excelente:</strong> Usar <code>addKeyListener()</code> para teclado, usar MouseAdapter para conveniencia, crear componentes interactivos</li>
  <li><strong>⚠️ Evita:</strong> Ignorar eventos</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componente responderá a eventos. Puedes crear componente interactivo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (450, 'es', 'Componente Personalizado Maestro: Maneja Eventos',
        'Crea componente personalizado, agrega MouseListener, maneja mouseClicked(), muestra mensaje')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (451, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Agregar Propiedades Personalizadas a Componente</h2>
<p class="intro">Las propiedades personalizadas extienden funcionalidad. Puedes agregar propiedades, gestionar estado, configurar componente. Sin propiedades, componente será básico.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Agregar campos privados</li>
  <li>Getters y setters</li>
  <li>Gestionar estado de componente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Las propiedades personalizadas son necesarias para extender funcionalidad de componente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega campo privado: <code>private String text = "Texto";</code></li>
  <li>Agrega getter y setter: <code>public String getText() { return text; }<br>
public void setText(String text) { this.text = text; repaint(); }</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Campos privados</li>
  <li><strong>✅ Excelente:</strong> Usar getters y setters, llamar <code>repaint()</code> al cambiar, gestionar estado</li>
  <li><strong>⚠️ Evita:</strong> Usar campos públicos</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componente tendrá propiedades personalizadas. Puedes configurar componente a través de propiedades.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (451, 'es', 'Componente Personalizado Maestro: Agrega Propiedades Personalizadas',
        'Crea componente personalizado, agrega campo privado text, crea getter y setter, en setter llama repaint()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (452, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Agregar Sugerencia a Componente Personalizado</h2>
<p class="intro">La sugerencia ayuda al usuario. Puedes mostrar información adicional, explicar propósito de componente, mejorar comprensión. Sin sugerencia, usuario puede no entender propósito de componente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setToolTipText(String)</code> — establecer sugerencia</li>
  <li>Mostrar información al pasar mouse</li>
  <li>Mejorar experiencia de usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La sugerencia es necesaria para mejorar experiencia de usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece sugerencia: <code>setToolTipText("Este es componente personalizado");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setToolTipText()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar sugerencias informativas, explicar propósito de componente, usar para ayudar usuario</li>
  <li><strong>⚠️ Evita:</strong> Usar sugerencias demasiado largas</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al pasar mouse, aparecerá sugerencia. Esta es sugerencia emergente con información. Puedes mejorar experiencia de usuario.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (452, 'es', 'Componente Personalizado Maestro: Agrega Sugerencia',
        'Crea componente personalizado, establece sugerencia "Componente personalizado" vía setToolTipText()')
ON CONFLICT (task_id, language_code) DO NOTHING;
