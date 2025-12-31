-- Flyway migration V5: Lesson 8
-- This migration contains lesson, tasks, and documentation for lesson 8

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (72, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare un pulsante radio</h2>
<p class="intro">I pulsanti radio (<code>JRadioButton</code>) permettono di selezionare un''opzione tra diverse. "Maschio/Femmina", "Sì/No", "Facile/Medio/Difficile" — tutto questo è implementato attraverso pulsanti radio. Puoi selezionare solo un''opzione da un gruppo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>JRadioButton</code> — pulsante radio per selezione singola</li>
  <li>Creare un pulsante radio</li>
  <li>Raggruppare pulsanti radio con <code>ButtonGroup</code></li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I pulsanti radio permettono di fare una selezione singola tra diverse opzioni. Senza di essi, l''utente non può fare una selezione singola.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un pulsante radio: <code>JRadioButton radio = new JRadioButton("Opzione 1");</code></li>
  <li>Aggiungi al form: <code>add(radio);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Creare con testo: <code>new JRadioButton("Testo")</code></li>
  <li><strong>✅ Eccellente:</strong> Raggruppare pulsanti radio correlati tramite <code>ButtonGroup</code></li>
  <li><strong>⚠️ Importante:</strong> Senza gruppo se ne possono selezionare più — usa <code>ButtonGroup</code></li>
</ul>
<p><strong>Importante:</strong> I pulsanti radio devono essere in un gruppo per selezione singola. Creare gruppo: <code>ButtonGroup group = new ButtonGroup();</code>. Aggiungere al gruppo: <code>group.add(radio);</code>. In un gruppo, solo un pulsante può essere selezionato. Usa testi chiari per ogni opzione.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un pulsante radio sul form. È un pulsante rotondo con un punto dentro (se selezionato) o vuoto (se non selezionato). L''utente può fare clic per selezionare un''opzione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (72, 'it', 'Pulsante radio principiante: crea un interruttore di selezione',
        'Crea un pulsante radio con testo "Opzione 1" e aggiungilo al form')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (73, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Gruppo di pulsanti radio</h2>
<p class="intro">Il gruppo (<code>ButtonGroup</code>) assicura selezione singola. Senza un gruppo, si possono selezionare più pulsanti radio simultaneamente — questo è errato. Il gruppo garantisce che solo un''opzione sia selezionata.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>ButtonGroup</code> — gruppo per pulsanti radio</li>
  <li>Aggiungere pulsanti radio a un gruppo</li>
  <li>Selezione singola in un gruppo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il gruppo assicura selezione singola tra diverse opzioni. Questo è critico per il corretto funzionamento dei pulsanti radio.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un gruppo: <code>ButtonGroup group = new ButtonGroup();</code></li>
  <li>Crea pulsanti radio: <code>JRadioButton radio1 = new JRadioButton("Opzione 1");</code><br><code>JRadioButton radio2 = new JRadioButton("Opzione 2");</code></li>
  <li>Aggiungi al gruppo: <code>group.add(radio1);</code><br><code>group.add(radio2);</code></li>
  <li>Aggiungi al form: <code>add(radio1);</code><br><code>add(radio2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Creare gruppo, poi aggiungere pulsanti</li>
  <li><strong>✅ Eccellente:</strong> Tutti i pulsanti radio correlati in un gruppo</li>
  <li><strong>⚠️ Importante:</strong> Non aggiungere pulsante a più gruppi — il comportamento è imprevedibile</li>
  <li><strong>❌ Male:</strong> Dimenticare di creare gruppo — se ne possono selezionare più</li>
</ul>
<p><strong>Importante:</strong> Crea gruppo prima di creare pulsanti radio. Aggiungi tutti i pulsanti radio correlati a un gruppo. In un gruppo, solo un pulsante può essere selezionato. Quando si seleziona un nuovo pulsante, il precedente viene automaticamente deselezionato. Puoi selezionare programmaticamente: <code>radio1.setSelected(true);</code>.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>I pulsanti radio funzioneranno come un gruppo. Quando si seleziona un pulsante, l''altro viene automaticamente deselezionato. Solo un''opzione del gruppo può essere selezionata.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (73, 'it', 'Gruppo di pulsanti: combina pulsanti radio in un gruppo',
        'Crea un gruppo, due pulsanti radio, aggiungili al gruppo e al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Italian)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
