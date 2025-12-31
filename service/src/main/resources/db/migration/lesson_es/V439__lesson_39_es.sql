-- Flyway migration V4: Lesson 39
-- This migration contains lesson, tasks, and documentation for lesson 39

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (325, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Colocar Componentes en Cuadrícula con GridLayout</h2>
<p class="intro">GridLayout crea cuadrícula ordenada. Calculadora, teclado, tablero de juego — todo esto es conveniente hacer en cuadrícula. Todas las celdas mismo tamaño, se ve profesional.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>GridLayout</code> — administrador de diseño en cuadrícula</li>
  <li>Crear cuadrícula (filas × columnas)</li>
  <li>Colocación uniforme de componentes</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>GridLayout es necesario para crear cuadrícula ordenada con mismas celdas.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece GridLayout: <code>setLayout(new GridLayout(2, 3));</code> // 2 filas, 3 columnas</li>
  <li>Agrega componentes: <code>add(new JButton("1"));</code><br>
<code>add(new JButton("2"));</code><br>
<code>add(new JButton("3"));</code><br>
// y así sucesivamente...</li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Especificar filas y columnas: <code>new GridLayout(filas, columnas)</code></li>
  <li><strong>✅ Excelente:</strong> Con espacios: <code>new GridLayout(2, 3, 5, 5)</code> — espacios 5px, cero filas o columnas — se calcula automáticamente</li>
  <li><strong>⚠️ Evita:</strong> Demasiadas filas/columnas — celdas se volverán pequeñas</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componentes se colocarán en cuadrícula. Esta es tabla ordenada con mismas celdas. Todos los componentes serán mismo tamaño. Esto es perfecto para calculadoras y tableros de juego.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (325, 'es', 'GridLayout Principiante: Colocar Componentes en Cuadrícula',
        'Establece GridLayout 2x3 (2 filas, 3 columnas) y agrega 6 botones')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (328, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Crear Casilla de Verificación en Menú</h2>
<p class="intro">JCheckBoxMenuItem permite habilitar/deshabilitar opciones en menú. Mostrar paneles, habilitar modos, configurar parámetros — todo esto requiere casillas de verificación en menú. Sin ellas, tendrás que crear diálogos separados.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>JCheckBoxMenuItem</code> — casilla de verificación en menú</li>
  <li>Crear casillas de verificación en menú</li>
  <li>Agregar a menú</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>JCheckBoxMenuItem es necesario para habilitar/deshabilitar opciones directamente en menú.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea elemento casilla: <code>JCheckBoxMenuItem item = new JCheckBoxMenuItem("Mostrar panel");</code></li>
  <li>Agrega a menú: <code>menu.add(item);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Nombres claros</li>
  <li><strong>✅ Excelente:</strong> Establecer estado inicial vía <code>setSelected()</code>, agregar ActionListener para manejar</li>
  <li><strong>⚠️ Evita:</strong> Demasiadas casillas de verificación — puede estar sobrecargado</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Casilla de verificación aparecerá en menú. Puedes hacer clic para habilitar/deshabilitar. Marca aparecerá o desaparecerá.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (328, 'es', 'Elemento de Menú Casilla Principiante: Crear Casilla en Menú',
        'Crea JCheckBoxMenuItem con texto "Mostrar panel", agrega a menú')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (326, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Detectar Clic de Ratón</h2>
<p class="intro">Detectar clics permite reaccionar a acciones de usuario. Clic simple — selección, doble clic — apertura. Sin esto, no puedes manejar interacción con ratón.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>mouseClicked()</code> — manejar clic</li>
  <li>Método <code>getClickCount()</code> — conteo de clics</li>
  <li>Manejar clics simples y dobles</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Detectar clics es necesario para manejar interacción con ratón.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Sobrescribe mouseClicked: <code>@Override<br>
public void mouseClicked(MouseEvent e) {<br>
&nbsp;&nbsp;if (e.getClickCount() == 1) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Clic simple!");<br>
&nbsp;&nbsp;} else if (e.getClickCount() == 2) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Doble clic!");<br>
&nbsp;&nbsp;}<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Verificar conteo de clics vía <code>getClickCount()</code></li>
  <li><strong>✅ Excelente:</strong> Manejar clics simples separadamente de dobles, verificar botón ratón: <code>e.getButton() == MouseEvent.BUTTON1</code></li>
  <li><strong>⚠️ Evita:</strong> Manejar todos los clics igual — pérdida de funcionalidad</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al hacer clic, se activará manejador. Puedes determinar clic simple o doble.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (326, 'es', 'Ratón Maestro: Detectar Clic de Ratón',
        'Sobrescribe mouseClicked, verifica conteo de clics, maneja clic simple y doble')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (329, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Manejar Cambio de Estado de JCheckBoxMenuItem</h2>
<p class="intro">Manejar cambios hace elemento casilla interactivo. Puedes actualizar otros componentes, realizar acciones, cambiar modos. Sin esto, casilla será solo para visualización.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Manejar cambio vía ActionListener</li>
  <li>Verificar estado de casilla</li>
  <li>Reaccionar a cambio</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Manejar cambios es necesario para crear elemento de menú casilla interactivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega escuchador: <code>item.addActionListener(e -> {<br>
&nbsp;&nbsp;if (item.isSelected()) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Habilitado!");<br>
&nbsp;&nbsp;} else {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("¡Deshabilitado!");<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>isSelected()</code> para verificar</li>
  <li><strong>✅ Excelente:</strong> Actualizar otros componentes, usar ItemListener para manejo más preciso</li>
  <li><strong>⚠️ Evita:</strong> Ignorar estado — pérdida de funcionalidad</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Cuando cambie estado, se activará manejador. Puedes verificar estado y realizar acciones.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (329, 'es', 'Elemento de Menú Casilla Maestro: Manejar Cambio',
        'Agrega ActionListener, verifica isSelected(), muestra mensaje dependiendo de estado')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (327, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Manejar Arrastre de Ratón</h2>
<p class="intro">Manejar arrastre permite crear elementos interactivos. Arrastrar ventanas, dibujar, mover objetos — todo esto requiere manejar arrastre. Sin esto, no puedes crear interfaz interactiva.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Interfaz <code>MouseMotionListener</code> — manejar movimiento de ratón</li>
  <li>Método <code>mouseDragged()</code> — manejar arrastre</li>
  <li>Rastrear arrastre</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Manejar arrastre es necesario para crear elementos de interfaz interactivos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega MouseMotionListener: <code>component.addMouseMotionListener(new MouseMotionListener() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void mouseDragged(MouseEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;int x = e.getX();<br>
&nbsp;&nbsp;&nbsp;&nbsp;int y = e.getY();<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Arrastrando: " + x + ", " + y);<br>
&nbsp;&nbsp;}<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void mouseMoved(MouseEvent e) {}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>mouseDragged()</code> para arrastre</li>
  <li><strong>✅ Excelente:</strong> Guardar posición inicial en <code>mousePressed()</code>, calcular desplazamiento en <code>mouseDragged()</code>, actualizar posición componente al arrastrar</li>
  <li><strong>⚠️ Evita:</strong> Manejar sin verificar botón presionado — puede ser inesperado</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al arrastrar ratón, se activará manejador. Puedes rastrear movimiento de ratón con botón presionado. Puedes mover componentes, dibujar.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (327, 'es', 'Ratón Maestro: Manejar Arrastre',
        'Agrega MouseMotionListener, sobrescribe mouseDragged(), obtén coordenadas y muéstralas')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (330, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Trabajar con Modelo de Estado de JCheckBoxMenuItem</h2>
<p class="intro">El modelo permite controlar estado. Puedes obtener modelo, cambiarlo programáticamente. Sin modelo, no puedes controlar estado.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getModel()</code> — obtener modelo</li>
  <li>Trabajar con ButtonModel</li>
  <li>Gestión programática de estado</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El modelo es necesario para gestión programática de estado de elemento de menú casilla.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén modelo: <code>ButtonModel model = item.getModel();</code></li>
  <li>Establece estado: <code>model.setSelected(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getModel()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar <code>setSelected()</code> para establecer, usar para gestión programática</li>
  <li><strong>⚠️ Evita:</strong> Cambiar modelo directamente</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Podrás gestionar estado vía modelo. Estado puede ser cambiado programáticamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (330, 'es', 'Elemento de Menú Casilla Maestro: Trabajar con Modelo',
        'Obtén modelo vía getModel(), establece estado true vía setSelected()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (334, 'es', '<div class="lesson-header">
<h2>🎮 Lección 10: Mostrar Menú Emergente</h2>
<p class="intro">Mostrar menú permite mostrarlo. Puedes mostrar menú en posición necesaria, mejorar accesibilidad. Sin mostrar, menú no será visible.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>show()</code> — mostrar menú</li>
  <li>Mostrar menú en posición especificada</li>
  <li>Mejorar experiencia de usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Mostrar menú es necesario para mostrar menú emergente en posición necesaria.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Muestra menú: <code>popupMenu.show(component, 100, 100);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>show()</code> para mostrar</li>
  <li><strong>✅ Excelente:</strong> Usar coordenadas para posición, usar para mejorar accesibilidad, mejorar experiencia de usuario</li>
  <li><strong>⚠️ Evita:</strong> Mostrar fuera de pantalla</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Menú emergente aparecerá en posición especificada. Puedes mejorar accesibilidad.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (334, 'es', 'Menú Emergente Maestro: Mostrar Menú', 'Muestra menú vía show(component, 100, 100)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (332, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Manejar Cambio de Estado de JCheckBoxMenuItem vía ItemListener</h2>
<p class="intro">Manejar estado hace elemento interactivo. Puedes reaccionar a selección, actualizar otros componentes. Sin manejar, selección no tendrá efecto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Manejar cambios vía ItemListener</li>
  <li>Obtener estado</li>
  <li>Reaccionar a cambios</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Manejar estado es necesario para crear elemento de menú interactivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega escuchador: <code>item.addItemListener(e -> {<br>
&nbsp;&nbsp;boolean selected = item.isSelected();<br>
&nbsp;&nbsp;label.setText("Seleccionado: " + selected);<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addItemListener()</code> para manejar</li>
  <li><strong>✅ Excelente:</strong> Usar <code>isSelected()</code> para verificar, usar <code>getStateChange()</code> para cambio, actualizar otros componentes</li>
  <li><strong>⚠️ Evita:</strong> Ignorar estado</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Cuando cambie estado, se activará manejador. Puedes manejar selección y actualizar otros componentes.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (332, 'es', 'Elemento de Menú Casilla Maestro: Manejar Cambio de Estado',
        'Agrega ItemListener, verifica isSelected(), muestra estado')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (331, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Agregar Icono a JCheckBoxMenuItem</h2>
<p class="intro">El icono mejora legibilidad. Puedes mostrar elemento visual, mejorar comprensión de propósito de elemento. Sin icono, elemento será solo con texto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setIcon()</code> — establecer icono</li>
  <li>Crear elementos visualmente estilizados</li>
  <li>Mejorar legibilidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El icono es necesario para mejorar legibilidad y estilo visual de elemento de menú.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece icono: <code>item.setIcon(new ImageIcon("icon.png"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setIcon()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar ImageIcon para cargar, usar para estilo visual, usar iconos claros</li>
  <li><strong>⚠️ Evita:</strong> Iconos demasiado grandes</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Elemento de menú tendrá icono. Elemento tendrá elemento visual.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (331, 'es', 'Elemento de Menú Casilla Maestro: Agregar Icono', 'Establece icono vía setIcon() con ImageIcon')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (333, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Establecer Borde para JPopupMenu</h2>
<p class="intro">El borde mejora apariencia visual. Puedes agregar marco, mejorar diseño. Sin borde, menú estará sin marco.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setBorder()</code> — establecer borde</li>
  <li>Personalizar borde de menú</li>
  <li>Mejorar apariencia visual</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El borde es necesario para mejorar apariencia visual de menú.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea borde: <code>Border border = BorderFactory.createLineBorder(Color.BLACK, 2);</code></li>
  <li>Establece borde: <code>popupMenu.setBorder(border);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setBorder()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar BorderFactory para crear, usar <code>createLineBorder()</code> para línea, mejorar apariencia visual</li>
  <li><strong>⚠️ Evita:</strong> Borde demasiado grueso</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Menú emergente tendrá borde. Puedes mejorar apariencia visual.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (333, 'es', 'Menú Emergente Maestro: Establecer Borde',
        'Crea borde vía BorderFactory.createLineBorder(Color.BLACK, 2), establece vía setBorder()')
ON CONFLICT (task_id, language_code) DO NOTHING;
