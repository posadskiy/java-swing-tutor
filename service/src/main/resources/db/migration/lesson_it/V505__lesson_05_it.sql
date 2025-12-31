-- Flyway migration V5: Lesson 5
-- This migration contains lesson, tasks, and documentation for lesson 5

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (49, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare un''area di testo</h2>
<p class="intro">Le aree di testo (<code>JTextArea</code>) sono necessarie per testi lunghi. Commenti, descrizioni, note, messaggi — tutto questo richiede input su più righe. A differenza di <code>JTextField</code>, qui puoi scrivere su più righe.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>JTextArea</code> — campo a più righe per input di testo</li>
  <li>Creare un''area di testo</li>
  <li>Differenza tra campi a una riga e più righe</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le aree di testo sono necessarie per testi lunghi. Senza aree di testo, l''utente non può inserire testo lungo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un''area di testo: <code>JTextArea area = new JTextArea();</code></li>
  <li>Aggiungi al form: <code>add(area);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Creare con dimensioni: <code>new JTextArea(5, 20)</code> — 5 righe, 20 caratteri</li>
  <li><strong>✅ Eccellente:</strong> Creare con testo iniziale: <code>new JTextArea("Testo")</code></li>
  <li><strong>⚠️ Accettabile:</strong> <code>add(new JTextArea());</code> — non puoi configurare dopo</li>
</ul>
<p><strong>Importante:</strong> L''area di testo può contenere molte righe di testo. Puoi impostare dimensioni nel costruttore: <code>new JTextArea(righe, colonne)</code>. Solitamente usata insieme a <code>JScrollPane</code> per lo scorrimento. Il testo si adatta automaticamente (se l''adattamento è abilitato). Usa per commenti, descrizioni, testi lunghi.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un campo di testo a più righe sul form. Questa è un''area rettangolare grande dove puoi inserire testo su più righe. L''utente può fare clic e iniziare a digitare.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (49, 'it', 'Area di testo principiante: crea un campo a più righe',
        'Crea un''area di testo e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (50, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: A capo automatico</h2>
<p class="intro">L''a capo automatico rende il testo leggibile. Senza a capo, una riga lunga andrà oltre il limite dell''area e dovrà essere scrollata orizzontalmente. Con a capo, il testo si adatta automaticamente ed è più facile da leggere.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setLineWrap(boolean wrap)</code> — abilitare a capo automatico</li>
  <li>Il metodo <code>setWrapStyleWord(boolean wrap)</code> — a capo per parole</li>
  <li>A capo automatico di righe lunghe</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''a capo automatico rende il testo leggibile senza scroll orizzontale. Questo migliora l''esperienza utente quando si lavora con testi lunghi.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un''area di testo: <code>JTextArea area = new JTextArea();</code></li>
  <li>Abilita a capo automatico: <code>area.setLineWrap(true);</code><br><code>area.setWrapStyleWord(true);</code></li>
  <li>Aggiungi al form: <code>add(area);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> <code>setLineWrap(true)</code> + <code>setWrapStyleWord(true)</code> — a capo per parole</li>
  <li><strong>✅ Eccellente:</strong> A capo per parole — le parole non si rompono</li>
  <li><strong>⚠️ Evita:</strong> Solo <code>setLineWrap(true)</code> — le parole possono rompersi</li>
  <li><strong>❌ Male:</strong> Senza a capo — le righe lunghe sono scomode</li>
</ul>
<p><strong>Importante:</strong> Solitamente entrambi i metodi sono usati insieme. L''a capo rende il testo leggibile senza scroll orizzontale. Raccomandato per tutte le aree di testo.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Le righe lunghe si adatteranno automaticamente. Se il testo non entra nella larghezza dell''area, si adatterà a una nuova riga. Le parole non si romperanno (se <code>setWrapStyleWord(true)</code> è abilitato).</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (50, 'it', 'A capo automatico: abilita a capo automatico',
        'Crea un''area di testo, abilita a capo per parole e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Italian)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
