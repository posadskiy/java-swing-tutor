-- Flyway migration V4: Lesson 26
-- This migration contains lesson, tasks, and documentation for lesson 26

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (212, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Crear Elemento de Menú</h2>
<p class="intro">Los elementos de menú realizan acciones. Abrir archivo, guardar, salir — estos son elementos de menú. Sin ellos, el menú es inútil. Los elementos de menú son comandos de la aplicación.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>JMenuItem</code> — elemento de menú</li>
  <li>Crear elemento de menú</li>
  <li>Agregar manejador de acciones</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los elementos de menú son necesarios para ejecutar comandos de la aplicación y proporcionar acceso a funciones.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea elemento de menú: <code>JMenuItem openItem = new JMenuItem("Abrir");</code></li>
  <li>Agrega manejador: <code>JLabel label = new JLabel();<br>
openItem.addActionListener(e -> label.setText("Abrir archivo"));<br>
add(label);</code></li>
  <li>Agrega al menú: <code>fileMenu.add(openItem);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Nombres claros de elementos</li>
  <li><strong>✅ Excelente:</strong> Agregar icono: <code>new JMenuItem("Abrir", icon);</code>, tecla de acceso rápido: <code>openItem.setAccelerator(KeyStroke.getKeyStroke("ctrl O"));</code></li>
  <li><strong>⚠️ Evita:</strong> Elemento sin manejador — nada sucederá</li>
</ul>
<p><strong>Importante:</strong> Mnemónico: <code>setMnemonic(KeyEvent.VK_O);</code> — letra subrayada.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerá un elemento "Abrir" en el menú. Al hacer clic, se realizará una acción (por ejemplo, se mostrará un mensaje). Si hay una tecla de acceso rápido, puedes usarla en lugar de hacer clic.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (212, 'es', 'Elemento de Menú Principiante: Crear Acción en Menú',
        'Crea elemento de menú "Abrir", agrega manejador y agrega al menú')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (213, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Posición del Divisor en Panel Dividido</h2>
<p class="intro">La posición del divisor determina la proporción inicial de los paneles. Puedes establecer división igual o dar más espacio a un panel. Sin configuración, el divisor estará en el centro.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setDividerLocation()</code> — establecer posición</li>
  <li>Configurar posición inicial del divisor</li>
  <li>Gestionar división de paneles</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Configurar la posición del divisor te permite controlar las proporciones iniciales de las partes del panel dividido.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece posición en píxeles: <code>splitPane.setDividerLocation(200);</code></li>
  <li>O establece en porcentaje: <code>splitPane.setDividerLocation(0.5);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setDividerLocation(int)</code> para píxeles, <code>setDividerLocation(double)</code> para porcentaje</li>
  <li><strong>✅ Excelente:</strong> Establecer después de agregar componentes, usar <code>resetToPreferredSizes()</code> para restablecer</li>
  <li><strong>⚠️ Evita:</strong> Establecer antes de agregar componentes — puede no funcionar</li>
</ul>
<p><strong>Importante:</strong> <code>getDividerLocation()</code> — obtener posición actual. Establecer después de <code>pack()</code> o <code>setVisible(true)</code>.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El divisor estará en la posición especificada. Los paneles se dividirán en la proporción necesaria. Puedes arrastrar el divisor.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (213, 'es', 'Panel Dividido Maestro: Configurar Posición del Divisor',
        'Establece posición del divisor 200 píxeles mediante setDividerLocation(200)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (214, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Un Toque en Panel Dividido</h2>
<p class="intro">Un toque acelera el trabajo. Puedes expandir o colapsar rápidamente el panel con un clic. Sin esto, tendrás que arrastrar el divisor.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setOneTouchExpandable()</code> — habilitar un toque</li>
  <li>Crear botones de expansión rápida</li>
  <li>Mejorar experiencia de usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Un toque mejora la usabilidad y acelera el trabajo con el panel dividido.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Habilita un toque: <code>splitPane.setOneTouchExpandable(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setOneTouchExpandable(true)</code> para botones</li>
  <li><strong>✅ Excelente:</strong> Usar para acceso rápido, combinar con otras configuraciones</li>
  <li><strong>⚠️ Evita:</strong> Siempre habilitado — puede no ser necesario</li>
</ul>
<p><strong>Importante:</strong> Los botones aparecen en el divisor. Un clic para expandir/colapsar.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerán botones en el divisor. Puedes hacer clic para expandir o colapsar rápidamente el panel.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (214, 'es', 'Panel Dividido Maestro: Habilitar Un Toque',
        'Habilita un toque mediante setOneTouchExpandable(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (215, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Posición del Divisor (Avanzado)</h2>
<p class="intro">La posición del divisor determina los tamaños de los paneles. Puedes establecer posición inicial, cambiar proporción de paneles. Sin configuración, el divisor estará en el medio.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setDividerLocation()</code> — establecer posición</li>
  <li>Establecer posición en píxeles o porcentaje</li>
  <li>Controlar ubicación del divisor</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Gestionar la posición del divisor te permite controlar los tamaños iniciales de las partes del panel dividido.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece posición en píxeles: <code>splitPane.setDividerLocation(200);</code></li>
  <li>O en porcentaje: <code>splitPane.setDividerLocation(0.3);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setDividerLocation(int)</code> para píxeles, <code>setDividerLocation(double)</code> para porcentaje</li>
  <li><strong>✅ Excelente:</strong> Usar para posición inicial, usar para cambiar proporción</li>
  <li><strong>⚠️ Evita:</strong> Establecer fuera de límites — puede ser inesperado</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>El divisor estará en la posición especificada. Los paneles serán del tamaño necesario. Puedes cambiar la proporción.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (215, 'es', 'Panel Dividido Maestro: Establecer Posición del Divisor',
        'Establece posición del divisor 200 píxeles mediante setDividerLocation(200)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (216, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Diseño Continuo en Panel Dividido</h2>
<p class="intro">El diseño continuo hace el cambio suave. Los paneles cambiarán de tamaño en tiempo real al arrastrar. Sin esto, el cambio será solo después de soltar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setContinuousLayout()</code> — diseño continuo</li>
  <li>Cambios de tamaño suaves</li>
  <li>Mejorar experiencia de usuario</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El diseño continuo asegura una actualización suave de la interfaz al arrastrar el divisor.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Habilita diseño continuo: <code>splitPane.setContinuousLayout(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setContinuousLayout(true)</code> para habilitar</li>
  <li><strong>✅ Excelente:</strong> Usar para cambio suave, mejorar experiencia de usuario</li>
  <li><strong>⚠️ Evita:</strong> Deshabilitar para componentes lentos</li>
</ul>
<p><strong>Importante:</strong> <code>false</code> — deshabilitar (cambio después de soltar).</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Los tamaños de los paneles cambiarán suavemente. Al arrastrar, el tamaño cambiará en tiempo real.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (216, 'es', 'Panel Dividido Maestro: Habilitar Diseño Continuo',
        'Habilita diseño continuo mediante setContinuousLayout(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (217, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Peso de Redimensionamiento en Panel Dividido</h2>
<p class="intro">El peso de redimensionamiento determina proporciones. Puedes especificar cómo cambiarán los paneles al redimensionar la ventana. Sin peso, las proporciones serán estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setResizeWeight()</code> — establecer peso</li>
  <li>Gestionar proporciones de paneles</li>
  <li>Crear diseños balanceados</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El peso de redimensionamiento te permite controlar cómo las partes del panel dividido responden al redimensionamiento de la ventana.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece peso: <code>splitPane.setResizeWeight(0.5);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setResizeWeight()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar 0.0-1.0 para peso. 0.0 — solo panel izquierdo/superior, 1.0 — solo panel derecho/inferior, 0.5 — proporciones iguales. Adaptar al contenido</li>
  <li><strong>⚠️ Evita:</strong> Proporciones demasiado desiguales — puede ser inconveniente</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Las proporciones de los paneles se configurarán. Al redimensionar, los paneles cambiarán según el peso.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (217, 'es', 'Panel Dividido Maestro: Configurar Peso de Redimensionamiento',
        'Establece peso 0.5 mediante setResizeWeight(0.5)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (218, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Habilitar/Deshabilitar Pestaña</h2>
<p class="intro">Habilitar/deshabilitar pestañas mejora la gestión. Puedes hacer la pestaña no disponible según el estado, mejorar lógica. Sin esto, todas las pestañas están siempre disponibles.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setEnabledAt()</code> — habilitar/deshabilitar pestaña</li>
  <li>Gestionar disponibilidad de pestañas</li>
  <li>Crear pestañas condicionales</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Gestionar disponibilidad te permite mostrar estados de pestañas y mejorar la lógica de la interfaz.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Deshabilita pestaña: <code>tabbedPane.setEnabledAt(0, false);</code></li>
  <li>Habilita de nuevo: <code>tabbedPane.setEnabledAt(0, true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setEnabledAt()</code> para gestionar</li>
  <li><strong>✅ Excelente:</strong> Usar para pestañas condicionales, usar para mejorar lógica, mejorar experiencia de usuario</li>
  <li><strong>⚠️ Evita:</strong> Deshabilitar sin explicación</li>
</ul>
<p><strong>Importante:</strong> Explicar razón de deshabilitar.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>La pestaña será habilitada o deshabilitada. Puedes gestionar la disponibilidad de pestañas.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (218, 'es', 'Pestaña Maestro: Habilitar/Deshabilitar Pestaña',
        'Deshabilita pestaña 0 mediante setEnabledAt(0, false), luego habilita de nuevo mediante setEnabledAt(0, true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (219, 'es', '<div class="lesson-header">
<h2>🎮 Lección 8: Mnemónico de Pestaña</h2>
<p class="intro">El mnemónico mejora la accesibilidad. Puedes asignar tecla de acceso rápido a la pestaña, mejorar navegación. Sin mnemónico, necesitas usar el mouse.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setMnemonicAt()</code> — establecer mnemónico</li>
  <li>Teclas de acceso rápido para pestañas</li>
  <li>Mejorar accesibilidad</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los mnemónicos mejoran la accesibilidad y aceleran la navegación por pestañas desde el teclado.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece mnemónico: <code>tabbedPane.setMnemonicAt(0, KeyEvent.VK_T);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMnemonicAt()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar <code>KeyEvent.VK_*</code> para teclas, usar para mejorar accesibilidad, mejorar navegación</li>
  <li><strong>⚠️ Evita:</strong> Duplicar mnemónicos</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>En el texto de la pestaña, la letra del mnemónico estará subrayada. Al presionar Alt+tecla, la pestaña se activará.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (219, 'es', 'Pestaña Maestro: Establecer Mnemónico',
        'Establece mnemónico VK_T para pestaña 0 mediante setMnemonicAt()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (220, 'es', '<div class="lesson-header">
<h2>🎮 Lección 9: Ubicación de Pestañas</h2>
<p class="intro">La ubicación de pestañas afecta el diseño. Puedes colocar pestañas arriba, abajo, izquierda, derecha, mejorar diseño. Sin establecer, la ubicación será estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setTabPlacement()</code> — establecer ubicación</li>
  <li>Constantes <code>JTabbedPane.TOP</code>, <code>JTabbedPane.BOTTOM</code>, <code>JTabbedPane.LEFT</code>, <code>JTabbedPane.RIGHT</code></li>
  <li>Gestionar ubicación de pestañas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Elegir ubicación te permite adaptar la interfaz a diferentes tipos de aplicaciones y mejorar el diseño.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece ubicación: <code>tabbedPane.setTabPlacement(JTabbedPane.BOTTOM);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setTabPlacement()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar TOP para arriba, BOTTOM para abajo, LEFT, RIGHT para lados</li>
  <li><strong>⚠️ Evita:</strong> Usar ubicación inapropiada</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Las pestañas estarán en la ubicación especificada. Puedes mejorar el diseño.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (220, 'es', 'Pestaña Maestro: Establecer Ubicación de Pestañas',
        'Establece ubicación BOTTOM mediante setTabPlacement()')
ON CONFLICT (task_id, language_code) DO NOTHING;
