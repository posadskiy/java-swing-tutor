-- Flyway migration V4: Lesson 50
-- This migration contains lesson, tasks, and documentation for lesson 50

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (441, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Anular paintComponent para Renderizado Personalizado</h2>
<p class="intro">El renderizado personalizado permite crear gráficos únicos. Gráficos, diagramas, juegos, animaciones — todo esto requiere renderizado personalizado. Sin esto, solo puedes usar componentes estándar.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>paintComponent(Graphics)</code> — renderizado personalizado</li>
  <li>Anular método en JComponent</li>
  <li>Crear gráficos personalizados</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>El renderizado personalizado es necesario para crear gráficos únicos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea clase extendiendo JComponent: <code>class MyComponent extends JComponent {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;protected void paintComponent(Graphics g) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;super.paintComponent(g);<br>
&nbsp;&nbsp;&nbsp;&nbsp;g.drawString("¡Hola!", 10, 20);<br>
&nbsp;&nbsp;}<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Siempre llamar <code>super.paintComponent(g)</code></li>
  <li><strong>✅ Excelente:</strong> Usar Graphics2D para gráficos mejorados, usar para gráficos personalizados, usar para animaciones</li>
  <li><strong>⚠️ Evita:</strong> No llamar super.paintComponent() — puede haber problema con fondo</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componente se renderizará personalizadamente. Puedes crear gráficos únicos.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (441, 'es', 'Renderizado Personalizado Principiante: Anula paintComponent',
        'Crea clase extendiendo JComponent, anula paintComponent(), llama super.paintComponent(g), dibuja cadena vía drawString()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (442, 'es', '<div class="lesson-header">
<h2>🎮 Lección 2: Usar Graphics2D para Gráficos Mejorados</h2>
<p class="intro">Graphics2D proporciona capacidades mejoradas. Antialiasing, gradientes, transformaciones, formas mejoradas. Sin Graphics2D, gráficos serán básicos.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>Graphics2D</code> — gráficos mejorados</li>
  <li>Convertir Graphics a Graphics2D</li>
  <li>Usar capacidades mejoradas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Graphics2D es necesario para crear gráficos mejorados con capacidades adicionales.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Convierte Graphics a Graphics2D: <code>Graphics2D g2d = (Graphics2D) g;</code></li>
  <li>Habilita antialiasing: <code>g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Graphics2D para gráficos mejorados</li>
  <li><strong>✅ Excelente:</strong> Habilitar antialiasing para líneas suaves, usar para gradientes, usar para transformaciones</li>
  <li><strong>⚠️ Evita:</strong> Usar Graphics en lugar de Graphics2D</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Gráficos serán mejorados. Líneas serán suaves, gradientes hermosos.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (442, 'es', 'Renderizado Personalizado Maestro: Usa Graphics2D',
        'Anula paintComponent(), convierte Graphics a Graphics2D, habilita antialiasing vía setRenderingHint()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (443, 'es', '<div class="lesson-header">
<h2>🎮 Lección 3: Dibujar Formas con Graphics2D</h2>
<p class="intro">Las formas son base de gráficos. Puedes dibujar rectángulos, óvalos, líneas, crear imágenes complejas. Sin formas, no puedes crear gráficos.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Métodos <code>drawRect()</code>, <code>fillRect()</code> — rectángulos</li>
  <li>Métodos <code>drawOval()</code>, <code>fillOval()</code> — óvalos</li>
  <li>Método <code>drawLine()</code> — líneas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Dibujar formas es necesario para crear gráficos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Dibuja rectángulo: <code>g2d.drawRect(10, 10, 100, 50);</code></li>
  <li>O relleno: <code>g2d.fillRect(10, 10, 100, 50);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>drawRect()</code> para contorno</li>
  <li><strong>✅ Excelente:</strong> Usar <code>fillRect()</code> para relleno, usar <code>drawOval()</code> y <code>fillOval()</code> para óvalos, usar <code>drawLine()</code> para líneas</li>
  <li><strong>⚠️ Evita:</strong> Dibujar fuera de límites de componente</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Formas aparecerán en componente. Puedes dibujar rectángulos, óvalos, líneas.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (443, 'es', 'Renderizado Personalizado Maestro: Dibuja Formas',
        'Anula paintComponent(), dibuja rectángulo relleno vía fillRect(10, 10, 100, 50)')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (444, 'es', '<div class="lesson-header">
<h2>🎮 Lección 4: Usar Colores en Graphics2D</h2>
<p class="intro">Los colores hacen gráficos vibrantes. Puedes establecer color para dibujar, crear imágenes coloridas, mejorar apariencia visual. Sin colores, gráficos serán en blanco y negro.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>setColor(Color)</code> — establecer color</li>
  <li>Usar colores estándar y personalizados</li>
  <li>Crear gráficos coloridos</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los colores son necesarios para crear gráficos coloridos.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Establece color: <code>g2d.setColor(Color.RED);</code></li>
  <li>O personalizado: <code>g2d.setColor(new Color(255, 0, 0));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setColor()</code> para establecer</li>
  <li><strong>✅ Excelente:</strong> Usar colores estándar Color.*, usar <code>new Color(r, g, b)</code> para personalizados, usar para gráficos coloridos</li>
  <li><strong>⚠️ Evita:</strong> Usar colores demasiado brillantes</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Gráficos serán coloridos. Puedes usar diferentes colores para dibujar.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (444, 'es', 'Renderizado Personalizado Maestro: Usa Colores',
        'Anula paintComponent(), establece color Color.RED vía setColor(), dibuja rectángulo')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (445, 'es', '<div class="lesson-header">
<h2>🎮 Lección 5: Usar Gradientes en Graphics2D</h2>
<p class="intro">Los gradientes crean transiciones suaves. Puedes crear hermoso gradiente de un color a otro, mejorar apariencia visual. Sin gradientes, transiciones serán bruscas.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Clase <code>GradientPaint</code> — gradiente</li>
  <li>Método <code>setPaint(Paint)</code> — establecer gradiente</li>
  <li>Crear transiciones suaves</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Los gradientes son necesarios para crear transiciones suaves de colores.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea gradiente: <code>GradientPaint gradient = new GradientPaint(0, 0, Color.RED, 100, 0, Color.BLUE);</code></li>
  <li>Establece gradiente: <code>g2d.setPaint(gradient);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> GradientPaint para crear</li>
  <li><strong>✅ Excelente:</strong> Usar <code>setPaint()</code> para establecer, usar para transiciones suaves, mejorar apariencia visual</li>
  <li><strong>⚠️ Evita:</strong> Usar colores demasiado contrastantes</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Gráficos tendrán gradiente. Puedes crear transición suave de un color a otro.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (445, 'es', 'Renderizado Personalizado Maestro: Usa Gradientes',
        'Anula paintComponent(), crea gradiente new GradientPaint(0, 0, Color.RED, 100, 0, Color.BLUE), establece vía setPaint(), dibuja rectángulo')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (446, 'es', '<div class="lesson-header">
<h2>🎮 Lección 6: Dibujar Imágenes con Graphics2D</h2>
<p class="intro">Las imágenes hacen gráficos más ricos. Puedes mostrar imágenes, iconos, fotos, crear interfaces visualmente atractivas. Sin imágenes, gráficos serán solo vectoriales.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>drawImage(Image, int, int, ImageObserver)</code> — dibujar imagen</li>
  <li>Cargar imágenes</li>
  <li>Mostrar imágenes en componente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Las imágenes son necesarias para crear interfaces visualmente atractivas.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Carga imagen: <code>Image image = Toolkit.getDefaultToolkit().getImage("image.png");</code></li>
  <li>Dibuja imagen: <code>g2d.drawImage(image, 10, 10, this);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>drawImage()</code> para dibujar</li>
  <li><strong>✅ Excelente:</strong> Usar ImageIO.read() para cargar, usar para mostrar imágenes, escalar imágenes</li>
  <li><strong>⚠️ Evita:</strong> Usar imágenes demasiado grandes</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Imagen aparecerá en componente. Puedes mostrar imágenes, iconos, fotos.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (446, 'es', 'Renderizado Personalizado Maestro: Dibuja Imágenes',
        'Anula paintComponent(), carga imagen vía ImageIO.read(), dibuja vía drawImage()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (447, 'es', '<div class="lesson-header">
<h2>🎮 Lección 7: Actualizar Renderizado con repaint()</h2>
<p class="intro">Actualizar renderizado es necesario para animaciones. Puedes actualizar componente después de cambio, crear animaciones, actualizar gráficos. Sin actualización, cambios no serán visibles.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendiendo:</h3>
<ul>
  <li>Método <code>repaint()</code> — actualizar renderizado</li>
  <li>Método <code>repaint(int, int, int, int)</code> — actualizar área</li>
  <li>Gestionar actualización de componente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Actualizar renderizado es necesario para mostrar cambios y crear animaciones.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Actualiza componente completo: <code>component.repaint();</code></li>
  <li>O área: <code>component.repaint(x, y, width, height);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>repaint()</code> para actualizar</li>
  <li><strong>✅ Excelente:</strong> Usar <code>repaint(x, y, w, h)</code> para área, usar para animaciones, actualizar después de cambios</li>
  <li><strong>⚠️ Evita:</strong> Llamar demasiado frecuentemente — puede ser lento</li>
</ul>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Componente se actualizará. Puedes crear animaciones, actualizar gráficos.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (447, 'es', 'Renderizado Personalizado Maestro: Actualiza Renderizado',
        'Crea componente con paintComponent(), llama repaint() para actualizar')
ON CONFLICT (task_id, language_code) DO NOTHING;
