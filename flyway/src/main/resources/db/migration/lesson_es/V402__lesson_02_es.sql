-- Flyway migration V4: Lesson 2
-- This migration contains lesson, tasks, and documentation for lesson 2

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (2, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear un botón</h2>
<p class="intro">Tu primer paso en Java Swing es crear un botón. Sin botones, los usuarios no pueden interactuar con la aplicación.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>La clase <code>JButton</code> — componente visual básico</li>
  <li>El método <code>add()</code> — agregar un componente al formulario</li>
  <li>Estructura para crear elementos de interfaz</li>
</ul>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea un objeto botón:<br><code>JButton button = new JButton();</code></li>
  <li>Agrega el botón al formulario:<br><code>add(button);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Crear una variable, luego agregar — el código es más legible</li>
  <li><strong>⚠️ Aceptable:</strong> <code>add(new JButton());</code> — funciona, pero el botón no se puede configurar</li>
  <li><strong>❌ Mal:</strong> Olvidar <code>add()</code> — el botón no aparecerá en pantalla</li>
</ul>
<p><strong>Importante:</strong> En el editor, el código se ejecuta dentro de una ventana lista, por lo que <code>add()</code> está disponible inmediatamente. Usa nombres de variables claros.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un botón gris de tamaño estándar en el formulario. En las siguientes lecciones aprenderemos a personalizar su apariencia.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (2, 'es', 'Botón principiante: invoca al héroe', 'Crea un botón y agrégalo al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (3, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Agregar texto a un botón</h2>
<p class="intro">Un botón sin texto no es informativo para el usuario. Aprenderemos a agregar etiquetas para mejorar la experiencia del usuario.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setText(String text)</code> — establecer texto en un botón</li>
  <li>Trabajar con cadenas en Java</li>
  <li>Principios de interfaces de usuario claras</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El texto en un botón es la forma principal de comunicarse con el usuario. Las etiquetas claras ("Guardar", "Cancelar") hacen que la interfaz sea intuitiva y profesional.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea un botón: <code>JButton button = new JButton();</code></li>
  <li>Establece el texto: <code>button.setText("¡Vamos!");</code></li>
  <li>Agrega al formulario: <code>add(button);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Texto corto y claro entre comillas — "Guardar", "Cancelar"</li>
  <li><strong>⚠️ Evita:</strong> Textos largos (el botón se estirará), comillas olvidadas (<code>setText(Vamos)</code> no funcionará), cadenas vacías</li>
</ul>
<p><strong>Importante:</strong> El texto siempre va entre comillas dobles. Usa palabras claras. Orden de llamadas: primero <code>setText()</code>, luego <code>add()</code>.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El texto establecido se mostrará en el botón. El botón se ajustará automáticamente al tamaño del texto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (3, 'es', 'Hechizo de texto: dale un nombre al botón',
        'Crea un botón, establece su texto y agrégalo al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (4, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Cambiar el color de fondo</h2>
<p class="intro">El color ayuda a resaltar elementos importantes y mejorar la jerarquía visual de la interfaz.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setBackground(Color color)</code></li>
  <li>La clase <code>Color</code> de AWT</li>
  <li>Colores preestablecidos: <code>Color.YELLOW</code>, <code>Color.RED</code>, <code>Color.BLUE</code></li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los colores ayudan al usuario a orientarse: amarillo — atención, rojo — peligro, verde — éxito. Los colores correctos hacen que la interfaz sea intuitiva.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea un botón: <code>JButton button = new JButton();</code></li>
  <li>Establece el color: <code>button.setBackground(Color.YELLOW);</code></li>
  <li>Agrega al formulario: <code>add(button);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Colores preestablecidos (<code>Color.YELLOW</code>, <code>Color.RED</code>, <code>Color.GREEN</code>)</li>
  <li><strong>⚠️ Avanzado:</strong> Color personalizado vía RGB: <code>new Color(255, 200, 0)</code></li>
  <li><strong>❌ Evita:</strong> Colores demasiado brillantes o de bajo contraste</li>
</ul>
<p><strong>Colores disponibles:</strong> <code>RED</code>, <code>GREEN</code>, <code>BLUE</code>, <code>YELLOW</code>, <code>ORANGE</code>, <code>PINK</code>, <code>CYAN</code>, <code>MAGENTA</code>, <code>WHITE</code>, <code>BLACK</code>, <code>GRAY</code></p>
<p><strong>Práctica:</strong> Usa colores de manera significativa (rojo — eliminar, verde — guardar). El orden de las llamadas no es importante.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El botón se mostrará con un fondo amarillo. El texto permanecerá visible si su color contrasta con el fondo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (4, 'es', 'Piel del botón: ¡oro!', 'Crea un botón, pinta el fondo de amarillo y agrégalo al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (5, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Color del texto</h2>
<p class="intro">Gestionar el color del texto para crear una interfaz legible. El contraste adecuado es crítico para la legibilidad.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setForeground(Color color)</code> — establecer el color del texto</li>
  <li>Diferencia entre <code>setForeground()</code> (texto) y <code>setBackground()</code> (fondo)</li>
  <li>Concepto de contraste y legibilidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El contraste adecuado es crítico para la legibilidad. El texto blanco sobre un fondo blanco es invisible. Las interfaces profesionales usan combinaciones de colores probadas.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea un botón: <code>JButton button = new JButton();</code></li>
  <li>Establece el color del texto: <code>button.setForeground(Color.WHITE);</code></li>
  <li>Agrega al formulario: <code>add(button);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Bien:</strong> Texto blanco sobre fondo oscuro o negro sobre claro — contraste perfecto</li>
  <li><strong>✅ Pares clásicos:</strong> blanco sobre azul, negro sobre amarillo, blanco sobre rojo</li>
  <li><strong>⚠️ Verifica:</strong> Texto de color sobre fondo de color — necesitas verificar la legibilidad</li>
  <li><strong>❌ Evita:</strong> Texto y fondo del mismo color, texto amarillo sobre fondo blanco</li>
</ul>
<p><strong>Regla:</strong> fondo oscuro → texto claro, fondo claro → texto oscuro. El orden de las llamadas no es importante.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El texto en el botón se mostrará en blanco. Con un fondo oscuro, el texto blanco proporciona una excelente legibilidad.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (5, 'es', 'Color del texto: legible y hermoso', '¡Crea un botón, haz el texto blanco y agrégalo al formulario!')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (6, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Gestionar el tamaño del botón</h2>
<p class="intro">El tamaño del botón afecta su importancia y usabilidad. Los botones grandes atraen la atención, los pequeños reducen el riesgo de acciones accidentales.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setSize(int width, int height)</code> — establecer tamaño en píxeles</li>
  <li>Parámetros: ancho (width) y alto (height)</li>
  <li>Interacción con gestores de diseño</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El tamaño del botón determina su importancia y conveniencia. Un botón grande "Guardar" atrae la atención y es más fácil de presionar. Los tamaños correctos hacen que la interfaz sea intuitiva.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea un botón: <code>JButton button = new JButton();</code></li>
  <li>Establece el tamaño: <code>button.setSize(320, 200);</code></li>
  <li>Agrega al formulario: <code>add(button);</code></li>
</ol>
<p><strong>Nota:</strong> El primer parámetro es el ancho, el segundo es el alto.</p>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Tamaños estándar:</strong> pequeño (100x30), mediano (200x50), grande (320x200)</li>
  <li><strong>✅ Mínimo:</strong> 80x30 para presionar cómodamente</li>
  <li><strong>✅ Jerarquía:</strong> botón principal — el más grande</li>
  <li><strong>❌ Evita:</strong> Números negativos, tamaño cero, valores demasiado grandes</li>
</ul>
<p><strong>Importante:</strong> No confundas ancho y alto. Considera la longitud del texto y las limitaciones del gestor de diseño.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El botón se mostrará a 320x200 píxeles. El texto permanecerá centrado, el color de fondo llenará toda el área.</p>
<p class="summary"><strong>Resumen:</strong> Has dominado las habilidades básicas de trabajar con botones: creación, texto, colores y tamaños. Por delante — manejo de eventos y creación de interfaces completas.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (6, 'es', 'Hitbox: haz el botón enorme',
        'Crea un botón, establece su tamaño a 320x200 y agrégalo al formulario.')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (7, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Teclas de acceso rápido (mnemónica)</h2>
<p class="intro">Agregar acceso rápido mediante teclado. Las teclas de acceso rápido aceleran el trabajo para usuarios experimentados y mejoran la accesibilidad de la interfaz.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setMnemonic(int)</code> — establecer mnemónica</li>
  <li>Teclas de acceso rápido para botones (Alt + letra)</li>
  <li>Subrayar una letra en el texto mediante HTML</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>¡Las teclas de acceso rápido aceleran el trabajo! Puedes activar un botón sin un mouse, lo cual es conveniente para usuarios experimentados. La activación sin mouse aumenta la eficiencia.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece la mnemónica: <code>button.setMnemonic(KeyEvent.VK_O);</code></li>
  <li>Subraya la letra en el texto: <code>button.setText("&lt;html&gt;&lt;u&gt;A&lt;/u&gt;brir&lt;/html&gt;");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> La primera letra de la palabra para la mnemónica</li>
  <li><strong>✅ Muestra:</strong> Subrayar la letra en el texto mediante HTML</li>
  <li><strong>✅ Usa:</strong> Constantes <code>KeyEvent.VK_*</code> para confiabilidad</li>
  <li><strong>⚠️ Evita:</strong> Letras raras, conflictos con otras teclas de acceso rápido</li>
</ul>
<p><strong>Importante:</strong> La activación ocurre mediante Alt + letra. Resalta visualmente la mnemónica en el texto del botón.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La letra en el texto del botón estará subrayada. Presionar Alt + letra activará el botón.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (7, 'es', 'Botón maestro: agrega una tecla de acceso rápido',
        'Establece la mnemónica VK_O mediante setMnemonic(), subraya la letra en el texto mediante HTML')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (8, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Icono con texto</h2>
<p class="intro">Combinar un elemento visual y texto hace que los botones sean más informativos y atractivos.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>Combinar icono y texto</li>
  <li>El método <code>setIconTextGap()</code> — espacio entre elementos</li>
  <li>Posicionar texto relativo al icono</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario</h3>
<p>El icono con texto mejora la comprensión del propósito del botón. El elemento visual atrae la atención, el texto aclara la acción.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece el icono: <code>button.setIcon(new ImageIcon("icon.png"));</code></li>
  <li>Establece el texto: <code>button.setText("Guardar");</code></li>
  <li>Establece el espacio: <code>button.setIconTextGap(5);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setIconTextGap()</code> para controlar la distancia</li>
  <li><strong>✅ Además:</strong> <code>setHorizontalTextPosition()</code> y <code>setVerticalTextPosition()</code> para posicionamiento</li>
  <li><strong>⚠️ Evita:</strong> Iconos demasiado grandes — rompen el equilibrio</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Tanto el icono como el texto se mostrarán en el botón uno al lado del otro. El espacio entre ellos se puede ajustar para una apariencia óptima.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (8, 'es', 'Botón maestro: agrega icono con texto',
        'Establece el icono mediante setIcon(), establece el texto mediante setText(), establece el espacio 5 mediante setIconTextGap()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (9, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Mnemónica para botón</h2>
<p class="intro">Agregar una mnemónica permite activar el botón mediante Alt+letra, acelerando el trabajo para usuarios experimentados.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setMnemonic()</code> — establecer mnemónica</li>
  <li>Subrayar una letra en el texto mediante el símbolo &</li>
  <li>Crear botones accesibles</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>¡La mnemónica acelera el trabajo! Puedes activar el botón mediante Alt+letra sin usar un mouse. Sin mnemónica, tendrás que hacer clic con el mouse.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece la mnemónica: <code>button.setMnemonic(KeyEvent.VK_S);</code></li>
  <li>Agrega subrayado al texto: <code>button.setText("Guardar (&S)");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMnemonic()</code> con constantes <code>KeyEvent.VK_*</code></li>
  <li><strong>✅ Muestra:</strong> La mnemónica en el texto mediante el símbolo &</li>
  <li><strong>✅ Usa:</strong> Letras únicas, primera letra de la palabra</li>
  <li><strong>⚠️ Evita:</strong> Duplicar mnemónicas — puede causar conflicto</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La letra en el texto del botón estará subrayada. Puedes activar el botón mediante Alt+letra.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (9, 'es', 'Botón maestro: agrega mnemónica',
        'Establece la mnemónica VK_S mediante setMnemonic(), agrega &S al texto del botón')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (10, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Icono al pasar el mouse</h2>
<p class="intro">El icono al pasar el mouse hace que el botón sea interactivo y mejora la retroalimentación visual con el usuario.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setRolloverIcon()</code> — icono al pasar el mouse</li>
  <li>Crear botones interactivos</li>
  <li>Mejorar la experiencia del usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El icono al pasar el mouse mejora la retroalimentación visual. Puedes mostrar un icono diferente al pasar el mouse, haciendo que el botón sea más interactivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece el icono normal: <code>button.setIcon(new ImageIcon("normal.png"));</code></li>
  <li>Establece el icono al pasar: <code>button.setRolloverIcon(new ImageIcon("hover.png"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setRolloverIcon()</code> para pasar el mouse</li>
  <li><strong>✅ Además:</strong> <code>setPressedIcon()</code> para presionar, <code>setSelectedIcon()</code> para selección</li>
  <li><strong>✅ Combina:</strong> Diferentes iconos para diferentes estados</li>
  <li><strong>⚠️ Evita:</strong> Demasiados iconos diferentes — puede ser excesivo</li>
</ul>
<p><strong>Importante:</strong> Usa para retroalimentación visual. Haz que los iconos sean claros y distinguibles.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al pasar el mouse, el icono cambiará. El botón se volverá más interactivo e informativo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (10, 'es', 'Botón maestro: agrega icono al pasar el mouse',
        'Establece el icono normal mediante setIcon(), establece el icono al pasar mediante setRolloverIcon()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (11, 'es', '<div class="lesson-header">
<h2>🎮 Lección 10: Icono para botón deshabilitado</h2>
<p class="intro">El icono para botón deshabilitado mejora la retroalimentación visual y ayuda al usuario a entender el estado del botón.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setDisabledIcon()</code> — icono para botón deshabilitado</li>
  <li>Crear retroalimentación visual</li>
  <li>Mejorar la experiencia del usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El icono para botón deshabilitado mejora la comprensión del estado. Puedes mostrar un icono diferente cuando el botón está deshabilitado, mejorando la retroalimentación visual.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece el icono normal: <code>button.setIcon(new ImageIcon("normal.png"));</code></li>
  <li>Establece el icono deshabilitado: <code>button.setDisabledIcon(new ImageIcon("disabled.png"));</code></li>
  <li>Deshabilita el botón: <code>button.setEnabled(false);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setDisabledIcon()</code> para botón deshabilitado</li>
  <li><strong>✅ Además:</strong> Combina con <code>setPressedIcon()</code> y <code>setSelectedIcon()</code></li>
  <li><strong>✅ Haz:</strong> Que los iconos sean claros y distinguibles</li>
  <li><strong>⚠️ Evita:</strong> Demasiados iconos diferentes — puede ser excesivo</li>
</ul>
<p><strong>Importante:</strong> Usa para retroalimentación visual. El icono debe mostrar claramente que el botón está deshabilitado.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Cuando esté deshabilitado, el icono cambiará. El botón mostrará un icono diferente cuando esté deshabilitado, mejorando la comprensión del estado.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (11, 'es', 'Botón maestro: agrega icono para botón deshabilitado',
        'Establece el icono normal mediante setIcon(), establece el icono deshabilitado mediante setDisabledIcon(), deshabilita el botón')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (12, 'es', '<div class="lesson-header">
<h2>🎮 Lección 11: Icono al presionar</h2>
<p class="intro">El icono al presionar hace que el botón sea interactivo y mejora la retroalimentación visual durante la interacción.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setPressedIcon()</code> — icono al presionar</li>
  <li>Crear botones interactivos</li>
  <li>Mejorar la experiencia del usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El icono al presionar mejora la retroalimentación visual. Puedes mostrar un icono diferente al presionar el mouse, haciendo que el botón sea más interactivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece el icono normal: <code>button.setIcon(new ImageIcon("normal.png"));</code></li>
  <li>Establece el icono de presión: <code>button.setPressedIcon(new ImageIcon("pressed.png"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setPressedIcon()</code> para presionar</li>
  <li><strong>✅ Además:</strong> Combina con <code>setRolloverIcon()</code> y <code>setSelectedIcon()</code></li>
  <li><strong>✅ Haz:</strong> Que los iconos sean claros y distinguibles</li>
  <li><strong>⚠️ Evita:</strong> Demasiados iconos diferentes — puede ser excesivo</li>
</ul>
<p><strong>Importante:</strong> Usa para retroalimentación visual. El icono debe mostrar claramente el estado presionado.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al presionar, el icono cambiará. El botón se volverá más interactivo e informativo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (12, 'es', 'Botón maestro: agrega icono al presionar',
        'Establece el icono normal mediante setIcon(), establece el icono de presión mediante setPressedIcon()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (13, 'es', '<div class="lesson-header">
<h2>🎮 Lección 12: Icono al pasar el mouse (rollover)</h2>
<p class="intro">El icono al pasar el mouse hace que el botón sea interactivo y mejora la retroalimentación visual al pasar el mouse.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setRolloverIcon()</code> — icono al pasar el mouse</li>
  <li>El método <code>setRolloverEnabled()</code> — habilitar/deshabilitar pasar el mouse</li>
  <li>Crear botones interactivos</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El icono al pasar el mouse mejora la retroalimentación visual. Puedes mostrar un icono diferente al pasar el mouse, haciendo que el botón sea más interactivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece el icono normal: <code>button.setIcon(new ImageIcon("normal.png"));</code></li>
  <li>Establece el icono al pasar: <code>button.setRolloverIcon(new ImageIcon("rollover.png"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setRolloverIcon()</code> para pasar el mouse</li>
  <li><strong>✅ Además:</strong> <code>setRolloverEnabled(true)</code> para habilitar, combina con <code>setPressedIcon()</code></li>
  <li><strong>✅ Haz:</strong> Que los iconos sean claros y distinguibles</li>
  <li><strong>⚠️ Evita:</strong> Demasiados iconos diferentes — puede ser excesivo</li>
</ul>
<p><strong>Importante:</strong> Usa para retroalimentación visual. Combina con otros iconos para control completo de estados.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al pasar el mouse, el icono cambiará. El botón se volverá más interactivo e informativo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (13, 'es', 'Botón maestro: agrega icono al pasar el mouse',
        'Establece el icono normal mediante setIcon(), establece el icono al pasar mediante setRolloverIcon()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (14, 'es', '<div class="lesson-header">
<h2>🎮 Lección 13: Icono al seleccionar</h2>
<p class="intro">El icono al seleccionar hace que el botón sea interactivo y mejora la retroalimentación visual al seleccionar el botón.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setSelectedIcon()</code> — icono al seleccionar</li>
  <li>Crear botones interactivos</li>
  <li>Mejorar la experiencia del usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El icono al seleccionar mejora la retroalimentación visual. Puedes mostrar un icono diferente al seleccionar el botón, mejorando la comprensión del estado.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece el icono normal: <code>button.setIcon(new ImageIcon("normal.png"));</code></li>
  <li>Establece el icono de selección: <code>button.setSelectedIcon(new ImageIcon("selected.png"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setSelectedIcon()</code> para selección</li>
  <li><strong>✅ Además:</strong> Combina con <code>setRolloverIcon()</code> para control completo</li>
  <li><strong>✅ Haz:</strong> Que los iconos sean claros y distinguibles</li>
  <li><strong>⚠️ Evita:</strong> Demasiados iconos diferentes — puede ser excesivo</li>
</ul>
<p><strong>Importante:</strong> Usa para retroalimentación visual. El icono debe mostrar claramente el estado de selección.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al seleccionar, el icono cambiará. El botón se volverá más interactivo e informativo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (14, 'es', 'Botón maestro: agrega icono al seleccionar',
        'Establece el icono normal mediante setIcon(), establece el icono de selección mediante setSelectedIcon()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (15, 'es', '<div class="lesson-header">
<h2>🎮 Lección 14: Icono al deshabilitar</h2>
<p class="intro">El icono al deshabilitar mejora la retroalimentación visual y ayuda al usuario a entender que el botón no está disponible.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>El método <code>setDisabledIcon()</code> — icono al deshabilitar</li>
  <li>Crear retroalimentación visual</li>
  <li>Mejorar la experiencia del usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El icono al deshabilitar mejora la comprensión del estado. Puedes mostrar un icono diferente al deshabilitar, mejorando la retroalimentación visual.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece el icono normal: <code>button.setIcon(new ImageIcon("normal.png"));</code></li>
  <li>Establece el icono deshabilitado: <code>button.setDisabledIcon(new ImageIcon("disabled.png"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setDisabledIcon()</code> para deshabilitar</li>
  <li><strong>✅ Combina:</strong> Con <code>setIcon()</code> y otros iconos</li>
  <li><strong>✅ Haz:</strong> Que los iconos sean claros y distinguibles</li>
  <li><strong>⚠️ Evita:</strong> Iconos demasiado similares — el usuario no notará la diferencia</li>
</ul>
<p><strong>Importante:</strong> Usa para retroalimentación visual. El icono debe mostrar claramente que el botón está deshabilitado.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Al deshabilitar, el icono cambiará. El botón se volverá más informativo y claro para el usuario.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (15, 'es', 'Botón maestro: agrega icono al deshabilitar',
        'Establece el icono normal mediante setIcon(), establece el icono deshabilitado mediante setDisabledIcon()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Spanish)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
