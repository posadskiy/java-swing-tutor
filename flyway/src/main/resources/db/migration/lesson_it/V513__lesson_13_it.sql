-- Flyway migration V5: Lesson 13
-- This migration contains lesson, tasks, and documentation for lesson 13

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (107, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Segni del cursore</h2>
<p class="intro">I segni rendono il cursore preciso. Senza segni è difficile selezionare il valore esatto. Con segni puoi vedere dove si trova il controllo e quale valore è selezionato.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Metodi <code>setMajorTickSpacing(int)</code> e <code>setMinorTickSpacing(int)</code></li>
  <li>Il metodo <code>setPaintTicks(boolean)</code> — mostrare segni</li>
  <li>Il metodo <code>setPaintLabels(boolean)</code> — mostrare etichette</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I segni migliorano la precisione di selezione del valore e rendono il cursore più visivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea cursore: <code>JSlider slider = new JSlider(0, 100, 50);</code></li>
  <li>Configura segni: <code>slider.setMajorTickSpacing(10);</code><br><code>slider.setPaintTicks(true);</code><br><code>slider.setPaintLabels(true);</code></li>
  <li>Aggiungi al form: <code>add(slider);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Segni principali ogni 10-20 unità</li>
  <li><strong>✅ Eccellente:</strong> Combinazione di segni e etichette — massima chiarezza</li>
  <li><strong>⚠️ Evita:</strong> Segni troppo frequenti — sovraccaricano l''interfaccia</li>
</ul>
<p><strong>Importante:</strong> <code>setMinorTickSpacing(5)</code> — segni minori ogni 5 unità. Usa intervalli ragionevoli: 10, 20, 25, 50.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Appariranno segni e etichette sul cursore. I segni principali saranno negli intervalli specificati, e le etichette mostreranno valori numerici.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (107, 'it', 'Segni del cursore: aggiungi etichette alla scala',
        'Crea un cursore, aggiungi segni principali ogni 10 unità con etichette e aggiungilo al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Italian)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
