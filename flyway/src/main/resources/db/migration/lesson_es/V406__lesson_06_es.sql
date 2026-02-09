-- Flyway migration V4: Lesson 6
-- This migration contains lesson, tasks, and documentation for lesson 6

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (51, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear un campo de contraseña</h2>
<p class="intro">Los campos de contraseña (<code>JPasswordField</code>) protegen información confidencial. Las contraseñas no deben ser visibles en pantalla — esta es la base de la seguridad. El texto se oculta con asteriscos para que nadie pueda espiar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>JPasswordField</code> — campo para entrada de contraseña</li>
  <li>Crear un campo de entrada protegido</li>
  <li>Ocultación automática del texto introducido</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los campos de contraseña protegen información confidencial. Sin campos de contraseña, cualquiera puede espiar la contraseña introducida.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea un campo de contraseña: <code>JPasswordField passwordField = new JPasswordField();</code></li>
  <li>Añade al formulario: <code>add(passwordField);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Crear con tamaño: <code>new JPasswordField(20)</code></li>
  <li><strong>✅ Excelente:</strong> Usar nombre claro: <code>passwordField</code></li>
  <li><strong>⚠️ Aceptable:</strong> <code>add(new JPasswordField());</code> — no puedes configurar después</li>
</ul>
<p><strong>Importante:</strong> El campo de contraseña oculta automáticamente el texto introducido con asteriscos. Por defecto se usa el símbolo * para enmascarar. Puedes cambiar el carácter de enmascaramiento con el método <code>setEchoChar()</code>. Obtener contraseña: <code>char[] password = passwordField.getPassword();</code>. Usa solo para contraseñas, no para texto normal.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un campo de contraseña en el formulario. Al introducir texto, aparecerán asteriscos en lugar de letras. Esto protege la contraseña de miradas indiscretas.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (51, 'es', 'Campo de contraseña principiante: crea un campo protegido',
        'Crea un campo de contraseña y añádelo al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (52, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Carácter de eco</h2>
<p class="intro">Diferentes caracteres de eco pueden usarse para diferentes estilos de interfaz. Algunas aplicaciones usan ● o • en lugar de *. Esto hace la interfaz única.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setEchoChar(char c)</code> — establecer carácter de eco</li>
  <li>Cambiar el carácter mostrado en lugar de contraseña</li>
  <li>Personalizar apariencia del campo de contraseña</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Personalizar el carácter de eco permite crear un estilo de interfaz único y mejorar la percepción visual.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea un campo de contraseña: <code>JPasswordField passwordField = new JPasswordField();</code></li>
  <li>Establece carácter de eco: <code>passwordField.setEchoChar(''●'');</code></li>
  <li>Añade al formulario: <code>add(passwordField);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Caracteres visibles: ●, •, *</li>
  <li><strong>✅ Excelente:</strong> El carácter debe ser claro y visible</li>
  <li><strong>⚠️ Evita:</strong> Caracteres invisibles — el usuario no entenderá qué está introduciendo</li>
</ul>
<p><strong>Importante:</strong> Puedes usar cualquier carácter Unicode. Caracteres estándar: *, ●, •.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>En lugar de asteriscos, se usará el carácter especificado. Si estableciste ●, será el que se muestre al introducir.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (52, 'es', 'Carácter de eco: cambia el asterisco por otro carácter',
        'Crea un campo de contraseña, establece carácter de eco ● y añádelo al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (53, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Ajuste de líneas en área de texto</h2>
<p class="intro">El ajuste de líneas hace el texto legible. Las líneas largas no se irán más allá de los límites del área, el texto se ajustará automáticamente. Sin esto, aparecerá desplazamiento horizontal.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setLineWrap()</code> — habilitar ajuste de líneas</li>
  <li>El método <code>setWrapStyleWord()</code> — ajuste por palabras</li>
  <li>Configurar ajuste de texto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El ajuste de líneas mejora la legibilidad del texto y elimina la necesidad de desplazamiento horizontal.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Habilita ajuste: <code>textArea.setLineWrap(true);</code></li>
  <li>Habilita ajuste por palabras: <code>textArea.setWrapStyleWord(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setLineWrap(true)</code> para ajuste</li>
  <li><strong>✅ Excelente:</strong> <code>setWrapStyleWord(true)</code> para ajuste por palabras, combinar ambos métodos</li>
  <li><strong>⚠️ Evita:</strong> Ajuste por caracteres — las palabras se romperán</li>
</ul>
<p><strong>Importante:</strong> El ajuste por palabras se lee mejor. El ajuste por caracteres puede romper palabras. Usa juntos para mejor resultado.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Las líneas largas se ajustarán automáticamente. El texto se ajustará por palabras, sin ir más allá de los límites.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (53, 'es', 'Área de texto maestra: habilita ajuste de líneas',
        'Establece setLineWrap(true) y setWrapStyleWord(true) para área de texto')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (54, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Tamaño de tabulación</h2>
<p class="intro">El tamaño de tabulación hace el texto estructurado. Código, listas, datos estructurados — todo esto requiere tabulaciones. Sin establecer, la tabulación será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setTabSize()</code> — establecer tamaño de tabulación</li>
  <li>Configurar sangría en texto</li>
  <li>Crear texto estructurado</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El tamaño correcto de tabulación mejora la estructura del texto, especialmente para código y listas.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece tamaño de tabulación: <code>textArea.setTabSize(4);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setTabSize()</code> para configuración</li>
  <li><strong>✅ Tamaños:</strong> 4 para código (estándar Java), 2 para código compacto, 8 para estándares antiguos</li>
  <li><strong>⚠️ Evita:</strong> Tamaño demasiado grande — puede ser incómodo</li>
</ul>
<p><strong>Importante:</strong> El tamaño se especifica en espacios. 4 — estándar para Java.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La tabulación será del tamaño necesario. Al presionar Tab se insertará el número necesario de espacios.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (54, 'es', 'Área de texto maestra: configura tamaño de tabulación',
        'Establece tamaño de tabulación 4 mediante setTabSize(4)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (55, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Ajuste de líneas (continuación)</h2>
<p class="intro">El ajuste de líneas hace el texto legible. Las líneas largas se ajustarán automáticamente, el texto será completamente visible. Sin ajuste, el texto se irá más allá de los límites.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setLineWrap()</code> — habilitar ajuste</li>
  <li>El método <code>setWrapStyleWord()</code> — ajuste por palabras</li>
  <li>Crear texto legible</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El ajuste de líneas mejora la legibilidad y permite ver todo el texto sin desplazamiento horizontal.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Habilita ajuste: <code>textArea.setLineWrap(true);</code></li>
  <li>Habilita ajuste por palabras: <code>textArea.setWrapStyleWord(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setLineWrap(true)</code> para ajuste, <code>setWrapStyleWord(true)</code> para ajuste por palabras</li>
  <li><strong>✅ Combina:</strong> Ambos métodos juntos</li>
  <li><strong>⚠️ Evita:</strong> Ajuste por caracteres — puede ser ilegible</li>
</ul>
<p><strong>Importante:</strong> Usa para texto largo. El ajuste por palabras se lee mejor.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El texto se ajustará automáticamente. Las líneas largas se ajustarán a una nueva línea.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (55, 'es', 'Área de texto maestra: habilita ajuste de líneas',
        'Habilita ajuste mediante setLineWrap(true), habilita ajuste por palabras mediante setWrapStyleWord(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (56, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Añadir texto</h2>
<p class="intro">Añadir texto permite acumular contenido. Puedes añadir texto al final, crear un registro, acumular información. Sin añadir, tendrás que reemplazar todo el texto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>append()</code> — añadir texto</li>
  <li>Añadir texto al final</li>
  <li>Crear texto acumulativo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Añadir texto al final es útil para crear registros, acumular información y construir texto gradualmente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Añade texto: <code>textArea.append("Nueva línea\n");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>append()</code> para añadir al final</li>
  <li><strong>✅ Excelente:</strong> Usar para registros, usar \n para salto de línea</li>
  <li><strong>⚠️ Evita:</strong> Añadir con demasiada frecuencia — puede ser lento</li>
</ul>
<p><strong>Importante:</strong> Usa para acumular texto. No añadas con demasiada frecuencia para mejor rendimiento.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El texto se añadirá al final. Puedes acumular texto gradualmente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (56, 'es', 'Área de texto maestra: añade texto', 'Añade texto "Nueva línea\n" mediante append()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (57, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Insertar texto</h2>
<p class="intro">Insertar texto permite editar contenido. Puedes insertar texto en una posición especificada sin reemplazar todo el texto. Sin inserción, tendrás que reemplazar todo el texto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>insert()</code> — insertar texto</li>
  <li>Insertar texto en posición especificada</li>
  <li>Crear contenido editable</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Insertar texto en una posición específica permite editar contenido de forma precisa sin reemplazar todo el texto.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Inserta texto: <code>textArea.insert("Texto insertado", 0);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>insert()</code> para insertar en posición especificada</li>
  <li><strong>✅ Excelente:</strong> Usar para edición, combinar con <code>append()</code></li>
  <li><strong>⚠️ Evita:</strong> Insertar en posición inexistente</li>
</ul>
<p><strong>Importante:</strong> Especifica posición correcta. Usa para mejorar la experiencia del usuario.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El texto se insertará en la posición especificada. Puedes editar contenido de forma precisa.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (57, 'es', 'Área de texto maestra: inserta texto',
        'Inserta texto "Texto insertado" en posición 0 mediante insert()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (58, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Reemplazar rango de texto</h2>
<p class="intro">Reemplazar rango acelera la edición. Puedes reemplazar texto en un rango especificado sin eliminar e insertar manualmente. Sin reemplazo, tendrás que eliminar e insertar texto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>replaceRange()</code> — reemplazar rango</li>
  <li>Reemplazar texto en rango especificado</li>
  <li>Mejorar la edición</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Reemplazar rango acelera la edición y mejora la experiencia del usuario al trabajar con texto.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Reemplaza rango: <code>textArea.replaceRange("Texto nuevo", 0, 5);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>replaceRange()</code> para reemplazo</li>
  <li><strong>✅ Excelente:</strong> Especificar rango correcto, usar para edición rápida, combinar con <code>select()</code></li>
  <li><strong>⚠️ Evita:</strong> Reemplazar rango inexistente</li>
</ul>
<p><strong>Importante:</strong> Usa para mejorar la experiencia del usuario.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El texto en el rango especificado será reemplazado. Puedes reemplazar rápidamente el texto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (58, 'es', 'Área de texto maestra: reemplaza texto',
        'Reemplaza rango 0-5 mediante replaceRange("Texto nuevo", 0, 5)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (59, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Cantidad de líneas</h2>
<p class="intro">La cantidad de líneas es importante para el análisis. Puedes averiguar cuántas líneas hay en el texto, mejorar la funcionalidad. Sin contar, no puedes saber el número de líneas.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>getLineCount()</code> — obtener cantidad de líneas</li>
  <li>Contar líneas en texto</li>
  <li>Mejorar la funcionalidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Contar líneas es útil para análisis de texto, validación y mejorar la funcionalidad de la aplicación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén cantidad de líneas: <code>int lines = textArea.getLineCount();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getLineCount()</code> para obtener cantidad de líneas</li>
  <li><strong>✅ Excelente:</strong> Usar para análisis, validación, mejorar funcionalidad</li>
  <li><strong>⚠️ Considera:</strong> Las líneas vacías también se cuentan</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Puedes obtener el número de líneas en el área de texto. Usa para análisis y validación.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (59, 'es', 'Área de texto maestra: obtén cantidad de líneas', 'Obtén cantidad de líneas mediante getLineCount()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (60, 'es', '<div class="lesson-header">
<h2>🎮 Lección 10: Obtener texto de línea</h2>
<p class="intro">El texto de línea es importante para el análisis. Puedes obtener texto de una línea específica, procesarlo, mejorar la funcionalidad. Sin obtener, no puedes procesar la línea.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>getLineStartOffset()</code> — inicio de línea</li>
  <li>El método <code>getLineEndOffset()</code> — final de línea</li>
  <li>Obtener texto de línea</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Obtener texto de una línea específica permite procesar texto línea por línea y mejorar la funcionalidad de la aplicación.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén inicio de línea: <code>int start = textArea.getLineStartOffset(0);</code></li>
  <li>Obtén final de línea: <code>int end = textArea.getLineEndOffset(0);</code></li>
  <li>Obtén texto: <code>String line = textArea.getText(start, end - start);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getLineStartOffset()</code> para inicio, <code>getLineEndOffset()</code> para final, <code>getText()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar para mejorar funcionalidad</li>
  <li><strong>⚠️ Evita:</strong> Usar línea inexistente</li>
</ul>
<p><strong>Importante:</strong> Verifica límites antes de obtener texto de línea.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Puedes obtener texto de una línea específica. Usa para procesar texto línea por línea.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (60, 'es', 'Área de texto maestra: obtén texto de línea',
        'Obtén inicio de línea 0 mediante getLineStartOffset(), final mediante getLineEndOffset(), obtén texto mediante getText()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (61, 'es', '<div class="lesson-header">
<h2>🎮 Lección 11: Ajuste de líneas (conclusión)</h2>
<p class="intro">El ajuste de líneas mejora la legibilidad. Puedes ajustar automáticamente líneas largas, mejorar la visualización. Sin ajuste, las líneas se irán más allá de los límites.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setLineWrap()</code> — habilitar ajuste</li>
  <li>Ajuste automático de líneas largas</li>
  <li>Mejorar la legibilidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El ajuste de líneas mejora la legibilidad y visualización del texto, eliminando la necesidad de desplazamiento horizontal.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Habilita ajuste: <code>textArea.setLineWrap(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setLineWrap(true)</code> para habilitar</li>
  <li><strong>✅ Excelente:</strong> Combinar con <code>setWrapStyleWord()</code>, usar para mejorar legibilidad</li>
  <li><strong>⚠️ Considera:</strong> No usar para código — puede romper el formateo</li>
</ul>
<p><strong>Importante:</strong> Usa para legibilidad y mejorar visualización de texto normal.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Las líneas largas se ajustarán automáticamente. Puedes mejorar la legibilidad del texto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (61, 'es', 'Área de texto maestra: habilita ajuste de líneas', 'Habilita ajuste mediante setLineWrap(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Spanish)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
