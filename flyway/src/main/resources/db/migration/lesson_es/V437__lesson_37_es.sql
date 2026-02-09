-- Flyway migration V4: Lesson 37
-- This migration contains lesson, tasks, and documentation for lesson 37

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

-- Task 1: Creating BorderLayout
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (313, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Colocar Componentes en Bordes</h2>
<p class="intro">BorderLayout usa espacio eficientemente. Barra de herramientas arriba, barra de estado abajo, menú a la izquierda, contenido en centro — este es diseño estándar. Sin BorderLayout, es difícil crear interfaz estructurada.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>BorderLayout</code> — diseño de bordes</li>
  <li>Regiones: NORTH, SOUTH, EAST, WEST, CENTER</li>
  <li>Colocar componentes en diferentes regiones</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>BorderLayout es necesario para crear interfaz estructurada.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece BorderLayout: <code>setLayout(new BorderLayout());</code></li>
  <li>Agrega componentes a regiones: <code>add(new JButton("North"), BorderLayout.NORTH);</code><br>
<code>add(new JButton("South"), BorderLayout.SOUTH);</code><br>
<code>add(new JButton("Center"), BorderLayout.CENTER);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Constantes: NORTH, SOUTH, EAST, WEST, CENTER</li>
  <li><strong>✅ Excelente:</strong> CENTER toma todo espacio restante, NORTH y SOUTH se estiran horizontalmente, EAST y WEST se estiran verticalmente</li>
  <li><strong>⚠️ Evita:</strong> Usar cadenas en lugar de constantes — menos legible</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componentes se colocarán en bordes. Botón "Arriba" estará arriba, "Abajo" abajo, "Centro" tomará medio.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (313, 'es', 'Diseño Principiante: Colocar Componentes en Bordes',
        'Establece BorderLayout, agrega botones a regiones NORTH, SOUTH y CENTER')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 2: All Regions
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (314, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Usar Todas las Regiones de BorderLayout</h2>
<p class="intro">Todas las regiones crean interfaz estructurada. Menú a la izquierda, barra de herramientas a la derecha, encabezado arriba, estado abajo, contenido en centro — esta es interfaz profesional. Sin todas las regiones, interfaz estará incompleta.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Todas las regiones BorderLayout</li>
  <li>Colocar componentes en EAST y WEST</li>
  <li>Crear interfaz completa</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Usar todas las regiones es necesario para crear interfaz completa.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece BorderLayout: <code>setLayout(new BorderLayout());</code></li>
  <li>Agrega componentes a todas las regiones: <code>add(new JButton("North"), BorderLayout.NORTH);</code><br>
<code>add(new JButton("South"), BorderLayout.SOUTH);</code><br>
<code>add(new JButton("West"), BorderLayout.WEST);</code><br>
<code>add(new JButton("East"), BorderLayout.EAST);</code><br>
<code>add(new JButton("Center"), BorderLayout.CENTER);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Todas las regiones para interfaz completa</li>
  <li><strong>✅ Excelente:</strong> WEST y EAST usualmente para menús y paneles, NORTH para encabezados y barras de herramientas, SOUTH para barras de estado, CENTER para contenido principal</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componentes se colocarán en todas las regiones. Botones estarán en bordes y en centro.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (314, 'es', 'Diseño Maestro: Usar Todas las Regiones',
        'Establece BorderLayout, agrega botones a las cinco regiones: NORTH, SOUTH, EAST, WEST, CENTER')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 3: Gaps
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (315, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Agregar Espacios Entre Regiones</h2>
<p class="intro">Los espacios mejoran legibilidad. Componentes no se fusionan entre sí, hay separación visual. Sin espacios, interfaz se ve sobrecargada.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Constructor <code>BorderLayout(int hgap, int vgap)</code> — con espacios</li>
  <li>Espacios horizontales y verticales</li>
  <li>Mejorar separación visual</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los espacios son necesarios para mejorar legibilidad y separación visual de componentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea BorderLayout con espacios: <code>setLayout(new BorderLayout(10, 10));</code></li>
  <li>Agrega componentes: <code>add(new JButton("North"), BorderLayout.NORTH);</code><br>
<code>add(new JButton("Center"), BorderLayout.CENTER);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Mismos espacios (10, 10)</li>
  <li><strong>✅ Excelente:</strong> Usar diferentes espacios (5, 10) para diferentes efectos, usar espacios pequeños (5-10 píxeles)</li>
  <li><strong>⚠️ Evita:</strong> Espacios demasiado grandes — se pierde espacio</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Espacios aparecerán entre regiones. Componentes estarán visualmente separados.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (315, 'es', 'Diseño Maestro: Agregar Espacios Entre Regiones',
        'Crea BorderLayout con espacios de 10 píxeles horizontal y verticalmente, agrega componentes a NORTH y CENTER')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 4: Preferred Sizes
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (316, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Considerar Tamaños Preferidos</h2>
<p class="intro">Los tamaños preferidos hacen interfaz correcta. Componentes obtienen tamaño necesario, no se estiran y no se encogen. Sin considerar tamaños, componentes pueden verse incorrectos.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Tamaños preferidos de componentes</li>
  <li>Cómo BorderLayout usa getPreferredSize()</li>
  <li>NORTH y SOUTH usan altura preferida</li>
  <li>EAST y WEST usan ancho preferido</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Considerar tamaños preferidos es necesario para visualización correcta de componentes.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea componente con tamaño preferido: <code>JButton button = new JButton("Button");</code><br>
<code>button.setPreferredSize(new Dimension(100, 30));</code></li>
  <li>Agrega a región: <code>add(button, BorderLayout.NORTH);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Establecer tamaño preferido para componentes</li>
  <li><strong>✅ Excelente:</strong> NORTH y SOUTH usan altura preferida, EAST y WEST usan ancho preferido, CENTER toma todo espacio restante</li>
  <li><strong>⚠️ Evita:</strong> Ignorar tamaños preferidos — puede verse incorrecto</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componentes tendrán tamaños correctos. BorderLayout considerará tamaños preferidos.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (316, 'es', 'Diseño Maestro: Considerar Tamaños Preferidos',
        'Crea botón, establece tamaño preferido 100x30, agrega a región NORTH')
ON CONFLICT (task_id, language_code) DO NOTHING;
