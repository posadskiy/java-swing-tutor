-- Flyway migration V4: Lesson 4
-- This migration contains lesson, tasks, and documentation for lesson 4

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (35, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear un campo de texto</h2>
<p class="intro">Los campos de texto (<code>JTextField</code>) son una forma de obtener información del usuario. Nombre, contraseña, email, consulta de búsqueda — todo esto se introduce a través de campos de texto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>JTextField</code> — campo de una línea para entrada de texto</li>
  <li>Crear un campo de texto</li>
  <li>Uso básico de campos de entrada</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los campos de texto son una forma de obtener información del usuario. Sin ellos, la aplicación no puede interactuar con el usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea un campo de texto: <code>JTextField field = new JTextField();</code></li>
  <li>Añade al formulario: <code>add(field);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Crear una variable, luego añadir — puedes configurar</li>
  <li><strong>✅ Excelente:</strong> Crear con texto inicial: <code>new JTextField("Texto")</code></li>
  <li><strong>✅ Excelente:</strong> Crear con tamaño: <code>new JTextField(20)</code> — 20 caracteres de ancho</li>
  <li><strong>⚠️ Aceptable:</strong> <code>add(new JTextField());</code> — no puedes configurar después</li>
</ul>
<p><strong>Importante:</strong> El campo de texto se puede editar. Puedes establecer texto inicial en el constructor. Puedes establecer ancho en caracteres. El campo ajusta automáticamente la altura a la fuente. Usa nombres de variables claros.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un campo de texto vacío en el formulario. Esta es un área rectangular blanca donde puedes introducir texto. El usuario puede hacer clic y comenzar a escribir.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (35, 'es', 'Campo de texto principiante: crea un campo de entrada',
        'Crea un campo de texto y añádelo al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (36, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Texto en el campo</h2>
<p class="intro">El texto inicial ayuda al usuario a entender qué introducir. "Introduce nombre" o ejemplo "example@email.com" — todo esto hace la interfaz más clara.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setText(String text)</code> — establecer texto</li>
  <li>Texto inicial en campo de texto</li>
  <li>Obtener texto con el método <code>getText()</code></li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El texto inicial ayuda al usuario a entender qué se espera. Es como un placeholder en formularios — muestra qué se debe introducir.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea un campo de texto: <code>JTextField field = new JTextField();</code></li>
  <li>Establece el texto: <code>field.setText("Introduce texto");</code></li>
  <li>Añade al formulario: <code>add(field);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Establecer en constructor: <code>new JTextField("Texto")</code></li>
  <li><strong>✅ Excelente:</strong> Establecer mediante <code>setText()</code> — puedes cambiar después</li>
  <li><strong>⚠️ Evita:</strong> Texto muy largo — el campo se estirará</li>
  <li><strong>❌ Mal:</strong> Olvidar las comillas — <code>setText(Texto)</code> no funcionará</li>
</ul>
<p><strong>Importante:</strong> El texto se puede establecer al crear o después mediante <code>setText()</code>. Obtener texto: <code>String text = field.getText();</code>. Limpiar campo: <code>field.setText("");</code>. El usuario puede cambiar el texto en el campo. Usa textos iniciales informativos.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El texto especificado aparecerá en el campo de texto. El usuario puede cambiarlo, eliminarlo o añadir a él.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (36, 'es', 'Texto en el campo: establece valor inicial',
        'Crea un campo de texto, establece texto "Introduce nombre" y añádelo al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (37, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Tamaño del campo</h2>
<p class="intro">El tamaño del campo determina la comodidad de entrada. Demasiado estrecho — incómodo, demasiado ancho — ocupa mucho espacio. El tamaño correcto hace la interfaz ordenada y cómoda.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setSize(int width, int height)</code> — establecer tamaño</li>
  <li>El método <code>setColumns(int columns)</code> — ancho en caracteres</li>
  <li>Gestionar tamaños de campos de texto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El tamaño correcto hace la interfaz ordenada y cómoda. El tamaño debe corresponder al contenido esperado.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea un campo de texto: <code>JTextField field = new JTextField();</code></li>
  <li>Establece el tamaño: <code>field.setSize(200, 30);</code></li>
  <li>Añade al formulario: <code>add(field);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Usar <code>setColumns(20)</code> — ancho en caracteres</li>
  <li><strong>✅ Excelente:</strong> Combinación: <code>setColumns()</code> para ancho, altura automáticamente</li>
  <li><strong>⚠️ Evita:</strong> <code>setSize()</code> puede conflictuar con el diseño</li>
  <li><strong>❌ Mal:</strong> Tamaño demasiado pequeño — incómodo para introducir</li>
</ul>
<p><strong>Importante:</strong> <code>setColumns(20)</code> — ancho para 20 caracteres (recomendado). La altura suele ser 20-30 píxeles para campo de una línea. El ancho depende del contenido: nombre — 15-20 caracteres, email — 25-30. Recuerda: el gestor de diseño puede cambiar el tamaño.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El campo de texto será del tamaño especificado. Si usaste <code>setColumns(20)</code>, el campo será aproximadamente de 20 caracteres de ancho.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (37, 'es', 'Tamaño del campo: hazlo del ancho correcto',
        'Crea un campo de texto, establece ancho 20 caracteres y añádelo al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (38, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Colores del campo</h2>
<p class="intro">Los colores ayudan a clasificar campos. Fondo blanco para campos normales, amarillo claro para obligatorios, gris claro para inactivos. Esto hace la interfaz intuitiva.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>Métodos <code>setBackground(Color)</code> y <code>setForeground(Color)</code></li>
  <li>Colores de fondo y texto en campo de texto</li>
  <li>Crear combinaciones contrastantes</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los colores ayudan a resaltar campos importantes y crear jerarquía visual. Los colores correctos hacen la interfaz intuitiva y clara.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea un campo de texto: <code>JTextField field = new JTextField();</code></li>
  <li>Establece los colores: <code>field.setBackground(Color.YELLOW);</code><br><code>field.setForeground(Color.BLACK);</code></li>
  <li>Añade al formulario: <code>add(field);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Colores contrastantes — texto negro sobre fondo claro</li>
  <li><strong>✅ Excelente:</strong> Fondo blanco para campos normales, colorido para importantes</li>
  <li><strong>⚠️ Evita:</strong> Colores demasiado brillantes — los ojos se cansarán</li>
  <li><strong>❌ Mal:</strong> Texto oscuro sobre fondo oscuro — no se leerá</li>
</ul>
<p><strong>Importante:</strong> Usa colores preestablecidos. El fondo suele ser claro para legibilidad. El texto suele ser oscuro. Puedes usar para resaltar campos obligatorios. Recuerda el contraste para legibilidad.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El campo de texto se mostrará con los colores especificados. El fondo y el texto corresponderán a los valores establecidos.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (38, 'es', 'Colores del campo: colorea el campo de entrada',
        'Crea un campo de texto, establece fondo amarillo y texto negro, añádelo al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (39, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Editabilidad del campo</h2>
<p class="intro">Los campos bloqueados protegen datos. ID de usuario, fecha de creación, estado — todo esto no debe ser cambiado por el usuario. Los campos bloqueados muestran información pero no permiten editarla.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setEditable(boolean editable)</code> — gestionar editabilidad</li>
  <li>Campos bloqueados y desbloqueados</li>
  <li>Diferencia visual de campos bloqueados</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los campos bloqueados protegen datos de ser cambiados por el usuario. Esto es importante para valores protegidos o calculados.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea un campo de texto: <code>JTextField field = new JTextField("Texto");</code></li>
  <li>Bloquea el campo: <code>field.setEditable(false);</code></li>
  <li>Añade al formulario: <code>add(field);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setEditable(false)</code> para datos protegidos</li>
  <li><strong>✅ Excelente:</strong> Combinación con fondo gris para diferencia visual</li>
  <li><strong>⚠️ Evita:</strong> Bloquear todos los campos — el usuario no introducirá nada</li>
  <li><strong>❌ Mal:</strong> Olvidar desbloquear campos necesarios</li>
</ul>
<p><strong>Importante:</strong> <code>setEditable(false)</code> — el campo no se puede editar. <code>setEditable(true)</code> — el campo se puede editar (por defecto). El campo bloqueado suele tener fondo gris. Usa para mostrar valores calculados o protegidos.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El campo se volverá bloqueado. El usuario no puede cambiar el texto en el campo. El fondo puede volverse gris. El texto permanecerá visible pero no disponible para edición.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (39, 'es', 'Editabilidad: bloquea o desbloquea el campo',
        'Crea un campo de texto, bloquéalo y añádelo al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (40, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Información sobre herramientas del campo</h2>
<p class="intro">La información sobre herramientas ayuda al usuario a entender qué introducir. Puedes mostrar un ejemplo, formato, requisitos. Sin información sobre herramientas, el usuario puede no entender qué introducir.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setToolTipText()</code> — establecer información sobre herramientas</li>
  <li>Crear información sobre herramientas para campos de entrada</li>
  <li>Mejorar la experiencia del usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La información sobre herramientas mejora la experiencia del usuario. Ayuda a entender el formato de datos, requisitos y ejemplos de entrada.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece información sobre herramientas: <code>textField.setToolTipText("Introduce tu nombre");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setToolTipText()</code> para información sobre herramientas</li>
  <li><strong>✅ Excelente:</strong> Mostrar ejemplos de entrada, formato de datos</li>
  <li><strong>✅ Además:</strong> Usar HTML para formatear información sobre herramientas</li>
  <li><strong>⚠️ Evita:</strong> Información sobre herramientas demasiado larga — puede ser incómoda</li>
</ul>
<p><strong>Importante:</strong> La información sobre herramientas aparece al pasar el ratón. Puedes usar HTML para formatear. La información sobre herramientas corta y clara es mejor. Muestra ejemplos y formato.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al pasar el ratón, aparecerá información sobre herramientas. La información sobre herramientas mostrará qué se debe introducir.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (40, 'es', 'Campo de texto maestro: añade información sobre herramientas',
        'Establece información sobre herramientas "Introduce tu nombre" mediante setToolTipText()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (41, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Validación de entrada</h2>
<p class="intro">La validación de entrada previene errores. Puedes permitir solo dígitos, solo letras, un formato específico. Sin validación, el usuario puede introducir cualquier cosa.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>Validación de entrada mediante DocumentFilter</li>
  <li>Restringir caracteres de entrada</li>
  <li>Verificar formato de datos</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La validación de entrada previene errores y mejora la calidad de datos. Puedes restringir la entrada solo a caracteres o formatos permitidos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén documento: <code>AbstractDocument doc = (AbstractDocument) textField.getDocument();</code></li>
  <li>Establece filtro: <code>doc.setDocumentFilter(new DocumentFilter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void insertString(FilterBypass fb, int offset, String string, AttributeSet attr) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;if (string.matches("\\\\d+")) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;super.insertString(fb, offset, string, attr);<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> DocumentFilter para validación</li>
  <li><strong>✅ Excelente:</strong> Verificar mediante expresiones regulares, mostrar mensajes de error</li>
  <li><strong>✅ Además:</strong> Validar al perder foco</li>
  <li><strong>⚠️ Evita:</strong> Validación demasiado estricta — puede ser incómoda</li>
</ul>
<p><strong>Importante:</strong> DocumentFilter — filtro para validación. <code>insertString()</code> — verificar al insertar, <code>replace()</code> — verificar al reemplazar. Usa expresiones regulares para verificar. Muestra mensajes de error claros.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La entrada será validada. Los caracteres no válidos no se introducirán. Puedes permitir solo los caracteres necesarios.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (41, 'es', 'Campo de texto maestro: valida la entrada',
        'Obtén documento, crea DocumentFilter para verificar dígitos mediante expresión regular, establece filtro')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (42, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Posición del cursor</h2>
<p class="intro">La posición del cursor determina dónde estará el cursor. Puedes establecer el cursor al principio, final, o posición específica. Sin establecer, el cursor estará al final.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setCaretPosition()</code> — establecer posición del cursor</li>
  <li>El método <code>getCaretPosition()</code> — obtener posición</li>
  <li>Gestionar posición del cursor</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Gestionar la posición del cursor mejora la experiencia del usuario. Puedes establecer el cursor en el lugar correcto para comodidad de edición.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece posición: <code>textField.setCaretPosition(0);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setCaretPosition()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> 0 para principio, <code>getText().length()</code> para final</li>
  <li><strong>✅ Además:</strong> Usar para selección de texto</li>
  <li><strong>⚠️ Evita:</strong> Establecer más allá del texto — puede ser error</li>
</ul>
<p><strong>Importante:</strong> <code>getCaretPosition()</code> — obtener posición. Usa para comodidad del usuario.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El cursor estará en la posición especificada. Al enfocar, el cursor aparecerá en el lugar correcto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (42, 'es', 'Campo de texto maestro: establece posición del cursor',
        'Establece posición del cursor 0 mediante setCaretPosition(0)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (43, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Seleccionar todo el texto</h2>
<p class="intro">Seleccionar todo el texto acelera la edición. Puedes reemplazar rápidamente todo el texto sin eliminarlo manualmente. Sin selección, tendrás que eliminar texto manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>selectAll()</code> — seleccionar todo el texto</li>
  <li>Mejorar la experiencia del usuario</li>
  <li>Edición rápida</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Seleccionar todo el texto acelera la edición y mejora la experiencia del usuario. Esto es especialmente útil al reemplazar todo el contenido del campo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Selecciona todo el texto: <code>textField.selectAll();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>selectAll()</code> para selección</li>
  <li><strong>✅ Excelente:</strong> Usar al enfocar, para edición rápida</li>
  <li><strong>✅ Además:</strong> Combinar con <code>requestFocus()</code></li>
  <li><strong>⚠️ Evita:</strong> Seleccionar sin necesidad</li>
</ul>
<p><strong>Importante:</strong> <code>select(int, int)</code> — seleccionar rango. Usa para mejorar la experiencia del usuario.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Todo el texto será seleccionado. Puedes reemplazar rápidamente el texto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (43, 'es', 'Campo de texto maestro: selecciona todo el texto', 'Selecciona todo el texto mediante selectAll()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (44, 'es', '<div class="lesson-header">
<h2>🎮 Lección 10: Reemplazar texto seleccionado</h2>
<p class="intro">Reemplazar selección acelera la edición. Puedes reemplazar texto seleccionado con nuevo, sin eliminarlo manualmente. Sin reemplazo, tendrás que eliminar e introducir texto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>replaceSelection()</code> — reemplazar selección</li>
  <li>Reemplazar texto seleccionado</li>
  <li>Mejorar la edición</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Reemplazar selección acelera la edición y mejora la experiencia del usuario. Esto es especialmente útil al reemplazar parte del texto.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Selecciona texto: <code>textField.select(0, 5);</code></li>
  <li>Reemplaza selección: <code>textField.replaceSelection("Texto nuevo");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>replaceSelection()</code> para reemplazo</li>
  <li><strong>✅ Excelente:</strong> Usar <code>select()</code> para selección, combinar con <code>selectAll()</code></li>
  <li><strong>⚠️ Evita:</strong> Reemplazar sin selección</li>
</ul>
<p><strong>Importante:</strong> Usa para edición rápida y mejorar la experiencia del usuario.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El texto seleccionado será reemplazado. Puedes reemplazar rápidamente el texto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (44, 'es', 'Campo de texto maestro: reemplaza selección',
        'Selecciona texto mediante select(0, 5), reemplaza mediante replaceSelection("Texto nuevo")')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (45, 'es', '<div class="lesson-header">
<h2>🎮 Lección 11: Filtro de documento</h2>
<p class="intro">El filtro de documento permite validar entrada. Puedes restringir entrada, verificar formato, mejorar seguridad. Sin filtro, puedes introducir cualquier cosa.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>DocumentFilter</code> — filtro de documento</li>
  <li>El método <code>setDocumentFilter()</code> — establecer filtro</li>
  <li>Crear campo validado</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El filtro de documento mejora la seguridad y calidad de datos. Puedes restringir la entrada solo a caracteres o formatos permitidos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén documento: <code>AbstractDocument doc = (AbstractDocument) textField.getDocument();</code></li>
  <li>Crea filtro: <code>doc.setDocumentFilter(new DocumentFilter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void insertString(FilterBypass fb, int offset, String string, AttributeSet attr) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;if (string.matches("[0-9]+")) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;super.insertString(fb, offset, string, attr);<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> DocumentFilter para validación</li>
  <li><strong>✅ Excelente:</strong> Sobrescribir <code>insertString()</code> para insertar, <code>replace()</code> para reemplazar</li>
  <li><strong>✅ Además:</strong> Usar expresiones regulares</li>
  <li><strong>⚠️ Evita:</strong> Filtros demasiado estrictos — puede ser incómodo</li>
</ul>
<p><strong>Importante:</strong> <code>remove()</code> — para eliminación. Usa para validación de entrada.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La entrada será validada. Puedes introducir solo caracteres permitidos.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (45, 'es', 'Campo de texto maestro: añade filtro de documento',
        'Obtén documento, crea DocumentFilter, sobrescribe insertString() para verificar dígitos')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (46, 'es', '<div class="lesson-header">
<h2>🎮 Lección 12: Posición del cursor (continuación)</h2>
<p class="intro">La posición del cursor es importante para la edición. Puedes establecer el cursor en el lugar correcto, mejorar la experiencia del usuario. Sin gestión, la posición será automática.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setCaretPosition()</code> — establecer posición del cursor</li>
  <li>El método <code>getCaretPosition()</code> — obtener posición</li>
  <li>Gestionar posición del cursor</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Gestionar la posición del cursor mejora la experiencia del usuario y la comodidad de edición.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece posición: <code>textField.setCaretPosition(5);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setCaretPosition()</code> para establecer, <code>getCaretPosition()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar para mejorar UX y edición</li>
  <li><strong>⚠️ Evita:</strong> Establecer posición inexistente</li>
</ul>
<p><strong>Importante:</strong> Verifica límites antes de establecer posición. Usa para mejorar la edición.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El cursor se establecerá en la posición especificada. Puedes gestionar la posición del cursor.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (46, 'es', 'Campo de texto maestro: establece posición del cursor',
        'Establece posición del cursor 5 mediante setCaretPosition()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (47, 'es', '<div class="lesson-header">
<h2>🎮 Lección 13: Seleccionar todo el texto (continuación)</h2>
<p class="intro">Seleccionar todo el texto acelera la edición. Puedes seleccionar rápidamente todo el texto, reemplazarlo, mejorar el rendimiento. Sin selección, necesitas seleccionar manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>selectAll()</code> — seleccionar todo el texto</li>
  <li>Mejorar la experiencia del usuario</li>
  <li>Edición rápida</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Seleccionar todo el texto acelera la edición y mejora el rendimiento del campo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Selecciona todo el texto: <code>textField.selectAll();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>selectAll()</code> para selección</li>
  <li><strong>✅ Excelente:</strong> Usar para edición rápida, combinar con <code>setText()</code></li>
  <li><strong>⚠️ Evita:</strong> Seleccionar sin necesidad</li>
</ul>
<p><strong>Importante:</strong> Usa al enfocar para mejorar el rendimiento.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Todo el texto será seleccionado. Puedes reemplazar rápidamente el texto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (47, 'es', 'Campo de texto maestro: selecciona todo el texto', 'Selecciona todo el texto mediante selectAll()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (48, 'es', '<div class="lesson-header">
<h2>🎮 Lección 14: Alineación horizontal</h2>
<p class="intro">La alineación determina la posición del texto. Puedes alinear texto al borde izquierdo, centro, borde derecho, mejorar la legibilidad. Sin alineación, el texto estará en el borde izquierdo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setHorizontalAlignment()</code> — establecer alineación</li>
  <li>Constantes <code>JTextField.LEFT</code>, <code>JTextField.CENTER</code>, <code>JTextField.RIGHT</code></li>
  <li>Gestionar posición del texto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La alineación mejora la legibilidad y organización visual del texto en el campo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece alineación: <code>textField.setHorizontalAlignment(JTextField.CENTER);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setHorizontalAlignment()</code> para establecer</li>
  <li><strong>✅ Constantes:</strong> LEFT (borde izquierdo), CENTER (centro), RIGHT (borde derecho)</li>
  <li><strong>⚠️ Evita:</strong> Usar alineación inapropiada</li>
</ul>
<p><strong>Importante:</strong> Usa para mejorar la legibilidad del texto en el campo.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El texto se alineará al borde especificado. Puedes mejorar la legibilidad.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (48, 'es', 'Campo de texto maestro: establece alineación horizontal',
        'Establece alineación CENTER mediante setHorizontalAlignment()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Spanish)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
