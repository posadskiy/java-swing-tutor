-- Flyway migration V5: Lesson 20
-- This migration contains lesson, tasks, and documentation for lesson 20

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (170, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare un Pannello Scorrevole</h2>
<p class="intro">JScrollPane permette di visualizzare contenuti grandi. Testi lunghi, liste grandi, immagini grandi — tutto questo richiede lo scorrimento. Senza scorrimento, non puoi vedere tutto il contenuto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>JScrollPane</code> — pannello con scorrimento</li>
  <li>Creare un''area scorrevole</li>
  <li>Aggiungere un componente a JScrollPane</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Un pannello scorrevole è necessario per visualizzare contenuti che non entrano nello schermo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un componente (ad esempio, JTextArea): <code>JTextArea area = new JTextArea("Testo lungo...");</code></li>
  <li>Crea un pannello scorrevole: <code>JScrollPane scrollPane = new JScrollPane(area);</code></li>
  <li>Aggiungi al form: <code>add(scrollPane);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Avvolgere componente in JScrollPane</li>
  <li><strong>✅ Ottimo:</strong> Configurare la politica di scorrimento per orizzontale e verticale</li>
  <li><strong>⚠️ Evita:</strong> JScrollPane senza componente — scorrimento vuoto</li>
</ul>
<p><strong>Importante:</strong> Costruttore: <code>new JScrollPane(componente)</code>. Politica di scorrimento: <code>setHorizontalScrollBarPolicy(JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);</code>. Verticale: <code>setVerticalScrollBarPolicy(JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED);</code>. Mostra sempre: <code>ALWAYS</code>, se necessario: <code>AS_NEEDED</code>, mai: <code>NEVER</code>. Solitamente usato per JTextArea, JList, JTable, JTree.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un''area scorrevole. Se il contenuto è più grande dell''area, appariranno le barre di scorrimento. Puoi scorrere il contenuto con il mouse o la tastiera.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (170, 'it', 'Pannello Scorrevole Principiante: Aggiungi Scorrimento',
        'Crea un''area di testo, avvolgila in JScrollPane e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (171, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Doppio Buffer del Pannello</h2>
<p class="intro">Il doppio buffer migliora la fluidità. Il rendering avverrà in un buffer, poi verrà copiato sullo schermo, eliminando lo sfarfallio. Senza buffer, può esserci sfarfallio.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setDoubleBuffered()</code> — abilitare il buffer</li>
  <li>Migliorare la fluidità del rendering</li>
  <li>Creare animazioni fluide</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il doppio buffer è necessario per un rendering fluido ed eliminare lo sfarfallio durante le animazioni.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Abilita il buffer: <code>panel.setDoubleBuffered(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setDoubleBuffered(true)</code> per abilitare</li>
  <li><strong>✅ Ottimo:</strong> Usare per animazioni, usare per rendering personalizzato, migliorare la fluidità</li>
  <li><strong>⚠️ Evita:</strong> Disabilitare senza necessità</li>
</ul>
<p><strong>Importante:</strong> <code>true</code> — abilita (predefinito per JPanel), <code>false</code> — disabilita.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il rendering sarà fluido senza sfarfallio. Le animazioni sembreranno migliori.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (171, 'it', 'Pannello Maestro: Abilita Doppio Buffer',
        'Abilita il doppio buffer tramite setDoubleBuffered(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (172, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Dimensione Preferita del Pannello</h2>
<p class="intro">La dimensione preferita influenza il layout. Il layout manager la usa per il posizionamento, migliorare la posizione. Senza dimensione, la dimensione sarà automatica.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setPreferredSize()</code> — impostare dimensione preferita</li>
  <li>Gestire la dimensione del pannello</li>
  <li>Migliorare il layout</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La dimensione preferita ti permette di controllare il layout e migliorare il posizionamento dei componenti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta la dimensione: <code>panel.setPreferredSize(new Dimension(200, 100));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setPreferredSize()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare Dimension per la dimensione, usare per layout, migliorare la posizione</li>
  <li><strong>⚠️ Evita:</strong> Impostare una dimensione troppo piccola o grande</li>
</ul>
<p><strong>Importante:</strong> Rendi la dimensione ragionevole.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il pannello avrà una dimensione preferita. Il layout manager ne terrà conto durante il posizionamento.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (172, 'it', 'Pannello Maestro: Imposta Dimensione Preferita',
        'Imposta la dimensione preferita 200x100 tramite setPreferredSize(new Dimension(200, 100))')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (173, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Dimensione Minima del Pannello</h2>
<p class="intro">La dimensione minima limita la riduzione. Puoi impostare una dimensione minima, prevenire un pannello troppo piccolo, migliorare il layout. Senza limite, il pannello può essere troppo piccolo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setMinimumSize()</code> — impostare dimensione minima</li>
  <li>Gestire la dimensione minima del pannello</li>
  <li>Migliorare il layout</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La dimensione minima ti permette di prevenire un pannello troppo piccolo e migliorare il layout.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta la dimensione minima: <code>panel.setMinimumSize(new Dimension(100, 50));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMinimumSize()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare Dimension per la dimensione, usare per limitare, migliorare il layout</li>
  <li><strong>⚠️ Evita:</strong> Impostare una dimensione minima troppo grande</li>
</ul>
<p><strong>Importante:</strong> Rendi la dimensione ragionevole.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il pannello non può essere più piccolo della dimensione minima. Puoi prevenire un pannello troppo piccolo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (173, 'it', 'Pannello Maestro: Imposta Dimensione Minima',
        'Imposta la dimensione minima 100x50 tramite setMinimumSize(new Dimension(100, 50))')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (174, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Dimensione Massima del Pannello</h2>
<p class="intro">La dimensione massima limita l''espansione. Puoi impostare una dimensione massima, prevenire un pannello troppo grande, migliorare il layout. Senza limite, il pannello può essere troppo grande.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setMaximumSize()</code> — impostare dimensione massima</li>
  <li>Gestire la dimensione massima del pannello</li>
  <li>Migliorare il layout</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La dimensione massima ti permette di prevenire un pannello troppo grande e migliorare il layout.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta la dimensione massima: <code>panel.setMaximumSize(new Dimension(500, 300));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMaximumSize()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare Dimension per la dimensione, usare per limitare, migliorare il layout</li>
  <li><strong>⚠️ Evita:</strong> Impostare una dimensione massima troppo piccola</li>
</ul>
<p><strong>Importante:</strong> Rendi la dimensione ragionevole.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il pannello non può essere più grande della dimensione massima. Puoi prevenire un pannello troppo grande.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (174, 'it', 'Pannello Maestro: Imposta Dimensione Massima',
        'Imposta la dimensione massima 500x300 tramite setMaximumSize(new Dimension(500, 300))')
ON CONFLICT (task_id, language_code) DO NOTHING;
