-- Flyway migration V4: Lesson 3
-- This migration contains lesson, tasks, and documentation for lesson 3

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (16, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear una etiqueta</h2>
<p class="intro">Las etiquetas (<code>JLabel</code>) son texto estático que ayuda al usuario a entender qué está pasando. Sin ellas, la interfaz es como un mapa sin leyenda.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>JLabel</code> — un componente para mostrar texto e iconos</li>
  <li>Crear una etiqueta sin texto y con texto</li>
  <li>Uso básico de etiquetas en la interfaz</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>¡Las etiquetas son la base de la información de la interfaz! Explican al usuario qué hace cada botón, campo de entrada u otro elemento. Las etiquetas hacen la interfaz clara y amigable.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea un objeto etiqueta: <code>JLabel label = new JLabel();</code></li>
  <li>Añade la etiqueta al formulario: <code>add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Crear una variable, luego añadir — puedes configurar la etiqueta</li>
  <li><strong>✅ Excelente:</strong> Crear con texto inmediatamente: <code>new JLabel("Texto")</code> — más corto y claro</li>
  <li><strong>⚠️ Aceptable:</strong> <code>add(new JLabel());</code> — funciona, pero luego no puedes configurarla</li>
  <li><strong>❌ Mal:</strong> Olvidar llamar <code>add()</code> — la etiqueta no aparecerá</li>
</ul>
<p><strong>Importante:</strong> Las etiquetas no responden a clics — solo son para mostrar información. Puedes crear una etiqueta vacía y añadir texto después con el método <code>setText()</code>. Las etiquetas ajustan automáticamente su tamaño al contenido. Usa nombres de variables claros.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá una etiqueta vacía (o con texto, si lo especificaste al crear). Será de tamaño estándar. En las siguientes lecciones aprenderemos a añadir texto, iconos y formatear las etiquetas de forma bonita.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (16, 'es', 'Etiqueta principiante: crea una señal informativa', 'Crea una etiqueta y añádela al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (17, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Añadir texto a una etiqueta</h2>
<p class="intro">El texto en una etiqueta es información para el usuario. Las etiquetas claras hacen la aplicación amigable y profesional.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setText(String text)</code> — establecer texto en una etiqueta</li>
  <li>Crear una etiqueta con texto en el constructor</li>
  <li>Trabajar con cadenas para etiquetas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El texto en una etiqueta ayuda a entender la interfaz. "Introduce nombre:", "Estado:", "Resultado:" — todo esto hace la interfaz clara y profesional.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea una etiqueta: <code>JLabel label = new JLabel();</code></li>
  <li>Establece el texto: <code>label.setText("¡Hola, mundo!");</code></li>
  <li>Añade al formulario: <code>add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Texto entre comillas, claro e informativo</li>
  <li><strong>✅ Excelente:</strong> Crear inmediatamente con texto: <code>new JLabel("¡Hola!")</code> — más corto</li>
  <li><strong>⚠️ Evita:</strong> Texto muy largo — la etiqueta se estirará</li>
  <li><strong>❌ Mal:</strong> Olvidar las comillas — <code>setText(Hola)</code> no funcionará</li>
</ul>
<p><strong>Importante:</strong> El texto siempre va entre comillas dobles. Usa textos informativos. Puedes usar HTML en etiquetas para formatear. Orden: primero <code>setText()</code>, luego <code>add()</code>.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Tu texto aparecerá en la etiqueta. La etiqueta ajustará automáticamente su tamaño a la longitud del texto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (17, 'es', 'Texto de etiqueta: dale voz',
        'Crea una etiqueta, establece su texto "¡Hola, mundo!" y añádela al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (18, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Icono en una etiqueta</h2>
<p class="intro">Un icono en una etiqueta hace la información visual y atractiva. Los iconos ayudan al usuario a entender rápidamente la información.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setIcon(Icon icon)</code> — establecer un icono</li>
  <li>La clase <code>ImageIcon</code> para cargar imágenes</li>
  <li>Combinar texto e icono en una etiqueta</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>¡Los iconos hacen la interfaz visual! Una cruz roja para errores, una marca verde para éxito, un signo de exclamación amarillo para advertencias — todo esto ayuda a entender rápidamente la información.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea una etiqueta: <code>JLabel label = new JLabel();</code></li>
  <li>Establece el icono: <code>ImageIcon icon = new ImageIcon("path/to/image.png");</code><br><code>label.setIcon(icon);</code></li>
  <li>Añade al formulario: <code>add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Iconos de tamaño apropiado (16x16, 32x32 píxeles)</li>
  <li><strong>✅ Excelente:</strong> Combinación de texto e icono — informativo y bonito</li>
  <li><strong>⚠️ Evita:</strong> Iconos muy grandes — la etiqueta se volverá enorme</li>
  <li><strong>❌ Mal:</strong> Ruta de archivo inexistente — el icono no se cargará</li>
</ul>
<p><strong>Importante:</strong> Los iconos se pueden cargar desde archivos. Puedes usar iconos del sistema o crear los tuyos. El icono y el texto pueden estar juntos — la etiqueta los colocará automáticamente. Orden: puedes poner primero el icono, luego el texto, o viceversa.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un icono en la etiqueta. La etiqueta ajustará automáticamente su tamaño al icono. En la siguiente lección aprenderemos a alinear texto e icono.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (18, 'es', 'Icono de etiqueta: añade un efecto visual',
        'Crea una etiqueta, establece un icono y añádela al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (19, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Alineación horizontal</h2>
<p class="intro">La alineación horizontal hace la interfaz ordenada. Encabezados centrados, etiquetas a la izquierda, números a la derecha — todo esto crea orden y legibilidad.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setHorizontalAlignment(int alignment)</code> — alineación horizontal</li>
  <li>Constantes: <code>SwingConstants.LEFT</code>, <code>CENTER</code>, <code>RIGHT</code></li>
  <li>Posicionar texto en una etiqueta</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La alineación hace la interfaz ordenada y profesional. La alineación correcta crea orden visual y mejora la legibilidad.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea una etiqueta con texto: <code>JLabel label = new JLabel("Texto");</code></li>
  <li>Establece la alineación: <code>label.setHorizontalAlignment(SwingConstants.CENTER);</code></li>
  <li>Añade al formulario: <code>add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> CENTER para encabezados, LEFT para texto normal</li>
  <li><strong>✅ Excelente:</strong> RIGHT para números y fechas — se ve ordenado</li>
  <li><strong>⚠️ Evita:</strong> Mezclar diferentes alineaciones sin sistema</li>
  <li><strong>❌ Mal:</strong> Olvidar la alineación — el texto puede no estar donde debe</li>
</ul>
<p><strong>Importante:</strong> Valores disponibles: <code>LEFT</code> (izquierda), <code>CENTER</code> (centro), <code>RIGHT</code> (derecha). Usa <code>SwingConstants</code> para las constantes. La alineación solo funciona si la etiqueta es más ancha que el texto. Se puede combinar con alineación vertical.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El texto en la etiqueta se alineará al borde especificado. CENTER — centrado, LEFT — izquierda, RIGHT — derecha.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (19, 'es', 'Alineación horizontal: coloca el texto correctamente',
        'Crea una etiqueta con texto "Centro", alíneala al centro y añádela al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (20, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Alineación vertical</h2>
<p class="intro">La alineación vertical es especialmente importante cuando la etiqueta es alta o está junto a otros elementos. Esto ayuda a crear armonía visual.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setVerticalAlignment(int alignment)</code> — alineación vertical</li>
  <li>Constantes: <code>SwingConstants.TOP</code>, <code>CENTER</code>, <code>BOTTOM</code></li>
  <li>Posicionar texto por altura</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La alineación vertical ayuda a alinear elementos en una línea. Todo debe estar al mismo nivel para armonía visual.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea una etiqueta: <code>JLabel label = new JLabel("Texto");</code></li>
  <li>Establece la alineación vertical: <code>label.setVerticalAlignment(SwingConstants.CENTER);</code></li>
  <li>Añade al formulario: <code>add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> CENTER para la mayoría de casos — universal</li>
  <li><strong>✅ Excelente:</strong> Combinación de alineación horizontal y vertical</li>
  <li><strong>⚠️ Evita:</strong> TOP o BOTTOM sin necesidad</li>
</ul>
<p><strong>Importante:</strong> Valores disponibles: <code>TOP</code> (arriba), <code>CENTER</code> (centro), <code>BOTTOM</code> (abajo). La alineación vertical se nota cuando la etiqueta es más alta que el texto. Se puede combinar con horizontal para control total. Usa CENTER por defecto.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El texto en la etiqueta se alineará verticalmente. CENTER — centrado en la altura de la etiqueta, TOP — arriba, BOTTOM — abajo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (20, 'es', 'Alineación vertical: sube o baja el texto',
        'Crea una etiqueta, alinea el texto verticalmente al centro y añádela al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (21, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Colores de etiqueta</h2>
<p class="intro">Una etiqueta de color atrae la atención y ayuda a resaltar información importante. Los colores ayudan a clasificar información.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>Métodos <code>setBackground(Color)</code> y <code>setForeground(Color)</code></li>
  <li>Colores de fondo y texto de una etiqueta</li>
  <li>Crear combinaciones contrastantes</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>¡Los colores ayudan a clasificar información! Una etiqueta roja para errores, verde para éxito, amarilla para advertencias. Esto hace la interfaz clara e informativa.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea una etiqueta: <code>JLabel label = new JLabel("Texto");</code></li>
  <li>Establece los colores: <code>label.setBackground(Color.YELLOW);</code><br><code>label.setForeground(Color.BLACK);</code><br><code>label.setOpaque(true);</code></li>
  <li>Añade al formulario: <code>add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Colores contrastantes — negro sobre amarillo, blanco sobre azul</li>
  <li><strong>✅ Excelente:</strong> <code>setOpaque(true)</code> para fondo visible</li>
  <li><strong>⚠️ Importante:</strong> Sin <code>setOpaque(true)</code> el fondo no será visible</li>
  <li><strong>❌ Evita:</strong> Colores demasiado brillantes o sin contraste</li>
</ul>
<p><strong>Importante:</strong> ¡Para un fondo visible necesitas llamar <code>setOpaque(true)</code>! Usa colores preestablecidos. Crea un esquema de colores: todas las etiquetas de un tipo — un color. Recuerda el contraste.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La etiqueta se mostrará con fondo y texto de color. En la siguiente lección aprenderemos a trabajar con fuentes.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (21, 'es', 'Colores de etiqueta: colorea la señal informativa',
        'Crea una etiqueta, establece fondo amarillo, texto negro y añádela al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (22, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Fuente de etiqueta</h2>
<p class="intro">La fuente determina el ambiente de la interfaz. Fuente en negrita para encabezados, normal para texto, cursiva para citas. La fuente correcta hace la interfaz legible y profesional.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setFont(Font font)</code> — establecer una fuente</li>
  <li>La clase <code>Font</code> para crear fuentes</li>
  <li>Estilos de fuente: normal, negrita, cursiva</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La fuente determina el ambiente de la interfaz y su legibilidad. La elección correcta de fuente hace la interfaz profesional.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea una etiqueta: <code>JLabel label = new JLabel("Texto");</code></li>
  <li>Establece la fuente: <code>Font font = new Font("Arial", Font.BOLD, 16);</code><br><code>label.setFont(font);</code></li>
  <li>Añade al formulario: <code>add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Fuentes legibles: Arial, Times New Roman, Verdana</li>
  <li><strong>✅ Tamaños:</strong> 12-16 para texto normal, 18+ para encabezados</li>
  <li><strong>⚠️ Evita:</strong> Fuentes decorativas — pueden ser ilegibles</li>
  <li><strong>❌ Mal:</strong> Tamaño demasiado pequeño o grande</li>
</ul>
<p><strong>Importante:</strong> Crear una fuente: <code>new Font("Nombre", Estilo, Tamaño)</code>. Estilos: <code>Font.PLAIN</code> (normal), <code>Font.BOLD</code> (negrita), <code>Font.ITALIC</code> (cursiva). Se pueden combinar: <code>Font.BOLD | Font.ITALIC</code>. Usa fuentes del sistema para compatibilidad.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El texto en la etiqueta cambiará su apariencia. La fuente en negrita hará el texto más grueso, la cursiva lo inclinará. El tamaño también cambiará.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (22, 'es', 'Fuente de etiqueta: elige el estilo de texto',
        'Crea una etiqueta, establece fuente Arial en negrita tamaño 16 y añádela al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (23, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Tamaño de etiqueta</h2>
<p class="intro">El tamaño de la etiqueta determina su función. Etiqueta grande — encabezado, pequeña — subtítulo. Los tamaños correctos crean jerarquía visual.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setSize(int width, int height)</code> — establecer tamaño</li>
  <li>El método <code>setPreferredSize(Dimension)</code> — tamaño preferido</li>
  <li>Gestionar tamaños de etiquetas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los tamaños correctos crean jerarquía visual y hacen la interfaz clara. El tamaño ayuda a determinar la función de la etiqueta en la interfaz.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea una etiqueta: <code>JLabel label = new JLabel("Texto");</code></li>
  <li>Establece el tamaño: <code>label.setSize(200, 50);</code></li>
  <li>Añade al formulario: <code>add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Tamaños que coincidan con el contenido</li>
  <li><strong>✅ Excelente:</strong> <code>setPreferredSize()</code> para trabajar con gestores de diseño</li>
  <li><strong>⚠️ Evita:</strong> Tamaños muy grandes — ocupará mucho espacio</li>
  <li><strong>❌ Mal:</strong> Tamaño menor que el contenido — el texto se cortará</li>
</ul>
<p><strong>Importante:</strong> <code>setSize()</code> — tamaño exacto (puede conflictuar con el diseño). <code>setPreferredSize()</code> — tamaño preferido (funciona con el diseño). La etiqueta se ajusta automáticamente al texto si no se establece el tamaño. Para encabezados: 300-400 píxeles de ancho. Para subtítulos: 100-200 píxeles.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La etiqueta será del tamaño especificado. El texto permanecerá dentro (o se cortará si no cabe).</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (23, 'es', 'Tamaño de etiqueta: hazla del tamaño correcto',
        'Crea una etiqueta, establece tamaño 200x50 y añádela al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (24, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Información sobre herramientas de etiqueta</h2>
<p class="intro">La información sobre herramientas (tooltip) ayuda al usuario a entender el propósito de un elemento. El usuario pasará el cursor y verá información adicional.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setToolTipText(String text)</code> — establecer información sobre herramientas</li>
  <li>Información sobre herramientas al pasar el cursor</li>
  <li>Información adicional para el usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La información sobre herramientas ayuda al usuario a entender el propósito de un elemento. Una etiqueta corta "ID" con información sobre herramientas "Identificador único de usuario" — todo queda claro inmediatamente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea una etiqueta: <code>JLabel label = new JLabel("ID");</code></li>
  <li>Establece la información sobre herramientas: <code>label.setToolTipText("Identificador único");</code></li>
  <li>Añade al formulario: <code>add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Información sobre herramientas corta e informativa</li>
  <li><strong>✅ Excelente:</strong> Información sobre herramientas para todos los elementos que puedan ser poco claros</li>
  <li><strong>⚠️ Evita:</strong> Información sobre herramientas muy larga — incómoda de leer</li>
  <li><strong>❌ Mal:</strong> Información sobre herramientas que duplique el texto de la etiqueta</li>
</ul>
<p><strong>Importante:</strong> La información sobre herramientas aparece al pasar el cursor y después de un retraso. Usa para explicar abreviaciones y acrónimos. La información sobre herramientas corta (hasta 50 caracteres) se lee mejor. Puedes usar HTML en la información sobre herramientas para formatear. La información sobre herramientas es especialmente útil para iconos sin texto.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al pasar el cursor sobre la etiqueta, aparecerá la información sobre herramientas. Mostrará el texto que especificaste. La información sobre herramientas desaparecerá cuando el cursor se aleje.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (24, 'es', 'Información sobre herramientas de etiqueta: añade ayuda emergente',
        'Crea una etiqueta, añade información sobre herramientas "¡Esto es una información sobre herramientas!" y añádela al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (25, 'es', '<div class="lesson-header">
<h2>🎮 Lección 10: HTML en etiqueta</h2>
<p class="intro">HTML permite crear texto formateado de forma bonita en etiquetas. Puedes usar texto en negrita, cursiva, colores y mucho más.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>Usar HTML en etiquetas a través de <code>setText()</code></li>
  <li>Formatear texto: negrita, cursiva, color</li>
  <li>Crear etiquetas visualmente atractivas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>HTML permite crear texto formateado en etiquetas. Sin HTML, la etiqueta solo será texto plano.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea una etiqueta: <code>JLabel label = new JLabel();</code></li>
  <li>Establece texto HTML: <code>label.setText("&lt;html&gt;&lt;b&gt;Negrita&lt;/b&gt;&lt;/html&gt;");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Requerido:</strong> Envuelve HTML en etiquetas <code>&lt;html&gt;&lt;/html&gt;</code></li>
  <li><strong>✅ Usa:</strong> <code>&lt;b&gt;</code> para texto en negrita, <code>&lt;i&gt;</code> para cursiva</li>
  <li><strong>✅ Combina:</strong> Puedes combinar etiquetas para formateo complejo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El texto en la etiqueta se formateará según las etiquetas HTML. Se aplicarán texto en negrita, cursiva y otros estilos.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (25, 'es', 'HTML en etiqueta: texto formateado',
        'Crea una etiqueta con texto HTML "&lt;b&gt;Negrita&lt;/b&gt;" y añádela al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (26, 'es', '<div class="lesson-header">
<h2>🎮 Lección 11: Icono en una etiqueta</h2>
<p class="intro">Una etiqueta puede mostrar no solo texto, sino también una imagen. Los iconos hacen las etiquetas visualmente atractivas.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setIcon()</code> — establecer un icono</li>
  <li>La clase <code>ImageIcon</code> — icono de imagen</li>
  <li>Crear etiquetas con iconos</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los iconos hacen las etiquetas visualmente atractivas. Botones, menús, listas — los iconos se usan en todas partes. Sin ellos, la interfaz será solo texto.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea un icono: <code>ImageIcon icon = new ImageIcon("icon.png");</code></li>
  <li>Establece el icono: <code>label.setIcon(icon);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setIcon()</code> para establecer un icono</li>
  <li><strong>✅ Además:</strong> <code>setIconTextGap()</code> para espaciado, <code>setHorizontalTextPosition()</code> para posición del texto</li>
  <li><strong>✅ Combina:</strong> Texto e icono juntos</li>
  <li><strong>⚠️ Evita:</strong> Iconos demasiado grandes — puede verse desordenado</li>
</ul>
<p><strong>Importante:</strong> <code>ImageIcon(String)</code> — crear un icono desde un archivo. Puedes usar <code>setVerticalTextPosition()</code> para posición vertical del texto.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La etiqueta mostrará un icono. El icono aparecerá junto al texto o en su lugar.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (26, 'es', 'Etiqueta maestra: añade un icono a la etiqueta',
        'Crea un ImageIcon desde el archivo "icon.png", establece el icono en la etiqueta mediante setIcon()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (27, 'es', '<div class="lesson-header">
<h2>🎮 Lección 12: Alineación de texto</h2>
<p class="intro">La alineación de texto hace las etiquetas ordenadas. Puedes alinear texto al centro, izquierda, derecha.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setHorizontalAlignment()</code> — alineación horizontal</li>
  <li>El método <code>setVerticalAlignment()</code> — alineación vertical</li>
  <li>Configurar alineación de texto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La alineación de texto hace las etiquetas ordenadas y profesionales. Sin alineación, el texto estará en una posición impredecible.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Alinea horizontalmente: <code>label.setHorizontalAlignment(SwingConstants.CENTER);</code></li>
  <li>Alinea verticalmente: <code>label.setVerticalAlignment(SwingConstants.CENTER);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> CENTER para centrar</li>
  <li><strong>✅ Excelente:</strong> LEFT/RIGHT para alineación, combinar horizontal y vertical</li>
  <li><strong>⚠️ Evita:</strong> Diferente alineación para diferentes etiquetas sin sistema</li>
</ul>
<p><strong>Importante:</strong> CENTER, LEFT, RIGHT — constantes de alineación. TOP, BOTTOM — constantes verticales. Usa <code>SwingConstants</code> para las constantes.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El texto en la etiqueta se alineará. El texto tomará la posición especificada.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (27, 'es', 'Etiqueta maestra: alinea el texto',
        'Establece alineación horizontal y vertical CENTER mediante setHorizontalAlignment() y setVerticalAlignment()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (28, 'es', '<div class="lesson-header">
<h2>🎮 Lección 13: Contenido HTML en etiqueta</h2>
<p class="intro">HTML permite crear texto formateado complejo. Puedes combinar negrita y cursiva, añadir colores, crear listas.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>Usar etiquetas HTML en etiquetas</li>
  <li>Combinar formateo: negrita y cursiva</li>
  <li>Crear texto formateado complejo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>HTML permite crear texto formateado en etiquetas. Sin HTML, la etiqueta solo será texto plano.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea una etiqueta: <code>JLabel label = new JLabel();</code></li>
  <li>Establece texto HTML: <code>label.setText("&lt;html&gt;&lt;b&gt;Negrita&lt;/b&gt; y &lt;i&gt;Cursiva&lt;/i&gt;&lt;/html&gt;");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Requerido:</strong> Envuelve HTML en etiquetas <code>&lt;html&gt;&lt;/html&gt;</code></li>
  <li><strong>✅ Usa:</strong> <code>&lt;b&gt;</code> para texto en negrita, <code>&lt;i&gt;</code> para cursiva</li>
  <li><strong>✅ Combina:</strong> Puedes combinar etiquetas para formateo complejo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El texto en la etiqueta se formateará según las etiquetas HTML. Puedes crear formateo complejo con combinación de estilos.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (28, 'es', 'Etiqueta maestra: añade contenido HTML',
        'Establece texto con etiquetas HTML: &lt;b&gt;Negrita&lt;/b&gt; y &lt;i&gt;Cursiva&lt;/i&gt;')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (29, 'es', '<div class="lesson-header">
<h2>🎮 Lección 14: Alineación de icono</h2>
<p class="intro">La alineación de icono determina su posición. Puedes colocar el icono a la izquierda, derecha, centro.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setHorizontalAlignment()</code> — alineación horizontal</li>
  <li>El método <code>setVerticalAlignment()</code> — alineación vertical</li>
  <li>Configurar posición de icono</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La alineación de icono determina su posición en la etiqueta. Sin configuración, el icono estará en la posición por defecto.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece el icono: <code>label.setIcon(new ImageIcon("icon.png"));</code></li>
  <li>Establece la alineación: <code>label.setHorizontalAlignment(SwingConstants.LEFT);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setHorizontalAlignment()</code> para horizontal, <code>setVerticalAlignment()</code> para vertical</li>
  <li><strong>✅ Constantes:</strong> LEFT, CENTER, RIGHT para horizontal, TOP, BOTTOM para vertical</li>
  <li><strong>✅ Combina:</strong> Con texto para control total</li>
  <li><strong>⚠️ Evita:</strong> Cambios frecuentes de alineación</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El icono estará en la posición especificada. Puedes colocar el icono a la izquierda, derecha o centro.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (29, 'es', 'Etiqueta maestra: configura la alineación de icono',
        'Establece un icono, establece alineación horizontal LEFT mediante setHorizontalAlignment()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (30, 'es', '<div class="lesson-header">
<h2>🎮 Lección 15: Alineación vertical</h2>
<p class="intro">La alineación vertical determina la posición del texto. Puedes colocar texto arriba, centro, abajo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setVerticalAlignment()</code> — alineación vertical</li>
  <li>Constantes de alineación (TOP, CENTER, BOTTOM)</li>
  <li>Configurar posición de texto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La alineación vertical determina la posición del texto en la etiqueta. Sin configuración, el texto estará en la posición por defecto.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece la alineación: <code>label.setVerticalAlignment(SwingConstants.TOP);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setVerticalAlignment()</code> para alineación vertical</li>
  <li><strong>✅ Constantes:</strong> TOP (arriba), CENTER (centro), BOTTOM (abajo)</li>
  <li><strong>✅ Combina:</strong> Con horizontal para control total</li>
  <li><strong>⚠️ Evita:</strong> Cambios frecuentes de alineación</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El texto estará en la posición especificada. Puedes colocar texto arriba, centro o abajo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (30, 'es', 'Etiqueta maestra: configura la alineación vertical',
        'Establece alineación vertical TOP mediante setVerticalAlignment()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (31, 'es', '<div class="lesson-header">
<h2>🎮 Lección 16: Posición de texto relativa al icono</h2>
<p class="intro">La posición de texto determina su ubicación relativa al icono. Puedes colocar texto arriba, abajo, izquierda, derecha del icono.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setVerticalTextPosition()</code> — posición vertical</li>
  <li>El método <code>setHorizontalTextPosition()</code> — posición horizontal</li>
  <li>Configurar posición de texto e icono</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La posición de texto determina su ubicación relativa al icono. Sin configuración, la posición será por defecto.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece el icono: <code>label.setIcon(new ImageIcon("icon.png"));</code></li>
  <li>Establece la posición del texto: <code>label.setHorizontalTextPosition(SwingConstants.RIGHT);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setHorizontalTextPosition()</code> para horizontal, <code>setVerticalTextPosition()</code> para vertical</li>
  <li><strong>✅ Constantes:</strong> LEFT, CENTER, RIGHT para horizontal, TOP, BOTTOM para vertical</li>
  <li><strong>⚠️ Evita:</strong> Cambios frecuentes de posición</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El texto estará en la posición especificada relativa al icono. Puedes colocar texto a la izquierda, derecha, arriba o abajo del icono.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (31, 'es', 'Etiqueta maestra: configura la posición del texto',
        'Establece un icono, establece posición horizontal del texto RIGHT mediante setHorizontalTextPosition()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (32, 'es', '<div class="lesson-header">
<h2>🎮 Lección 17: Mnemónico para etiqueta</h2>
<p class="intro">El mnemónico mejora la accesibilidad de la interfaz. Puedes asignar una tecla de acceso rápido a una etiqueta, vincularla con un componente, mejorar la navegación.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setDisplayedMnemonic()</code> — establecer un mnemónico</li>
  <li>El método <code>setLabelFor()</code> — vincular con un componente</li>
  <li>Crear interfaces accesibles</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>¡El mnemónico mejora la accesibilidad! Puedes activar el componente vinculado mediante Alt+tecla sin usar el ratón. Sin mnemónico, necesitas usar el ratón.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece el mnemónico: <code>label.setDisplayedMnemonic(KeyEvent.VK_N);</code></li>
  <li>Vincula con un componente: <code>label.setLabelFor(textField);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setDisplayedMnemonic()</code> con constantes <code>KeyEvent.VK_*</code></li>
  <li><strong>✅ Vincula:</strong> Con un componente mediante <code>setLabelFor()</code></li>
  <li><strong>✅ Mejora:</strong> La accesibilidad de la interfaz</li>
  <li><strong>⚠️ Evita:</strong> Duplicar mnemónicos</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La letra mnemónica estará subrayada en el texto de la etiqueta. Al presionar Alt+tecla, el foco se moverá al componente vinculado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (32, 'es', 'Etiqueta maestra: establece mnemónico',
        'Establece mnemónico VK_N mediante setDisplayedMnemonic(), vincula con un componente mediante setLabelFor()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (33, 'es', '<div class="lesson-header">
<h2>🎮 Lección 18: Borde de etiqueta</h2>
<p class="intro">El borde mejora la apariencia visual de una etiqueta. Puedes añadir un marco, mejorar el diseño.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setBorder()</code> — establecer un borde</li>
  <li>La clase <code>BorderFactory</code> — fábrica de bordes</li>
  <li>Mejorar la apariencia visual</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El borde mejora la apariencia visual de una etiqueta. Puedes añadir un marco para resaltar un elemento o mejorar el diseño.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea un borde: <code>Border border = BorderFactory.createLineBorder(Color.BLACK, 1);</code></li>
  <li>Establece el borde: <code>label.setBorder(border);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setBorder()</code> para establecer, <code>BorderFactory</code> para crear</li>
  <li><strong>✅ Excelente:</strong> <code>createLineBorder()</code> para una línea simple</li>
  <li><strong>⚠️ Evita:</strong> Borde demasiado grueso — puede verse tosco</li>
</ul>
<p><strong>Importante:</strong> Usa para mejorar la apariencia. Haz el borde moderadamente grueso.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La etiqueta tendrá un borde. Puedes mejorar la apariencia visual y resaltar el elemento.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (33, 'es', 'Etiqueta maestra: añade un borde',
        'Crea un borde mediante BorderFactory.createLineBorder(Color.BLACK, 1), establece mediante setBorder()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (34, 'es', '<div class="lesson-header">
<h2>🎮 Lección 19: Distancia entre icono y texto</h2>
<p class="intro">La distancia mejora la apariencia visual de una etiqueta. Puedes establecer espaciado entre icono y texto, mejorar la legibilidad.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setIconTextGap()</code> — establecer distancia</li>
  <li>Gestionar espaciado entre icono y texto</li>
  <li>Mejorar la apariencia visual</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La distancia mejora la legibilidad. Sin distancia, el icono y el texto estarán juntos, lo que empeora la percepción visual.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece la distancia: <code>label.setIconTextGap(10);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setIconTextGap()</code> para establecer distancia</li>
  <li><strong>✅ Valores razonables:</strong> 5-15 píxeles — óptimo para la mayoría de casos</li>
  <li><strong>⚠️ Evita:</strong> Distancia demasiado grande o pequeña</li>
</ul>
<p><strong>Importante:</strong> Usa para mejorar la apariencia y legibilidad. Haz la distancia cómoda para la percepción.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá distancia entre el icono y el texto. Esto mejorará la apariencia visual y legibilidad de la etiqueta.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (34, 'es', 'Etiqueta maestra: establece distancia entre icono y texto',
        'Establece distancia 10 mediante setIconTextGap()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Spanish)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
