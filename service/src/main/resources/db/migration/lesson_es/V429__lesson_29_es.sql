-- Flyway migration V4: Lesson 29
-- This migration contains lesson, tasks, and documentation for lesson 29

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

-- Task 1: Creating JPopupMenu
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (238, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear Menú Contextual</h2>
<p class="intro">Los menús emergentes proporcionan acceso rápido a funciones. Copiar, pegar, eliminar, propiedades — todo esto es conveniente en menú contextual. Sin él, necesitas buscar funciones en el menú principal.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>JPopupMenu</code> — menú emergente</li>
  <li>Crear menú contextual</li>
  <li>Mostrar menú en posición específica</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los menús contextuales son necesarios para acceso rápido a funciones según el contexto.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea menú emergente: <code>JPopupMenu popup = new JPopupMenu();</code></li>
  <li>Agrega elementos de menú: <code>popup.add(new JMenuItem("Copiar"));</code> y <code>popup.add(new JMenuItem("Pegar"));</code></li>
  <li>Muestra menú: <code>popup.show(component, x, y);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Para acciones contextuales</li>
  <li><strong>✅ Excelente:</strong> Mostrar al hacer clic derecho, usar coordenadas del cursor, agregar separadores para agrupar</li>
  <li><strong>⚠️ Evita:</strong> Demasiados elementos — el menú estará sobrecargado</li>
</ul>
<p><strong>Importante:</strong> Usar MouseListener para mostrar al hacer clic derecho.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un menú emergente. El menú estará en la posición especificada. Puedes seleccionar elemento del menú.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (238, 'es', 'Menú Emergente Principiante: Crear Menú Contextual',
        'Crea JPopupMenu, agrega dos elementos de menú ("Copiar", "Pegar"), muestra menú mediante show()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 2: Menu Items
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (239, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Agregar Varios Elementos al Menú</h2>
<p class="intro">Varios elementos hacen el menú funcional. Puedes agregar elementos regulares, casillas, botones de radio. Sin variedad, el menú será limitado.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Agregar varios tipos de elementos</li>
  <li>JMenuItem, JCheckBoxMenuItem, JRadioButtonMenuItem</li>
  <li>Separadores para agrupar</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La variedad de tipos de elementos permite crear menús más funcionales y convenientes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega elemento regular: <code>popup.add(new JMenuItem("Copiar"));</code></li>
  <li>Agrega separador: <code>popup.addSeparator();</code></li>
  <li>Agrega casilla: <code>popup.add(new JCheckBoxMenuItem("Mostrar panel"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Diferentes tipos de elementos</li>
  <li><strong>✅ Excelente:</strong> Agrupar elementos relacionados con separadores, usar JCheckBoxMenuItem para opciones, usar JRadioButtonMenuItem para selección</li>
  <li><strong>⚠️ Evita:</strong> Demasiados elementos — el menú será largo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerán varios elementos en el menú. Puedes agregar elementos regulares, casillas, separadores.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (239, 'es', 'Menú Emergente Maestro: Agregar Elementos de Menú',
        'Crea JPopupMenu, agrega JMenuItem, separador y JCheckBoxMenuItem')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 3: Show Location
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (240, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Mostrar Menú en Posición Necesaria</h2>
<p class="intro">El posicionamiento hace el menú conveniente. El menú aparece donde está el cursor, o en lugar necesario. Sin posicionamiento adecuado, el menú puede aparecer no donde se espera.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>show(Component, int x, int y)</code> — mostrar en posición</li>
  <li>Usar coordenadas del cursor</li>
  <li>Mostrar relativo al componente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El posicionamiento adecuado es necesario para la conveniencia de usar menú contextual.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén coordenadas del cursor: <code>int x = e.getX();</code> y <code>int y = e.getY();</code></li>
  <li>Muestra menú: <code>popup.show(component, x, y);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Coordenadas del cursor</li>
  <li><strong>✅ Excelente:</strong> Mostrar al hacer clic derecho, usar getX() y getY() de MouseEvent, mostrar relativo al componente</li>
  <li><strong>⚠️ Evita:</strong> Mostrar en posición fija — puede ser inconveniente</li>
</ul>
<p><strong>Importante:</strong> Coordenadas relativas al componente. El menú se posiciona automáticamente.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El menú aparecerá en la posición del cursor. El menú estará donde fue el clic.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (240, 'es', 'Menú Emergente Maestro: Mostrar Menú en Posición Necesaria',
        'Crea JPopupMenu, agrega MouseListener, al hacer clic derecho muestra menú en posición del cursor mediante show()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 4: Invoker
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (241, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Obtener Origen del Menú</h2>
<p class="intro">El origen determina el contexto. Puedes averiguar qué componente invocó el menú, y adaptar elementos del menú. Sin origen, no puedes determinar el contexto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getInvoker()</code> — obtener origen</li>
  <li>Componente que invocó el menú</li>
  <li>Usar origen para contexto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Obtener origen es necesario para adaptar el menú según el contexto.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén origen: <code>Component invoker = popup.getInvoker();</code></li>
  <li>Usa origen: <code>if (invoker instanceof JPanel) {<br>
&nbsp;&nbsp;// Adapta menú para panel<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getInvoker()</code> para obtener origen</li>
  <li><strong>✅ Excelente:</strong> Adaptar menú según origen, usar para acciones contextuales, verificar tipo de origen</li>
  <li><strong>⚠️ Evita:</strong> Ignorar origen — el menú será igual en todas partes</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Puedes obtener componente que invocó el menú. Puedes adaptar el menú según el origen.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (241, 'es', 'Menú Emergente Maestro: Averiguar Origen del Menú',
        'Crea JPopupMenu, muéstralo, obtén origen mediante getInvoker() y muestra tipo en consola')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 5: Border
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (242, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Agregar Borde al Menú</h2>
<p class="intro">El borde crea separación visual. Puedes resaltar el menú, crear marco, mejorar legibilidad. Sin borde, el menú puede mezclarse con el fondo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setBorder(Border)</code> — establecer borde</li>
  <li>Crear separación visual</li>
  <li>Mejorar apariencia</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El borde mejora la percepción visual y la legibilidad del menú.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea borde: <code>Border border = BorderFactory.createLineBorder(Color.GRAY);</code></li>
  <li>Establece borde: <code>popup.setBorder(border);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> BorderFactory para crear</li>
  <li><strong>✅ Excelente:</strong> Usar <code>createLineBorder()</code> para línea, usar <code>createRaisedBevelBorder()</code> para elevado, usar para separación visual</li>
  <li><strong>⚠️ Evita:</strong> Borde demasiado grueso — puede ser excesivo</li>
</ul>
<p><strong>Importante:</strong> Haz el borde delgado.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El menú tendrá un borde. El menú estará resaltado con marco.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (242, 'es', 'Menú Emergente Maestro: Agregar Borde',
        'Crea JPopupMenu, crea borde mediante BorderFactory.createLineBorder(), establece mediante setBorder()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 6: Listeners
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (243, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Rastrear Eventos del Menú</h2>
<p class="intro">Los oyentes permiten reaccionar a eventos. Puedes rastrear cuándo el menú se muestra o cierra, realizar acciones. Sin oyentes, no puedes rastrear eventos.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Oyente <code>PopupMenuListener</code> — rastrear eventos del menú</li>
  <li>Eventos: mostrar, cancelar, cerrar</li>
  <li>Reaccionar a eventos del menú</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Rastrear eventos es necesario para reaccionar a acciones del usuario con el menú.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega oyente: <code>popup.addPopupMenuListener(new PopupMenuListener() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void popupMenuWillBecomeVisible(PopupMenuEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("El menú será mostrado");<br>
&nbsp;&nbsp;}<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void popupMenuWillBecomeInvisible(PopupMenuEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("El menú será ocultado");<br>
&nbsp;&nbsp;}<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void popupMenuCanceled(PopupMenuEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Menú cancelado");<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> PopupMenuListener para rastrear</li>
  <li><strong>✅ Excelente:</strong> Reaccionar a mostrar menú, reaccionar a cerrar menú, reaccionar a cancelar menú</li>
  <li><strong>⚠️ Evita:</strong> Oyente sin acciones — inútil</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al mostrar o cerrar el menú, se realizará una acción. Si usaste JLabel, aparecerán mensajes en pantalla.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (243, 'es', 'Menú Emergente Maestro: Rastrear Eventos del Menú',
        'Crea JPopupMenu, agrega PopupMenuListener, muestra mensaje en consola cuando el menú se muestra')
ON CONFLICT (task_id, language_code) DO NOTHING;
