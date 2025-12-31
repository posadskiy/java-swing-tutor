-- Flyway migration V4: Lesson 52
-- This migration contains lesson, tasks, and documentation for lesson 52

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (453, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Establecer Look and Feel del Sistema</h2>
<p class="intro">Look and Feel determina apariencia de interfaz. Puedes establecer estilo del sistema, hacer interfaz parecer programa nativo. Sin establecer, se usará Metal estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>UIManager</code> — administrador de apariencia</li>
  <li>Método <code>setLookAndFeel(String)</code> — establecer L&F</li>
  <li>Look and Feel del Sistema</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Look and Feel del Sistema es necesario para crear apariencia de interfaz nativa.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece L&F del sistema: <code>UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());</code></li>
  <li>Actualiza componentes: <code>SwingUtilities.updateComponentTreeUI(frame);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getSystemLookAndFeelClassName()</code> para sistema</li>
  <li><strong>✅ Excelente:</strong> Usar <code>updateComponentTreeUI()</code> para actualizar, usar para apariencia nativa, establecer antes de crear componentes</li>
  <li><strong>⚠️ Evita:</strong> Establecer después de crear — puede no funcionar</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Interfaz tendrá estilo del sistema. Componentes se verán nativos.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (453, 'es', 'Look and Feel Principiante: Establece L&F del Sistema',
        'Establece L&F del sistema vía UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName()), actualiza componentes vía SwingUtilities.updateComponentTreeUI()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (454, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Establecer Metal Look and Feel</h2>
<p class="intro">Metal es estilo clásico de Java. Puedes usar estilo estándar que funciona igual en todas partes. Sin establecer, Metal se usa por defecto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Metal Look and Feel — estilo clásico de Java</li>
  <li>Establecer Metal L&F</li>
  <li>Usar estilo estándar</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Metal Look and Feel es necesario para usar estilo estándar de Java.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece Metal L&F: <code>UIManager.setLookAndFeel("javax.swing.plaf.metal.MetalLookAndFeel");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Nombre completo de clase</li>
  <li><strong>✅ Excelente:</strong> Usar para estilo estándar, usar para compatibilidad, actualizar componentes después de establecer</li>
  <li><strong>⚠️ Evita:</strong> Usar estilo obsoleto</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Interfaz tendrá estilo Metal. Este es estilo clásico de Java.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (454, 'es', 'Look and Feel Maestro: Establece Metal L&F',
        'Establece Metal L&F vía UIManager.setLookAndFeel("javax.swing.plaf.metal.MetalLookAndFeel"), actualiza componentes')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (455, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Establecer Nimbus Look and Feel</h2>
<p class="intro">Nimbus es estilo moderno de Java. Puedes usar hermoso estilo moderno, mejorar apariencia visual. Sin establecer, se usará Metal.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Nimbus Look and Feel — estilo moderno</li>
  <li>Establecer Nimbus L&F</li>
  <li>Usar estilo moderno</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Nimbus Look and Feel es necesario para usar estilo moderno de interfaz.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece Nimbus L&F: <code>UIManager.setLookAndFeel("javax.swing.plaf.nimbus.NimbusLookAndFeel");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Nombre completo de clase</li>
  <li><strong>✅ Excelente:</strong> Usar para estilo moderno, usar para mejorar apariencia, actualizar componentes después de establecer</li>
  <li><strong>⚠️ Evita:</strong> Usar en sistemas antiguos — puede no funcionar</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Interfaz tendrá estilo Nimbus. Este es estilo moderno hermoso.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (455, 'es', 'Look and Feel Maestro: Establece Nimbus L&F',
        'Establece Nimbus L&F vía UIManager.setLookAndFeel("javax.swing.plaf.nimbus.NimbusLookAndFeel"), actualiza componentes')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (456, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Obtener Lista de Look and Feel Disponibles</h2>
<p class="intro">La lista permite conocer estilos disponibles. Puedes mostrar lista al usuario, elegir estilo, configurar interfaz. Sin lista, no puedes saber qué estilos están disponibles.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>getInstalledLookAndFeels()</code> — lista L&F</li>
  <li>Obtener información sobre estilos</li>
  <li>Ver estilos disponibles</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>La lista es necesaria para ver y elegir estilos disponibles.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Obtén lista: <code>UIManager.LookAndFeelInfo[] lafs = UIManager.getInstalledLookAndFeels();</code></li>
  <li>Ve lista: <code>for (UIManager.LookAndFeelInfo laf : lafs) {<br>
&nbsp;&nbsp;label.setText(laf.getName() + ": " + laf.getClassName());<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getInstalledLookAndFeels()</code> para obtener</li>
  <li><strong>✅ Excelente:</strong> Usar <code>getName()</code> para nombre, usar <code>getClassName()</code> para clase, mostrar lista al usuario</li>
  <li><strong>⚠️ Evita:</strong> Ignorar lista</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Se mostrará lista de estilos disponibles. Puedes saber qué estilos están disponibles.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (456, 'es', 'Look and Feel Maestro: Obtén Lista de L&F Disponibles',
        'Obtén lista L&F vía UIManager.getInstalledLookAndFeels(), muestra nombre y clase de cada estilo')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (457, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Establecer Look and Feel Personalizado</h2>
<p class="intro">L&F personalizado permite crear estilo único. Puedes usar bibliotecas de terceros, crear tu estilo, mejorar apariencia visual. Sin L&F personalizado, solo puedes usar estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Crear L&F personalizado</li>
  <li>Establecer estilo personalizado</li>
  <li>Usar bibliotecas de terceros</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>L&F personalizado es necesario para crear estilo único de interfaz.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece L&F personalizado: <code>UIManager.setLookAndFeel("com.example.CustomLookAndFeel");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Nombre completo de clase</li>
  <li><strong>✅ Excelente:</strong> Usar bibliotecas de terceros, crear tu estilo, actualizar componentes después de establecer</li>
  <li><strong>⚠️ Evita:</strong> Usar clase inexistente</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Interfaz tendrá estilo personalizado. Puedes crear apariencia única.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (457, 'es', 'Look and Feel Maestro: Establece L&F Personalizado',
        'Establece L&F personalizado vía UIManager.setLookAndFeel("com.example.CustomLookAndFeel"), actualiza componentes')
ON CONFLICT (task_id, language_code) DO NOTHING;
