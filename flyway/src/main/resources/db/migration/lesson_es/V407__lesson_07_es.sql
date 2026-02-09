-- Flyway migration V4: Lesson 7
-- This migration contains lesson, tasks, and documentation for lesson 7

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (62, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear una casilla de verificación</h2>
<p class="intro">Las casillas de verificación (<code>JCheckBox</code>) permiten al usuario seleccionar opciones. "Guardar contraseña", "Notificaciones", "Inicio automático" — todo esto se implementa a través de casillas de verificación. Puedes habilitar o deshabilitar una opción con un clic.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>JCheckBox</code> — casilla de verificación para seleccionar opciones</li>
  <li>Crear una casilla de verificación</li>
  <li>Uso básico de casillas de verificación</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Las casillas de verificación permiten al usuario seleccionar opciones. Sin ellas, el usuario no puede configurar la aplicación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea una casilla de verificación: <code>JCheckBox checkBox = new JCheckBox("Habilitar opción");</code></li>
  <li>Añade al formulario: <code>add(checkBox);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Crear con texto: <code>new JCheckBox("Texto")</code></li>
  <li><strong>✅ Excelente:</strong> Texto claro que explique la opción</li>
  <li><strong>⚠️ Evita:</strong> Casilla vacía sin texto — no está claro qué hace</li>
</ul>
<p><strong>Importante:</strong> La casilla de verificación puede estar marcada (habilitada) o desmarcada (deshabilitada). Verificar estado: <code>checkBox.isSelected()</code>. Establecer estado: <code>checkBox.setSelected(true)</code>. Usa textos claros. Puedes usar un icono junto con texto.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá una casilla de verificación con texto en el formulario. Es un cuadrado con una marca (si está marcada) o vacío (si no está marcada). El usuario puede hacer clic para habilitar o deshabilitar la opción.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (62, 'es', 'Casilla de verificación principiante: crea un interruptor',
        'Crea una casilla de verificación con texto "Habilitar" y añádela al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (63, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Estado de la casilla de verificación</h2>
<p class="intro">La gestión programática del estado permite establecer valores predeterminados. Si una opción debe estar habilitada al iniciar, puedes marcar la casilla de verificación programáticamente. Esto mejora la experiencia del usuario.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setSelected(boolean selected)</code> — establecer estado</li>
  <li>El método <code>isSelected()</code> — verificar estado</li>
  <li>Gestionar estado de la casilla de verificación</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La gestión del estado permite establecer valores predeterminados y mejorar la experiencia del usuario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea una casilla de verificación: <code>JCheckBox checkBox = new JCheckBox("Habilitar");</code></li>
  <li>Marca la casilla: <code>checkBox.setSelected(true);</code></li>
  <li>Añade al formulario: <code>add(checkBox);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setSelected(true)</code> para habilitar por defecto</li>
  <li><strong>✅ Excelente:</strong> Verificar estado antes de la acción: <code>if (checkBox.isSelected())</code></li>
  <li><strong>⚠️ Evita:</strong> Marcar todas las casillas — el usuario no entenderá qué se puede cambiar</li>
</ul>
<p><strong>Importante:</strong> <code>setSelected(false)</code> — desmarcar. <code>isSelected()</code> — devolverá <code>true</code> si está marcada. Usa para establecer valores predeterminados. Puedes alternar estado: <code>checkBox.setSelected(!checkBox.isSelected())</code>.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La casilla de verificación estará marcada. Aparecerá una marca en el cuadrado. El usuario puede desmarcarla con un clic.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (63, 'es', 'Estado de la casilla de verificación: marca o desmarca',
        'Crea una casilla de verificación, márcala y añádela al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (64, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Carácter de visualización de contraseña</h2>
<p class="intro">El carácter de visualización personalizado hace la interfaz única. Puedes usar puntos, cuadrados, cualquier carácter. Sin configuración, habrá un asterisco estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setEchoChar()</code> — establecer carácter de visualización</li>
  <li>Configurar visualización visual de contraseña</li>
  <li>Crear carácter personalizado</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Personalizar el carácter de visualización permite crear un estilo de interfaz único y mejorar la percepción visual.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece carácter: <code>passwordField.setEchoChar(''●'');</code></li>
  <li>Añade al formulario: <code>add(passwordField);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Caracteres visibles: ●, •, *</li>
  <li><strong>✅ Excelente:</strong> El carácter debe ser claro</li>
</ul>
<p><strong>Importante:</strong> El carácter debe ser visible. Puedes usar cualquier carácter Unicode.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>En lugar del carácter estándar, se usará el especificado. Esta es la personalización del carácter de visualización.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (64, 'es', 'Campo de contraseña maestro: cambia carácter de visualización',
        'Establece carácter de visualización ● mediante setEchoChar()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (65, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Verificación de seguridad de contraseña</h2>
<p class="intro">La verificación de seguridad mejora la seguridad. Puedes evaluar qué tan segura es una contraseña y advertir al usuario. Sin verificación, el usuario puede usar una contraseña débil.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>Verificar longitud de contraseña</li>
  <li>Verificar presencia de diferentes tipos de caracteres</li>
  <li>Evaluar seguridad de contraseña</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La verificación de seguridad de contraseña mejora la seguridad de la aplicación y ayuda al usuario a crear una contraseña más segura.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén contraseña: <code>char[] password = passwordField.getPassword();</code></li>
  <li>Verifica longitud: <code>JLabel label = new JLabel();<br>
if (password.length &lt; 8) {<br>
&nbsp;&nbsp;label.setText("¡Contraseña débil!");<br>
}<br>
add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Verificación de longitud de contraseña</li>
  <li><strong>✅ Excelente:</strong> Verificar presencia de dígitos, letras, caracteres especiales, mostrar indicación visual</li>
  <li><strong>⚠️ Evita:</strong> Requisitos demasiado estrictos — puede ser incómodo</li>
</ul>
<p><strong>Importante:</strong> Verifica longitud (mínimo 8 caracteres). Verifica diversidad de caracteres. Muestra mensajes claros. Usa expresiones regulares.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Puedes verificar la seguridad de la contraseña. Al introducir, puedes evaluar la fuerza de la contraseña y advertir al usuario.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (65, 'es', 'Campo de contraseña maestro: verifica seguridad de contraseña',
        'Obtén contraseña mediante getPassword(), verifica longitud menor a 8, muestra mensaje')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (66, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Prevenir copia de contraseña</h2>
<p class="intro">Prevenir la copia mejora la seguridad. La contraseña no se puede copiar, lo que protege contra fugas. Sin prevención, la contraseña se puede copiar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>Deshabilitar copia mediante DocumentFilter</li>
  <li>Proteger contraseña de copia</li>
  <li>Mejorar seguridad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Prevenir la copia protege la contraseña de fugas y mejora la seguridad general de la aplicación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén documento: <code>AbstractDocument doc = (AbstractDocument) passwordField.getDocument();</code></li>
  <li>Establece filtro: <code>doc.setDocumentFilter(new DocumentFilter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void remove(FilterBypass fb, int offset, int length) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;// Prevenir eliminación<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> DocumentFilter para prevención</li>
  <li><strong>✅ Excelente:</strong> Prevenir copia, corte, mejorar seguridad</li>
  <li><strong>⚠️ Evita:</strong> Restricciones demasiado estrictas — puede ser incómodo</li>
</ul>
<p><strong>Importante:</strong> Usa para seguridad y mejorar protección de contraseña.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La copia será prevenida. La contraseña no se puede copiar.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (66, 'es', 'Campo de contraseña maestro: prevén copia',
        'Obtén documento, crea DocumentFilter, sobrescribe remove() para prevenir eliminación')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (67, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Cambiar carácter de visualización</h2>
<p class="intro">El carácter de visualización determina cómo se muestra la contraseña. Puedes cambiar el carácter de * a otro, crear visualización personalizada. Sin cambio, habrá un carácter estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setEchoChar()</code> — establecer carácter</li>
  <li>Cambiar carácter de visualización</li>
  <li>Crear visualización personalizada</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Personalizar el carácter de visualización permite crear un estilo de interfaz único.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Cambia carácter: <code>passwordField.setEchoChar(''●'');</code></li>
  <li>Añade al formulario: <code>add(passwordField);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Caracteres visibles</li>
  <li><strong>✅ Excelente:</strong> Personalizar visualización</li>
</ul>
<p><strong>Importante:</strong> Usa caracteres visibles para mejorar la apariencia visual.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El carácter de visualización será cambiado. Esta es la personalización del carácter.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (67, 'es', 'Campo de contraseña maestro: cambia carácter de visualización',
        'Cambia carácter de visualización a ● mediante setEchoChar()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (68, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Mostrar contraseña</h2>
<p class="intro">Mostrar contraseña mejora la experiencia del usuario. Puedes mostrar temporalmente la contraseña para verificación, mejorar la comodidad. Sin mostrar, no puedes verificar la contraseña.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>getEchoChar()</code> — obtener carácter</li>
  <li>Visualización temporal de contraseña</li>
  <li>Crear función mostrar/ocultar</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La visualización temporal de contraseña permite al usuario verificar la contraseña introducida, mejorando la usabilidad.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén carácter: <code>char echoChar = passwordField.getEchoChar();</code></li>
  <li>Muestra temporalmente contraseña: <code>passwordField.setEchoChar((char) 0);</code></li>
  <li>Oculta de nuevo: <code>passwordField.setEchoChar(echoChar);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getEchoChar()</code> para obtener, <code>setEchoChar(0)</code> para mostrar</li>
  <li><strong>✅ Excelente:</strong> Restaurar carácter, usar para alternar</li>
  <li><strong>⚠️ Evita:</strong> Mostrar constantemente — no es seguro</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La contraseña se mostrará temporalmente. Puedes verificar la contraseña, luego ocultarla de nuevo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (68, 'es', 'Campo de contraseña maestro: muestra contraseña',
        'Obtén carácter mediante getEchoChar(), establece 0 mediante setEchoChar() para mostrar, luego restaura carácter')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (69, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Verificación de fuerza de contraseña</h2>
<p class="intro">La verificación de fuerza de contraseña mejora la seguridad. Puedes verificar longitud, complejidad, mejorar protección. Sin verificación, la contraseña puede ser débil.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>getPassword()</code> — obtener contraseña</li>
  <li>Verificar fuerza de contraseña</li>
  <li>Mejorar seguridad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La verificación de fuerza de contraseña ayuda al usuario a crear una contraseña más segura y mejora la seguridad general de la aplicación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén contraseña: <code>char[] password = passwordField.getPassword();</code></li>
  <li>Verifica fuerza: <code>boolean isStrong = password.length >= 8 && new String(password).matches(".*[A-Z].*") && new String(password).matches(".*[0-9].*");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getPassword()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Verificar longitud, complejidad, mejorar seguridad</li>
  <li><strong>⚠️ Evita:</strong> Almacenar contraseña en String — usa char[]</li>
</ul>
<p><strong>Importante:</strong> Verifica longitud (mínimo 8). Verifica presencia de mayúsculas, dígitos. No almacenes en String por seguridad.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Puedes verificar la fuerza de la contraseña. Puedes validar la contraseña y mejorar la seguridad.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (69, 'es', 'Campo de contraseña maestro: verifica fuerza de contraseña',
        'Obtén contraseña mediante getPassword(), verifica longitud >= 8 y presencia de letras mayúsculas')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (70, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Copiar contraseña</h2>
<p class="intro">Copiar contraseña mejora la funcionalidad. Puedes copiar la contraseña al portapapeles, mejorar la experiencia del usuario. Sin copiar, necesitas introducir manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>getPassword()</code> — obtener contraseña</li>
  <li>Copiar contraseña al portapapeles</li>
  <li>Mejorar funcionalidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Copiar contraseña al portapapeles mejora la experiencia del usuario y permite usar la contraseña en otros lugares.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén contraseña: <code>char[] password = passwordField.getPassword();</code></li>
  <li>Copia al portapapeles: <code>StringSelection selection = new StringSelection(new String(password));<br>
Toolkit.getDefaultToolkit().getSystemClipboard().setContents(selection, null);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getPassword()</code> para obtener, Clipboard para copiar</li>
  <li><strong>✅ Excelente:</strong> Usar para mejorar UX y funcionalidad</li>
  <li><strong>⚠️ Considera:</strong> Solicitar permiso antes de copiar</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La contraseña se copiará al portapapeles. Puedes usarla en otros lugares.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (70, 'es', 'Campo de contraseña maestro: copia contraseña',
        'Obtén contraseña mediante getPassword(), crea StringSelection, establece en Clipboard mediante setContents()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (71, 'es', '<div class="lesson-header">
<h2>🎮 Lección 10: Establecer carácter de visualización</h2>
<p class="intro">El carácter de visualización determina el enmascaramiento. Puedes establecer un carácter personalizado en lugar del estándar, mejorar la apariencia visual. Sin establecer, el carácter será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setEchoChar()</code> — establecer carácter de visualización</li>
  <li>Personalizar carácter de enmascaramiento</li>
  <li>Mejorar apariencia visual</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Personalizar el carácter de visualización permite crear un estilo de interfaz único y mejorar la percepción visual.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece carácter: <code>passwordField.setEchoChar(''*'');</code></li>
  <li>Añade al formulario: <code>add(passwordField);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Caracteres estándar: *, ●</li>
  <li><strong>✅ Excelente:</strong> Personalizar visualización</li>
</ul>
<p><strong>Importante:</strong> Usa caracteres visibles para mejorar la apariencia visual.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El carácter de visualización será establecido. Esta es la personalización del carácter.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (71, 'es', 'Campo de contraseña maestro: establece carácter de visualización',
        'Establece carácter * mediante setEchoChar()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Spanish)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
