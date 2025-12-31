-- Flyway migration V4: Lesson 13
-- This migration contains lesson, tasks, and documentation for lesson 13

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (107, 'es', '<div class="lesson-header">
<h2>🎮 Lección 1: Marcas de deslizador</h2>
<p class="intro">Las marcas hacen el deslizador preciso. Sin marcas es difícil seleccionar el valor exacto. Con marcas puedes ver dónde está el control y qué valor está seleccionado.</p>
</div>

<section class="learning-objectives">
<h3>📚 Aprendemos:</h3>
<ul>
  <li>Métodos <code>setMajorTickSpacing(int)</code> y <code>setMinorTickSpacing(int)</code></li>
  <li>El método <code>setPaintTicks(boolean)</code> — mostrar marcas</li>
  <li>El método <code>setPaintLabels(boolean)</code> — mostrar etiquetas</li>
</ul>
</section>

<section class="importance">
<h3>💎 Por qué es necesario:</h3>
<p>Las marcas mejoran la precisión de selección de valor y hacen el deslizador más visual.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementación:</h3>
<ol>
  <li>Crea deslizador: <code>JSlider slider = new JSlider(0, 100, 50);</code></li>
  <li>Configura marcas: <code>slider.setMajorTickSpacing(10);</code><br><code>slider.setPaintTicks(true);</code><br><code>slider.setPaintLabels(true);</code></li>
  <li>Añade al formulario: <code>add(slider);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Recomendaciones:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Marcas principales cada 10-20 unidades</li>
  <li><strong>✅ Excelente:</strong> Combinación de marcas y etiquetas — máxima claridad</li>
  <li><strong>⚠️ Evita:</strong> Marcas demasiado frecuentes — sobrecargan la interfaz</li>
</ul>
<p><strong>Importante:</strong> <code>setMinorTickSpacing(5)</code> — marcas menores cada 5 unidades. Usa intervalos razonables: 10, 20, 25, 50.</p>
</section>

<section class="result">
<h3>👀 Resultado:</h3>
<p>Aparecerán marcas y etiquetas en el deslizador. Las marcas principales estarán en los intervalos especificados, y las etiquetas mostrarán valores numéricos.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (107, 'es', 'Marcas de deslizador: añade etiquetas a la escala',
        'Crea un deslizador, añade marcas principales cada 10 unidades con etiquetas y añádelo al formulario')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Spanish)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
