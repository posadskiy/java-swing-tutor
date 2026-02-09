-- Flyway migration V4: Lesson 41
-- This migration contains lesson, tasks, and documentation for lesson 41

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (345, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Alinear Componentes en Fila con BoxLayout</h2>
<p class="intro">BoxLayout es perfecto para diseños lineales simples. Barras de herramientas, listas de botones, menús verticales — todo esto requiere BoxLayout. Es más simple que GridBagLayout, pero más flexible que FlowLayout.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>BoxLayout</code> — diseño lineal</li>
  <li>Constantes <code>X_AXIS</code> y <code>Y_AXIS</code> — dirección</li>
  <li>Crear diseño vertical/horizontal</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>BoxLayout es necesario para crear diseños lineales simples.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece administrador: <code>setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));</code></li>
  <li>Agrega componentes: <code>add(button1);<br>
add(button2);<br>
add(button3);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Y_AXIS para diseño vertical</li>
  <li><strong>✅ Excelente:</strong> Usar X_AXIS para diseño horizontal, agregar Box.createGlue() para estiramiento</li>
  <li><strong>⚠️ Evita:</strong> Demasiados componentes — puede no caber</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componentes se alinearán en fila. Vertical u horizontal — como configures.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (345, 'es', 'BoxLayout Principiante: Alinear Componentes en Fila',
        'Establece BoxLayout con Y_AXIS y agrega tres botones')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (346, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Agregar Elemento Estirable en BoxLayout</h2>
<p class="intro">Los elementos estirables hacen diseño flexible. Puedes presionar componentes a bordes, crear espacios entre ellos. Sin esto, componentes estarán colocados apretadamente juntos.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>Box.createGlue()</code> — crear elemento estirable</li>
  <li>Método <code>Box.createRigidArea()</code> — crear espacio fijo</li>
  <li>Crear espacios en BoxLayout</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los elementos estirables son necesarios para crear diseño flexible.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega componente: <code>add(button1);</code></li>
  <li>Agrega elemento estirable: <code>add(Box.createGlue());</code></li>
  <li>Agrega otro componente: <code>add(button2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createGlue()</code> para espacio estirable</li>
  <li><strong>✅ Excelente:</strong> Usar <code>createRigidArea(Dimension)</code> para espacio fijo, usar <code>createHorizontalStrut(int)</code> para espacio horizontal, usar <code>createVerticalStrut(int)</code> para espacio vertical</li>
  <li><strong>⚠️ Evita:</strong> Demasiados espacios — puede ser excesivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Espacio estirable aparecerá entre componentes. Cuando cambie tamaño de ventana, espacio se estirará. Componentes estarán presionados a bordes.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (346, 'es', 'BoxLayout Maestro: Agregar Elemento Estirable',
        'Agrega botón, agrega createGlue(), agrega otro botón')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (348, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Agregar Espacios en GridLayout</h2>
<p class="intro">Los espacios hacen cuadrícula ordenada. Componentes no estarán presionados entre sí, habrá separación visual. Sin espacios, cuadrícula se verá sobrecargada.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setHgap()</code> — espacio horizontal</li>
  <li>Método <code>setVgap()</code> — espacio vertical</li>
  <li>Configurar espacios en cuadrícula</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los espacios son necesarios para crear cuadrícula ordenada con separación visual.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea administrador: <code>GridLayout layout = new GridLayout(2, 3);</code></li>
  <li>Establece espacios: <code>layout.setHgap(10);<br>
layout.setVgap(10);</code></li>
  <li>Establece administrador: <code>setLayout(layout);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setHgap()</code> para espacios horizontales, <code>setVgap()</code> para espacios verticales</li>
  <li><strong>✅ Excelente:</strong> Usar mismos espacios para uniformidad, especificar espacios en constructor</li>
  <li><strong>⚠️ Evita:</strong> Espacios demasiado grandes — puede ser excesivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Espacios aparecerán entre componentes. Componentes no estarán presionados entre sí. Cuadrícula se verá ordenada.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (348, 'es', 'GridLayout Maestro: Agregar Espacios',
        'Crea GridLayout (2,3), establece espacios horizontal y vertical a 10')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (347, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Alinear Componentes en BoxLayout</h2>
<p class="intro">Alinear componentes hace interfaz ordenada. Componentes estarán alineados igual, interfaz se verá profesional. Sin alineación, componentes estarán colocados caóticamente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Métodos <code>setAlignmentX()</code> y <code>setAlignmentY()</code> — alineación</li>
  <li>Constantes de alineación</li>
  <li>Configurar alineación de componentes</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Alinear componentes es necesario para crear interfaz ordenada.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Alinea por X: <code>button.setAlignmentX(Component.CENTER_ALIGNMENT);</code></li>
  <li>Alinea por Y: <code>button.setAlignmentY(Component.CENTER_ALIGNMENT);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> CENTER_ALIGNMENT para centrar</li>
  <li><strong>✅ Excelente:</strong> Usar LEFT_ALIGNMENT para alineación izquierda, usar RIGHT_ALIGNMENT para alineación derecha, usar misma alineación para todos los componentes</li>
  <li><strong>⚠️ Evita:</strong> Diferente alineación para componentes — puede ser desordenado</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componentes estarán alineados. Todos los componentes tendrán misma alineación. Interfaz se verá ordenada.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (347, 'es', 'BoxLayout Maestro: Alinear Componentes',
        'Establece setAlignmentX(CENTER_ALIGNMENT) y setAlignmentY(CENTER_ALIGNMENT) para botón')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (349, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Configurar Filas y Columnas Dinámicas en GridLayout</h2>
<p class="intro">Los tamaños dinámicos hacen cuadrícula adaptativa. Puedes especificar número de filas o columnas, y otro se calculará automáticamente. Sin esto, necesitas especificar ambos tamaños.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Usar 0 para cálculo automático</li>
  <li>Determinación dinámica de tamaño de cuadrícula</li>
  <li>Crear diseños adaptativos</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los tamaños dinámicos son necesarios para crear diseños adaptativos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea con columnas automáticas: <code>GridLayout layout = new GridLayout(3, 0);</code></li>
  <li>O con filas automáticas: <code>GridLayout layout = new GridLayout(0, 4);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> 0 para cálculo automático</li>
  <li><strong>✅ Excelente:</strong> Especificar filas, columnas se calcularán, especificar columnas, filas se calcularán, usar para diseños adaptativos</li>
  <li><strong>⚠️ Evita:</strong> Ambos tamaños 0 — puede ser impredecible</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Cuadrícula será adaptativa. Número de filas o columnas se calculará automáticamente por número de componentes.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (349, 'es', 'GridLayout Maestro: Configurar Filas y Columnas Dinámicas',
        'Crea GridLayout con 3 filas y 0 columnas (cálculo automático)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (352, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Agregar Pegamento en BoxLayout</h2>
<p class="intro">El pegamento estira espacio. Puedes agregar espacio estirable entre componentes, mejorar diseño. Sin pegamento, componentes estarán apretados juntos.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>Box.createHorizontalGlue()</code> — pegamento horizontal</li>
  <li>Método <code>Box.createVerticalGlue()</code> — pegamento vertical</li>
  <li>Estirar espacio</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El pegamento es necesario para crear espacio estirable entre componentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea pegamento: <code>Component glue = Box.createHorizontalGlue();</code></li>
  <li>Agrega pegamento: <code>container.add(glue);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createHorizontalGlue()</code> para horizontal</li>
  <li><strong>✅ Excelente:</strong> Usar <code>createVerticalGlue()</code> para vertical, usar para estiramiento, mejorar diseño</li>
  <li><strong>⚠️ Evita:</strong> Demasiado pegamento</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Espacio estirable aparecerá entre componentes. Puedes mejorar diseño.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (352, 'es', 'BoxLayout Maestro: Agregar Pegamento',
        'Crea pegamento horizontal vía Box.createHorizontalGlue(), agrega a contenedor')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (350, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Habilitar Selección Múltiple en JFileChooser</h2>
<p class="intro">La selección múltiple acelera trabajo. Puedes seleccionar varios archivos a la vez, mejorar rendimiento. Sin selección múltiple, necesitas seleccionar uno por uno.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setMultiSelectionEnabled()</code> — habilitar selección múltiple</li>
  <li>Seleccionar múltiples archivos</li>
  <li>Mejorar funcionalidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La selección múltiple es necesaria para acelerar trabajo con varios archivos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Habilita selección múltiple: <code>fileChooser.setMultiSelectionEnabled(true);</code></li>
  <li>Obtén archivos seleccionados: <code>File[] files = fileChooser.getSelectedFiles();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMultiSelectionEnabled(true)</code> para habilitar</li>
  <li><strong>✅ Excelente:</strong> Usar <code>getSelectedFiles()</code> para obtener, usar para mejorar funcionalidad, mejorar rendimiento</li>
  <li><strong>⚠️ Evita:</strong> Habilitar sin necesidad</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Podrás seleccionar múltiples archivos. Puedes seleccionar varios archivos simultáneamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (350, 'es', 'Selección de Archivos Maestro: Habilitar Selección Múltiple',
        'Habilita selección múltiple vía setMultiSelectionEnabled(true), obtén archivos vía getSelectedFiles()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (353, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Agregar Separador en BoxLayout</h2>
<p class="intro">El separador crea distancia fija. Puedes agregar espacio fijo entre componentes, mejorar diseño. Sin separador, componentes estarán apretados juntos.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>Box.createHorizontalStrut()</code> — separador horizontal</li>
  <li>Método <code>Box.createVerticalStrut()</code> — separador vertical</li>
  <li>Distancia fija entre componentes</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El separador es necesario para crear distancia fija entre componentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea separador: <code>Component strut = Box.createHorizontalStrut(20);</code></li>
  <li>Agrega separador: <code>container.add(strut);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createHorizontalStrut()</code> para horizontal</li>
  <li><strong>✅ Excelente:</strong> Usar <code>createVerticalStrut()</code> para vertical, usar para distancia fija, mejorar diseño</li>
  <li><strong>⚠️ Evita:</strong> Separadores demasiado grandes</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Distancia fija aparecerá entre componentes. Puedes mejorar diseño.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (353, 'es', 'BoxLayout Maestro: Agregar Separador',
        'Crea separador horizontal 20 vía Box.createHorizontalStrut(20), agrega a contenedor')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (351, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Agregar Filtro de Archivos en JFileChooser</h2>
<p class="intro">El filtro de archivos mejora selección. Puedes mostrar solo tipos de archivo necesarios, mejorar experiencia de usuario. Sin filtro, todos los archivos serán mostrados.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>FileNameExtensionFilter</code> — filtro de extensiones</li>
  <li>Método <code>addChoosableFileFilter()</code> — agregar filtro</li>
  <li>Filtrar archivos por tipo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El filtro de archivos es necesario para mejorar selección de tipos de archivo necesarios.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea filtro: <code>FileNameExtensionFilter filter = new FileNameExtensionFilter("Imágenes", "jpg", "png", "gif");</code></li>
  <li>Agrega filtro: <code>fileChooser.addChoosableFileFilter(filter);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> FileNameExtensionFilter para filtro</li>
  <li><strong>✅ Excelente:</strong> Usar <code>addChoosableFileFilter()</code> para agregar, usar para filtrar, mejorar experiencia de usuario</li>
  <li><strong>⚠️ Evita:</strong> Filtros demasiado estrictos</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Filtro estará en diálogo de selección de archivos. Puedes seleccionar tipo de archivo para visualización.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (351, 'es', 'Selección de Archivos Maestro: Agregar Filtro de Archivos',
        'Crea FileNameExtensionFilter para "jpg", "png", agrega vía addChoosableFileFilter()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (355, 'es', '<div class="lesson-header">
<h2>🎮 Lección 11: Agregar Área Rígida en BoxLayout</h2>
<p class="intro">El área rígida crea espacio fijo. Puedes agregar área fija entre componentes, mejorar diseño. Sin área, componentes estarán apretados juntos.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>Box.createRigidArea()</code> — crear área rígida</li>
  <li>Área fija entre componentes</li>
  <li>Mejorar diseño</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El área rígida es necesaria para crear espacio fijo entre componentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea área: <code>Component area = Box.createRigidArea(new Dimension(20, 20));</code></li>
  <li>Agrega área: <code>container.add(area);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createRigidArea()</code> para crear</li>
  <li><strong>✅ Excelente:</strong> Usar Dimension para tamaño, usar para espacio fijo, mejorar diseño</li>
  <li><strong>⚠️ Evita:</strong> Áreas demasiado grandes</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Área fija aparecerá entre componentes. Puedes mejorar diseño.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (355, 'es', 'BoxLayout Maestro: Agregar Área Rígida',
        'Crea área rígida 20x20 vía Box.createRigidArea(new Dimension(20, 20)), agrega a contenedor')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (354, 'es', '<div class="lesson-header">
<h2>🎮 Lección 10: Establecer Directorio Actual en JFileChooser</h2>
<p class="intro">El directorio actual determina posición inicial. Puedes establecer directorio inicial, mejorar navegación. Sin establecer, directorio será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setCurrentDirectory()</code> — establecer directorio actual</li>
  <li>Gestionar directorio inicial</li>
  <li>Mejorar experiencia de usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Establecer directorio actual es necesario para mejorar navegación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea archivo: <code>File dir = new File("/path/to/directory");</code></li>
  <li>Establece directorio: <code>fileChooser.setCurrentDirectory(dir);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setCurrentDirectory()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar File para directorio, usar para mejorar navegación, mejorar experiencia de usuario</li>
  <li><strong>⚠️ Evita:</strong> Usar directorio inexistente</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Diálogo se abrirá en directorio especificado. Puedes mejorar navegación.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (354, 'es', 'Selección de Archivos Maestro: Establecer Directorio Actual',
        'Crea File para directorio, establece vía setCurrentDirectory()')
ON CONFLICT (task_id, language_code) DO NOTHING;
