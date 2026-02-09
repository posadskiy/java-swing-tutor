-- Flyway migration V4: Lesson 32
-- This migration contains lesson, tasks, and documentation for lesson 32

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (269, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Mostrar Información al Usuario</h2>
<p class="intro">Los diálogos informan al usuario sobre información importante. "Archivo guardado", "Error de carga", "¿Estás seguro?" — todo esto son diálogos. Sin ellos, el usuario no sabe qué está pasando.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>JOptionPane</code> — ventanas de diálogo</li>
  <li>Método <code>showMessageDialog()</code> — mostrar mensaje</li>
  <li>Tipos de mensaje: información, advertencia, error, pregunta</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los diálogos son necesarios para informar al usuario sobre eventos importantes y estados de la aplicación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Muestra mensaje de información: <code>JOptionPane.showMessageDialog(frame, "¡Archivo guardado exitosamente!", "Información", JOptionPane.INFORMATION_MESSAGE);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>INFORMATION_MESSAGE</code> para información</li>
  <li><strong>✅ Excelente:</strong> <code>WARNING_MESSAGE</code> para advertencias, <code>ERROR_MESSAGE</code> para errores, <code>QUESTION_MESSAGE</code> para preguntas</li>
</ul>
<p><strong>Importante:</strong> Padre: <code>frame</code> o <code>null</code> (se centra en pantalla). Puedes usar HTML en mensaje para formato. El diálogo bloquea ejecución hasta cerrarse (modal).</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá una ventana de diálogo con mensaje. Esta es una ventana con icono (información, advertencia, error) y botón OK. El usuario debe cerrar el diálogo para continuar.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (269, 'es', 'Diálogo de Mensaje: Mostrar Información al Usuario',
        'Muestra ventana de diálogo de información con mensaje "¡Operación completada exitosamente!"')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (270, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Solicitar Confirmación</h2>
<p class="intro">La confirmación protege de errores. Eliminar archivo, salir sin guardar, operaciones peligrosas — todo esto requiere confirmación. Esto previene acciones accidentales.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>showConfirmDialog()</code> — diálogo de confirmación</li>
  <li>Opciones de respuesta: YES, NO, CANCEL</li>
  <li>Manejar resultado del diálogo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La confirmación es necesaria para prevenir acciones accidentales y proteger de errores.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Muestra diálogo de confirmación: <code>int result = JOptionPane.showConfirmDialog(frame, "¿Estás seguro?", "Confirmación", JOptionPane.YES_NO_OPTION);</code></li>
  <li>Maneja resultado: <code>if (result == JOptionPane.YES_OPTION) {<br>
&nbsp;&nbsp;label.setText("Usuario aceptó");<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>YES_NO_OPTION</code> para elección simple</li>
  <li><strong>✅ Excelente:</strong> <code>YES_NO_CANCEL_OPTION</code> para tres opciones, manejar todos los resultados posibles</li>
  <li><strong>⚠️ Evita:</strong> Ignorar resultado — la acción se ejecutará siempre</li>
</ul>
<p><strong>Importante:</strong> Siempre verifica resultado antes de ejecutar acción. Usa para operaciones peligrosas (eliminación, salir sin guardar).</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un diálogo con pregunta y botones. Esta es una ventana con pregunta y botones (Sí/No o Sí/No/Cancelar). El usuario elige opción, y obtienes resultado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (270, 'es', 'Diálogo de Confirmación: Pedir Permiso',
        'Muestra diálogo de confirmación con pregunta "¿Estás seguro?" y maneja resultado')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (271, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Agregar Tecla de Acceso Rápido al Menú</h2>
<p class="intro">Las teclas de acceso rápido aceleran el trabajo. Puedes abrir menú sin mouse, lo cual es conveniente para usuarios experimentados. Sin ellas, tendrás que usar siempre el mouse.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setMnemonic()</code> — establecer mnemónica</li>
  <li>Teclas de acceso rápido para menús</li>
  <li>Mejorar accesibilidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Las teclas de acceso rápido son necesarias para mejorar accesibilidad y acelerar trabajo con la aplicación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece mnemónica: <code>menu.setMnemonic(KeyEvent.VK_F);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMnemonic()</code> para tecla de acceso rápido</li>
  <li><strong>✅ Excelente:</strong> Usar primera letra del nombre del menú, subrayar letra en texto</li>
  <li><strong>⚠️ Evita:</strong> Usar letras raras — el usuario no recordará</li>
</ul>
<p><strong>Importante:</strong> Alt + mnemónica abre menú. La letra se subraya automáticamente. Evitar conflictos con otras teclas de acceso rápido.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>En el nombre del menú, la letra estará subrayada. Puedes presionar Alt+letra para abrir menú.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (271, 'es', 'Menú Maestro: Agregar Tecla de Acceso Rápido', 'Establece mnemónica VK_F mediante setMnemonic()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (272, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Agregar Separador al Menú</h2>
<p class="intro">Los separadores agrupan elementos de menú. Puedes separar comandos relacionados, crear grupos visuales. Sin separadores, todos los elementos estarán en un grupo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>addSeparator()</code> — agregar separador</li>
  <li>Crear separación visual</li>
  <li>Agrupar elementos de menú</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los separadores son necesarios para agrupación visual de elementos de menú y mejorar organización.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega elementos: <code>menu.add(new JMenuItem("Abrir"));</code> y <code>menu.add(new JMenuItem("Guardar"));</code></li>
  <li>Agrega separador: <code>menu.addSeparator();</code></li>
  <li>Agrega más elementos: <code>menu.add(new JMenuItem("Salir"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addSeparator()</code> para separación</li>
  <li><strong>✅ Excelente:</strong> Agrupar comandos relacionados, separar diferentes categorías</li>
  <li><strong>⚠️ Evita:</strong> Demasiados separadores — puede estar sobrecargado</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un separador en el menú. La línea horizontal separará elementos de menú. Puedes crear grupos visuales.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (272, 'es', 'Menú Maestro: Agregar Separador',
        'Agrega dos elementos de menú, agrega separador mediante addSeparator(), agrega otro elemento')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (273, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Agregar Mnemónica al Menú</h2>
<p class="intro">La mnemónica acelera el trabajo. Puedes activar menú mediante Alt+letra, sin usar mouse. Sin mnemónica, tendrás que hacer clic con mouse.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setMnemonic()</code> — establecer mnemónica</li>
  <li>Subrayar letra en texto</li>
  <li>Crear menús accesibles</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La mnemónica es necesaria para mejorar accesibilidad y acelerar trabajo con menús.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece mnemónica: <code>menu.setMnemonic(KeyEvent.VK_F);</code></li>
  <li>Agrega subrayado en texto: <code>menu.setText("Archivo (&F)");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMnemonic()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar KeyEvent.VK_* para teclas, mostrar mnemónica en texto mediante &, usar primera letra de palabra</li>
  <li><strong>⚠️ Evita:</strong> Duplicar mnemónicas</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>En el texto del menú, la letra estará subrayada. Puedes activar menú mediante Alt+letra.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (273, 'es', 'Menú Maestro: Agregar Mnemónica',
        'Establece mnemónica VK_F mediante setMnemonic(), agrega &F en texto del menú')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (277, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Agregar Sugerencia a Elemento de Menú con Casilla</h2>
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
  <li>Establece sugerencia: <code>checkBoxMenuItem.setToolTipText("Mostrar cuadrícula");</code></li>
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
VALUES (277, 'es', 'Elemento de Menú con Casilla Maestro: Agregar Sugerencia',
        'Establece sugerencia "Mostrar cuadrícula" mediante setToolTipText()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (274, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Agregar Separador al Menú (Extendido)</h2>
<p class="intro">El separador crea separación visual. Puedes separar grupos de elementos de menú, mejorar organización. Sin separador, los elementos se mezclarán.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>addSeparator()</code> — agregar separador</li>
  <li>Crear separación visual</li>
  <li>Mejorar organización del menú</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los separadores son necesarios para organización visual de elementos de menú.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Agrega elementos: <code>menu.add(menuItem1);</code> y <code>menu.add(menuItem2);</code></li>
  <li>Agrega separador: <code>menu.addSeparator();</code></li>
  <li>Agrega más elementos: <code>menu.add(menuItem3);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addSeparator()</code> para separación</li>
  <li><strong>✅ Excelente:</strong> Separar grupos de elementos, usar para organización, combinar con otros elementos</li>
  <li><strong>⚠️ Evita:</strong> Demasiados separadores</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un separador entre elementos. Los grupos de elementos estarán visualmente separados.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (274, 'es', 'Menú Maestro: Agregar Separador',
        'Agrega dos elementos de menú, agrega separador mediante addSeparator(), agrega otro elemento')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (275, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Configurar Retraso de Apertura del Menú</h2>
<p class="intro">El retraso determina velocidad de apertura. Puedes configurar qué tan rápido se abrirá el menú al pasar el mouse, mejorar experiencia de usuario. Sin configuración, el retraso será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setDelay()</code> — establecer retraso</li>
  <li>Gestionar velocidad de apertura</li>
  <li>Mejorar experiencia de usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Configurar retraso es necesario para optimizar experiencia de usuario al trabajar con menús.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece retraso: <code>menu.setDelay(200);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setDelay()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar valores razonables, adaptar a necesidades, mejorar experiencia de usuario</li>
  <li><strong>⚠️ Evita:</strong> Retraso demasiado pequeño — puede ser molesto</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El retraso de apertura del menú cambiará. El menú se abrirá con retraso especificado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (275, 'es', 'Menú Maestro: Configurar Retraso', 'Establece retraso 200 mediante setDelay(200)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (276, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Establecer Comando de Acción para Elemento de Menú con Casilla</h2>
<p class="intro">El comando de acción permite identificar elemento de menú. Puedes determinar qué elemento está seleccionado sin verificar fuente. Sin comando, tendrás que verificar fuente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setActionCommand()</code> — establecer comando</li>
  <li>Método <code>getActionCommand()</code> — obtener comando</li>
  <li>Identificar elemento de menú mediante comando</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los comandos de acción son necesarios para identificar elementos de menú en manejadores de eventos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece comando: <code>checkBoxMenuItem.setActionCommand("CHECK");</code></li>
  <li>Obtén comando en manejador: <code>checkBoxMenuItem.addActionListener(e -> {<br>
&nbsp;&nbsp;String cmd = e.getActionCommand();<br>
&nbsp;&nbsp;label.setText("Comando: " + cmd);<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setActionCommand()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar <code>getActionCommand()</code> para obtener, usar comandos claros, usar para identificación</li>
  <li><strong>⚠️ Evita:</strong> Duplicar comandos</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>En el manejador podrás obtener comando. Al seleccionar, puedes determinar comando.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (276, 'es', 'Menú con Casilla Maestro: Establecer Comando de Acción',
        'Establece comando "CHECK" mediante setActionCommand(), obtén comando en ActionListener mediante getActionCommand()')
ON CONFLICT (task_id, language_code) DO NOTHING;
