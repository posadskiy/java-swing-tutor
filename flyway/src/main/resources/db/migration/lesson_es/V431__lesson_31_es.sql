-- Flyway migration V4: Lesson 31
-- This migration contains lesson, tasks, and documentation for lesson 31

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (253, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear Estructura Jerárquica</h2>
<p class="intro">Los árboles muestran datos jerárquicos. Sistema de archivos, estructura de organización, categorías de productos — todo esto es conveniente mostrar en árbol. Los árboles hacen las estructuras complejas comprensibles.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>JTree</code> — árbol para datos jerárquicos</li>
  <li>Crear árbol con nodos</li>
  <li>Mostrar estructura jerárquica</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los árboles son necesarios para mostrar datos jerárquicos en formato conveniente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea nodo raíz: <code>DefaultMutableTreeNode root = new DefaultMutableTreeNode("Raíz");</code></li>
  <li>Agrega nodos hijos: <code>root.add(new DefaultMutableTreeNode("Nodo 1"));</code> y <code>root.add(new DefaultMutableTreeNode("Nodo 2"));</code></li>
  <li>Crea árbol: <code>JTree tree = new JTree(root);</code></li>
  <li>Envuelve en JScrollPane y agrega: <code>JScrollPane scrollPane = new JScrollPane(tree);</code> y <code>add(scrollPane);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> DefaultMutableTreeNode para nodos</li>
  <li><strong>✅ Excelente:</strong> Envolver en JScrollPane para desplazamiento, crear jerarquía multinivel</li>
  <li><strong>⚠️ Evita:</strong> Sin JScrollPane — los árboles grandes no se desplazan</li>
</ul>
<p><strong>Importante:</strong> Siempre envuelve en JScrollPane para desplazamiento. Los nodos se pueden expandir/contraer haciendo clic.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un árbol con nodos. Esta es una estructura jerárquica con nodo raíz e hijos. Puedes expandir nodos para ver contenido.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (253, 'es', 'Árbol Principiante: Crear Estructura Jerárquica',
        'Crea árbol con nodo raíz "Raíz" y dos nodos hijos, envuelve en JScrollPane y agrega al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (254, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Configurar Ancho de Columnas</h2>
<p class="intro">Configurar ancho de columnas hace la tabla conveniente. Los textos largos no se cortarán, las columnas cortas no ocuparán espacio extra. Sin configuración, la tabla puede verse desordenada.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setPreferredWidth()</code> — establecer ancho de columna</li>
  <li>Clase <code>TableColumn</code> — columna de tabla</li>
  <li>Configurar tamaños de columnas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Configurar ancho de columnas es necesario para mejorar legibilidad y apariencia de la tabla.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén modelo de columnas: <code>TableColumnModel columnModel = table.getColumnModel();</code></li>
  <li>Obtén columna: <code>TableColumn column = columnModel.getColumn(0);</code></li>
  <li>Establece ancho: <code>column.setPreferredWidth(150);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setPreferredWidth()</code> para ancho preferido</li>
  <li><strong>✅ Excelente:</strong> Usar <code>setMinWidth()</code> y <code>setMaxWidth()</code> para restricciones, configurar ancho para todas las columnas</li>
  <li><strong>⚠️ Evita:</strong> Columnas demasiado estrechas — el texto se cortará</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Las columnas de la tabla serán del ancho necesario. Los textos largos serán completamente visibles, las columnas cortas no ocuparán espacio extra.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (254, 'es', 'Tabla Maestro: Configurar Ancho de Columnas',
        'Obtén modelo de columnas, obtén primera columna, establece ancho preferido 150')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (255, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Expandir y Contraer Nodos</h2>
<p class="intro">Gestionar expansión de nodos hace el árbol conveniente. Puedes abrir automáticamente las ramas necesarias, ocultar las innecesarias. Sin esto, el usuario tendrá que abrir manualmente cada nodo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>expandPath()</code> — expandir ruta</li>
  <li>Método <code>collapsePath()</code> — contraer ruta</li>
  <li>Clase <code>TreePath</code> — ruta al nodo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Gestionar expansión es necesario para navegación conveniente del árbol.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén ruta al nodo: <code>TreePath path = new TreePath(node.getPath());</code></li>
  <li>Expande ruta: <code>tree.expandPath(path);</code></li>
  <li>O contrae ruta: <code>tree.collapsePath(path);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>expandPath()</code> para expandir</li>
  <li><strong>✅ Excelente:</strong> Usar <code>expandRow()</code> para expandir por índice de fila, usar <code>expandAll()</code> para expandir todos los nodos</li>
  <li><strong>⚠️ Evita:</strong> Expandir todos los nodos a la vez — puede ser lento</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Los nodos del árbol se expandirán y contraerán. Puedes gestionar programáticamente la visibilidad de los nodos.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (255, 'es', 'Árbol Maestro: Expandir y Contraer Nodos', 'Obtén ruta al nodo, expande ruta en el árbol')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (256, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Habilitar Edición de Celdas</h2>
<p class="intro">La edición de celdas hace la tabla interactiva. Puedes cambiar datos directamente en la tabla, sin abrir formularios separados. Sin esto, tendrás que crear diálogos separados para editar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>isCellEditable()</code> — permitir edición</li>
  <li>Clase <code>DefaultTableModel</code> — modelo de tabla</li>
  <li>Habilitar edición de celdas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La edición de celdas es necesaria para crear tablas interactivas con capacidad de cambiar datos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea modelo: <code>DefaultTableModel model = new DefaultTableModel(data, columns) {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public boolean isCellEditable(int row, int column) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;return true;<br>
&nbsp;&nbsp;}<br>
};</code></li>
  <li>Establece modelo: <code>table.setModel(model);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Sobrescribir <code>isCellEditable()</code> en el modelo</li>
  <li><strong>✅ Excelente:</strong> Permitir edición solo para columnas específicas, agregar validación al editar</li>
  <li><strong>⚠️ Evita:</strong> Permitir edición de todas las celdas — puede ser inseguro</li>
</ul>
<p><strong>Importante:</strong> Puedes usar diferentes editores para diferentes tipos de datos. Agregar TableModelListener para rastrear cambios.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Las celdas de la tabla se podrán editar. Doble clic en celda abrirá el editor. Puedes cambiar valores directamente en la tabla.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (256, 'es', 'Tabla Maestro: Habilitar Edición de Celdas',
        'Crea DefaultTableModel, sobrescribe isCellEditable() para devolver true, establece modelo a la tabla')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (257, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Manejar Selección de Nodos</h2>
<p class="intro">Manejar selección de nodos hace el árbol interactivo. Puedes mostrar detalles del nodo seleccionado, realizar acciones, actualizar otros componentes. Sin esto, el árbol será solo para visualizar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Interfaz <code>TreeSelectionListener</code> — manejar selección</li>
  <li>Obtener nodo seleccionado</li>
  <li>Manejar selección de nodos</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Manejar selección es necesario para crear árboles interactivos con reacción a acciones del usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega oyente: <code>tree.addTreeSelectionListener(e -> {<br>
&nbsp;&nbsp;TreePath path = e.getNewLeadSelectionPath();<br>
&nbsp;&nbsp;if (path != null) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;DefaultMutableTreeNode node = (DefaultMutableTreeNode) path.getLastPathComponent();<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Seleccionado: " + node.getUserObject());<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Verificar path para null antes de usar</li>
  <li><strong>✅ Excelente:</strong> Usar <code>getLastPathComponent()</code> para obtener nodo, manejar selección múltiple</li>
  <li><strong>⚠️ Evita:</strong> Ignorar null — puede ser error</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al seleccionar nodo, se activará el manejador. Puedes obtener el nodo seleccionado y realizar acciones.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (257, 'es', 'Árbol Maestro: Manejar Selección de Nodos',
        'Agrega TreeSelectionListener, obtén ruta del nodo seleccionado, obtén nodo y muestra su objeto')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (258, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Configurar Selección de Filas</h2>
<p class="intro">El modo de selección determina cuántas filas se pueden seleccionar. Selección única para detalles, múltiple para operaciones — todo esto requiere configurar modo. Sin esto, solo estará disponible selección única.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setSelectionMode()</code> — modo de selección</li>
  <li>Constantes de modo de selección</li>
  <li>Configurar selección de filas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Configurar modo de selección es necesario para controlar comportamiento de la tabla al seleccionar filas.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén modelo de selección: <code>ListSelectionModel selectionModel = table.getSelectionModel();</code></li>
  <li>Establece modo: <code>selectionModel.setSelectionMode(ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> SINGLE_SELECTION para única</li>
  <li><strong>✅ Excelente:</strong> Usar MULTIPLE_INTERVAL_SELECTION para múltiple, usar SINGLE_INTERVAL_SELECTION para rango</li>
  <li><strong>⚠️ Evita:</strong> Selección múltiple donde se necesita única</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Puedes seleccionar múltiples filas. Con selección múltiple, puedes seleccionar varias filas simultáneamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (258, 'es', 'Tabla Maestro: Configurar Selección de Filas',
        'Obtén modelo de selección mediante getSelectionModel(), establece MULTIPLE_INTERVAL_SELECTION')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (259, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Configurar Visualización de Nodos</h2>
<p class="intro">El renderizador personalizado permite cambiar apariencia de nodos. Puedes agregar iconos, colores, formato. Sin esto, todos los nodos se mostrarán igual.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Interfaz <code>TreeCellRenderer</code> — renderizador de nodos</li>
  <li>Método <code>setCellRenderer()</code> — establecer renderizador</li>
  <li>Crear visualización personalizada</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El renderizador personalizado es necesario para mejorar representación visual de nodos del árbol.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea renderizador: <code>tree.setCellRenderer(new DefaultTreeCellRenderer() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public Component getTreeCellRendererComponent(...) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;Component c = super.getTreeCellRendererComponent(...);<br>
&nbsp;&nbsp;&nbsp;&nbsp;c.setForeground(Color.BLUE);<br>
&nbsp;&nbsp;&nbsp;&nbsp;return c;<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Extender DefaultTreeCellRenderer</li>
  <li><strong>✅ Excelente:</strong> Configurar color, fuente, iconos, formato condicional según nodo</li>
  <li><strong>⚠️ Evita:</strong> Formato demasiado complejo — puede ser lento</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Los nodos se mostrarán con formato personalizado. Puedes agregar colores, iconos, cambiar fuente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (259, 'es', 'Árbol Maestro: Configurar Visualización de Nodos',
        'Crea DefaultTreeCellRenderer, sobrescribe getTreeCellRendererComponent(), establece color de texto azul, establece renderizador')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (266, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Agregar Acelerador a Elemento de Menú</h2>
<p class="intro">El acelerador acelera el acceso. Puedes asignar tecla de acceso rápido para elemento de menú, mejorar rendimiento. Sin acelerador, necesitas usar el menú.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setAccelerator()</code> — establecer acelerador</li>
  <li>Teclas de acceso rápido para elementos de menú</li>
  <li>Mejorar accesibilidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los aceleradores son necesarios para acceso rápido a funciones mediante teclas de acceso rápido.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea acelerador: <code>KeyStroke keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_S, InputEvent.CTRL_DOWN_MASK);</code></li>
  <li>Establece acelerador: <code>menuItem.setAccelerator(keyStroke);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setAccelerator()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar KeyStroke para crear, usar combinaciones estándar, mejorar accesibilidad</li>
  <li><strong>⚠️ Evita:</strong> Duplicar aceleradores</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El acelerador aparecerá junto al elemento de menú. Puedes usar tecla de acceso rápido para acceso rápido.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (266, 'es', 'Elemento de Menú Maestro: Agregar Acelerador',
        'Crea KeyStroke para Ctrl+S, establece mediante setAccelerator()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (260, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Configurar Ancho de Columnas (Extendido)</h2>
<p class="intro">El ancho de columnas determina legibilidad. Puedes establecer ancho necesario, mejorar visualización. Sin configuración, las columnas serán ancho estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setPreferredWidth()</code> — establecer ancho de columna</li>
  <li>Método <code>setAutoResizeMode()</code> — modo de cambio de tamaño</li>
  <li>Configurar tamaños de columnas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Configurar ancho de columnas es necesario para mejorar legibilidad de la tabla.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén modelo de columnas: <code>TableColumnModel columnModel = table.getColumnModel();</code></li>
  <li>Establece ancho: <code>TableColumn column = columnModel.getColumn(0);</code> y <code>column.setPreferredWidth(150);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getColumnModel()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar <code>setPreferredWidth()</code> para ancho, usar <code>setMinWidth()</code> y <code>setMaxWidth()</code>, adaptar al contenido</li>
  <li><strong>⚠️ Evita:</strong> Columnas demasiado estrechas</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Las columnas serán del ancho necesario. La tabla se verá ordenada.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (260, 'es', 'Tabla Maestro: Configurar Ancho de Columnas',
        'Obtén modelo de columnas, obtén columna 0, establece ancho 150 mediante setPreferredWidth()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (267, 'es', '<div class="lesson-header">
<h2>🎮 Lección 10: Establecer Mnemónica en Elemento de Menú</h2>
<p class="intro">La mnemónica mejora la accesibilidad. Puedes asignar tecla de acceso rápido para elemento de menú, mejorar navegación. Sin mnemónica, necesitas usar el mouse.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setMnemonic()</code> — establecer mnemónica</li>
  <li>Teclas de acceso rápido para elementos de menú</li>
  <li>Mejorar accesibilidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Las mnemónicas son necesarias para mejorar accesibilidad y navegación mediante teclado.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece mnemónica: <code>menuItem.setMnemonic(KeyEvent.VK_S);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMnemonic()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar KeyEvent.VK_* para teclas, usar para mejorar accesibilidad, mejorar navegación</li>
  <li><strong>⚠️ Evita:</strong> Duplicar mnemónicas</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>En el texto del elemento de menú, la letra mnemónica estará subrayada. Al presionar Alt+tecla, el elemento se activa.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (267, 'es', 'Elemento de Menú Maestro: Establecer Mnemónica', 'Establece mnemónica VK_S mediante setMnemonic()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (262, 'es', '<div class="lesson-header">
<h2>🎮 Lección 11: Configurar Altura de Filas</h2>
<p class="intro">La altura de filas determina legibilidad. Puedes establecer altura necesaria, mejorar visualización. Sin configuración, la altura será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setRowHeight()</code> — establecer altura</li>
  <li>Crear filas uniformes</li>
  <li>Mejorar legibilidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Configurar altura de filas es necesario para mejorar legibilidad de la tabla.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece altura: <code>table.setRowHeight(30);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setRowHeight()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar valores razonables, adaptar al contenido, usar para uniformidad</li>
  <li><strong>⚠️ Evita:</strong> Altura demasiado pequeña — puede ser ilegible</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Las filas serán de la altura necesaria. La tabla se verá ordenada.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (262, 'es', 'Tabla Maestro: Configurar Altura de Filas',
        'Establece altura de filas 30 mediante setRowHeight(30)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (268, 'es', '<div class="lesson-header">
<h2>🎮 Lección 12: Agregar Sugerencia a Elemento de Menú</h2>
<p class="intro">La sugerencia mejora la informatividad. Puedes agregar descripción del elemento de menú, mejorar comprensión. Sin sugerencia, el usuario puede no entender el propósito.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setToolTipText()</code> — establecer sugerencia</li>
  <li>Mejorar informatividad</li>
  <li>Crear interfaz comprensible</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Las sugerencias son necesarias para mejorar informatividad y comprensión de propósitos de elementos de interfaz.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece sugerencia: <code>menuItem.setToolTipText("Guardar documento");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setToolTipText()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar textos claros, usar para mejorar informatividad, mejorar comprensión</li>
  <li><strong>⚠️ Evita:</strong> Sugerencias demasiado largas</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al pasar el mouse, aparecerá una sugerencia. Puedes mejorar la informatividad.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (268, 'es', 'Elemento de Menú Maestro: Agregar Sugerencia',
        'Establece sugerencia "Guardar documento" mediante setToolTipText()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (261, 'es', '<div class="lesson-header">
<h2>🎮 Lección 13: Expandir Ruta en Árbol</h2>
<p class="intro">Expandir ruta muestra nodos. Puedes expandir programáticamente los nodos necesarios, mostrar estructura. Sin expansión, los nodos estarán contraídos.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>TreePath</code> — ruta al nodo</li>
  <li>Método <code>expandPath()</code> — expandir ruta</li>
  <li>Navegación del árbol</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Expandir ruta es necesario para gestión programática de visibilidad de nodos del árbol.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén ruta: <code>TreePath path = tree.getPathForRow(0);</code></li>
  <li>Expande ruta: <code>tree.expandPath(path);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>expandPath()</code> para expandir</li>
  <li><strong>✅ Excelente:</strong> Usar <code>getPathForRow()</code> para obtener ruta, usar <code>collapsePath()</code> para contraer, usar <code>expandRow()</code> para expandir fila</li>
  <li><strong>⚠️ Evita:</strong> Expandir todos los nodos — puede ser lento</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Los nodos se expandirán. Puedes ver nodos hijos.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (261, 'es', 'Árbol Maestro: Expandir Ruta',
        'Obtén ruta mediante getPathForRow(0), expande mediante expandPath()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (264, 'es', '<div class="lesson-header">
<h2>🎮 Lección 14: Configurar Cambio Automático de Tamaño</h2>
<p class="intro">El modo de cambio de tamaño determina comportamiento. Puedes configurar cómo cambiarán las columnas cuando cambie el tamaño de la ventana. Sin configuración, se usará modo estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setAutoResizeMode()</code> — establecer modo</li>
  <li>Constantes de modo (OFF, ALL_COLUMNS, NEXT_COLUMN, SUBSEQUENT_COLUMNS, LAST_COLUMN)</li>
  <li>Gestionar cambio de tamaño de columnas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Configurar modo de cambio de tamaño es necesario para controlar comportamiento de la tabla cuando cambia el tamaño de la ventana.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece modo: <code>table.setAutoResizeMode(JTable.AUTO_RESIZE_ALL_COLUMNS);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setAutoResizeMode()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar AUTO_RESIZE_ALL_COLUMNS para todas, usar AUTO_RESIZE_OFF para deshabilitar, usar AUTO_RESIZE_LAST_COLUMN para última</li>
  <li><strong>⚠️ Evita:</strong> Modo incorrecto — puede ser inconveniente</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El modo de cambio de tamaño estará configurado. Las columnas cambiarán según el modo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (264, 'es', 'Tabla Maestro: Configurar Cambio Automático de Tamaño',
        'Establece modo AUTO_RESIZE_ALL_COLUMNS mediante setAutoResizeMode()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (263, 'es', '<div class="lesson-header">
<h2>🎮 Lección 15: Contraer Ruta en Árbol</h2>
<p class="intro">Contraer ruta oculta nodos. Puedes ocultar nodos hijos, simplificar estructura. Sin contraer, todos los nodos serán visibles.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>collapsePath()</code> — contraer ruta</li>
  <li>Ocultar nodos hijos</li>
  <li>Mejorar navegación</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Contraer ruta es necesario para simplificar estructura del árbol y mejorar navegación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén ruta: <code>TreePath path = tree.getPathForRow(0);</code></li>
  <li>Contrae ruta: <code>tree.collapsePath(path);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>collapsePath()</code> para contraer</li>
  <li><strong>✅ Excelente:</strong> Usar <code>getPathForRow()</code> para obtener ruta, usar <code>collapseRow()</code> para contraer fila, usar para simplificar estructura</li>
  <li><strong>⚠️ Evita:</strong> Contraer todos los nodos — puede ser inconveniente</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Los nodos se contraerán. Los nodos hijos estarán ocultos. Puedes simplificar la estructura.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (263, 'es', 'Árbol Maestro: Contraer Ruta',
        'Obtén ruta mediante getPathForRow(0), contrae mediante collapsePath()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (265, 'es', '<div class="lesson-header">
<h2>🎮 Lección 16: Gestionar Visibilidad de Raíz</h2>
<p class="intro">La visibilidad de raíz determina estructura. Puedes mostrar u ocultar nodo raíz, mejorar representación del árbol. Sin configuración, la raíz será visible.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setRootVisible()</code> — mostrar raíz</li>
  <li>Gestionar visibilidad del nodo raíz</li>
  <li>Mejorar estructura del árbol</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Gestionar visibilidad de raíz es necesario para mejorar representación de estructura del árbol.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Muestra raíz: <code>tree.setRootVisible(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setRootVisible(true)</code> para mostrar</li>
  <li><strong>✅ Excelente:</strong> Usar <code>setRootVisible(false)</code> para ocultar, usar para mejorar estructura, adaptar a necesidades</li>
  <li><strong>⚠️ Evita:</strong> Ocultar raíz sin necesidad</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La raíz será visible u oculta. Puedes gestionar visibilidad del nodo raíz.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (265, 'es', 'Árbol Maestro: Mostrar Raíz', 'Muestra raíz mediante setRootVisible(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
