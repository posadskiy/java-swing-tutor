-- Flyway migration V5: Lesson 21
-- This migration contains lesson, tasks, and documentation for lesson 21

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (175, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare un Pannello Diviso</h2>
<p class="intro">JSplitPane permette un uso efficiente dello spazio. Lista file a sinistra, contenuto a destra. Albero a sinistra, dettagli a destra. La divisione rende l''interfaccia funzionale.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>JSplitPane</code> — pannello diviso</li>
  <li>Creare divisione orizzontale o verticale</li>
  <li>Aggiungere componenti a ogni parte</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Un pannello diviso è necessario per un uso efficiente dello spazio e creare interfacce funzionali.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea componenti per le parti: <code>JPanel leftPanel = new JPanel();</code> e <code>JPanel rightPanel = new JPanel();</code></li>
  <li>Crea pannello diviso: <code>JSplitPane splitPane = new JSplitPane(JSplitPane.HORIZONTAL_SPLIT, leftPanel, rightPanel);</code></li>
  <li>Aggiungi al form: <code>add(splitPane);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>HORIZONTAL_SPLIT</code> — divisione verticale (sinistra/destra)</li>
  <li><strong>✅ Ottimo:</strong> <code>VERTICAL_SPLIT</code> — divisione orizzontale (sopra/sotto), configurare posizione divisore: <code>splitPane.setDividerLocation(200);</code></li>
</ul>
<p><strong>Importante:</strong> Posizione divisore: <code>setDividerLocation(posizione_in_pixel)</code>. Proporzione: <code>setResizeWeight(0.5)</code> — distribuzione uguale. Un tocco: <code>setOneTouchExpandable(true)</code> — pulsanti per espansione rapida. Puoi annidare JSplitPane uno dentro l''altro per interfacce complesse.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un pannello diviso. Lo schermo sarà diviso in due parti con un bordo trascinabile. Puoi spostare il divisore, cambiando le dimensioni delle parti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (175, 'it', 'Pannello Diviso Principiante: Dividi Schermo a Metà',
        'Crea un pannello diviso orizzontale con due pannelli e aggiungilo al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (176, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Orientamento del Pannello Diviso</h2>
<p class="intro">L''orientamento influenza l''aspetto della divisione. Orizzontale — sinistra/destra, verticale — sopra/sotto. Puoi scegliere l''orientamento appropriato per l''interfaccia.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setOrientation(int)</code> — impostare orientamento</li>
  <li>Costanti <code>HORIZONTAL_SPLIT</code> e <code>VERTICAL_SPLIT</code></li>
  <li>Divisione orizzontale e verticale</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Scegliere l''orientamento ti permette di adattare la divisione a diversi tipi di interfacce.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta orientamento: <code>splitPane.setOrientation(JSplitPane.VERTICAL_SPLIT);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> HORIZONTAL_SPLIT per orizzontale, VERTICAL_SPLIT per verticale</li>
  <li><strong>✅ Ottimo:</strong> Scegliere orientamento in base al luogo, usare per risparmiare spazio</li>
  <li><strong>⚠️ Evita:</strong> Usare orientamento sbagliato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il pannello diviso avrà l''orientamento impostato. Orizzontale — sinistra/destra, verticale — sopra/sotto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (176, 'it', 'Pannello Diviso Maestro: Imposta Orientamento',
        'Crea un pannello diviso, imposta orientamento verticale tramite setOrientation(JSplitPane.VERTICAL_SPLIT)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (177, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Posizione del Divisore</h2>
<p class="intro">La posizione del divisore determina le dimensioni delle parti. Puoi impostare la posizione iniziale, centrare il divisore, configurare proporzioni. Senza configurazione, la posizione sarà casuale.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setDividerLocation(int)</code> — impostare posizione</li>
  <li>Metodo <code>setDividerLocation(double)</code> — impostare posizione in percentuale</li>
  <li>Gestire posizione del divisore</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire la posizione del divisore ti permette di controllare le proporzioni iniziali delle parti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta posizione in pixel: <code>splitPane.setDividerLocation(200);</code></li>
  <li>O in percentuale: <code>splitPane.setDividerLocation(0.5);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setDividerLocation()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare pixel per posizione precisa, usare percentuale per posizione proporzionale, centrare divisore</li>
  <li><strong>⚠️ Evita:</strong> Impostare posizione fuori dai limiti</li>
</ul>
<p><strong>Importante:</strong> <code>getDividerLocation()</code> — ottenere posizione corrente.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il divisore sarà impostato alla posizione specificata. Le parti avranno le dimensioni impostate. Puoi configurare proporzioni.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (177, 'it', 'Pannello Diviso Maestro: Imposta Posizione Divisore',
        'Crea un pannello diviso, imposta posizione divisore 200 tramite setDividerLocation(200)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (178, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Peso di Ridimensionamento</h2>
<p class="intro">Il peso determina come cambiano le parti durante il ridimensionamento. Puoi impostare quale parte si espanderà di più. Senza configurazione, le parti cambieranno uniformemente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setResizeWeight(double)</code> — impostare peso</li>
  <li>Distribuzione spazio durante il ridimensionamento</li>
  <li>Gestire proporzioni</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il peso di ridimensionamento ti permette di controllare come le parti del pannello diviso rispondono al ridimensionamento della finestra.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta il peso: <code>splitPane.setResizeWeight(0.3);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setResizeWeight()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare valori da 0.0 a 1.0. 0.0 — parte sinistra/superiore non cambia, 1.0 — parte destra/inferiore non cambia, 0.5 — distribuzione uguale</li>
</ul>
<p><strong>Importante:</strong> Usa per gestire proporzioni.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Durante il ridimensionamento, le parti cambieranno secondo il peso. Puoi configurare quale parte si espanderà.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (178, 'it', 'Pannello Diviso Maestro: Imposta Peso di Ridimensionamento',
        'Crea un pannello diviso, imposta peso 0.3 tramite setResizeWeight(0.3)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (179, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Un Tocco nel Pannello Diviso</h2>
<p class="intro">Un tocco semplifica il lavoro. Puoi espandere o collassare rapidamente una parte con un clic. Senza questo, dovrai trascinare il divisore manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setOneTouchExpandable(boolean)</code> — un tocco</li>
  <li>Pulsanti per espansione/collasso rapido</li>
  <li>Migliorare esperienza utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Un tocco migliora l''usabilità e accelera il lavoro con il pannello diviso.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Abilita un tocco: <code>splitPane.setOneTouchExpandable(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setOneTouchExpandable(true)</code> per abilitare</li>
  <li><strong>✅ Ottimo:</strong> Usare per migliorare usabilità, usare per accesso rapido, migliorare esperienza utente</li>
  <li><strong>⚠️ Evita:</strong> Disabilitare senza necessità</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Appariranno pulsanti sul divisore. Puoi espandere o collassare rapidamente una parte con un clic.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (179, 'it', 'Pannello Diviso Maestro: Abilita Un Tocco',
        'Crea un pannello diviso, abilita un tocco tramite setOneTouchExpandable(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (180, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Layout Continuo</h2>
<p class="intro">Il layout continuo migliora l''esperienza visiva. Trascinando il divisore, le parti si aggiornano fluidamente. Senza questo, l''aggiornamento avviene solo dopo il rilascio.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setContinuousLayout(boolean)</code> — layout continuo</li>
  <li>Aggiornamento fluido durante il trascinamento</li>
  <li>Migliorare esperienza visiva</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il layout continuo assicura un aggiornamento fluido dell''interfaccia durante il trascinamento del divisore.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Abilita layout continuo: <code>splitPane.setContinuousLayout(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setContinuousLayout(true)</code> per abilitare</li>
  <li><strong>✅ Ottimo:</strong> Usare per aggiornamento fluido, usare per migliorare esperienza visiva, usare per componenti pesanti</li>
  <li><strong>⚠️ Evita:</strong> Disabilitare per componenti leggeri — può essere più lento</li>
</ul>
<p><strong>Importante:</strong> <code>false</code> — aggiornare solo dopo il rilascio.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Trascinando il divisore, le parti si aggiorneranno fluidamente. Puoi vedere i cambiamenti in tempo reale.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (180, 'it', 'Pannello Diviso Maestro: Abilita Layout Continuo',
        'Crea un pannello diviso, abilita layout continuo tramite setContinuousLayout(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (181, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Bordo del Pannello Diviso</h2>
<p class="intro">Il bordo migliora l''aspetto visivo. Puoi impostare il bordo desiderato, separare parti, migliorare il design. Senza configurazione, il bordo sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setBorder(Border)</code> — impostare bordo</li>
  <li>Migliorare aspetto visivo</li>
  <li>Personalizzare aspetto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il bordo ti permette di migliorare la percezione visiva e separare parti del pannello diviso.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta il bordo: <code>splitPane.setBorder(BorderFactory.createEtchedBorder());</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setBorder()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare BorderFactory per creare bordi, usare per migliorare aspetto, separare parti</li>
  <li><strong>⚠️ Evita:</strong> Usare bordi troppo spessi</li>
</ul>
<p><strong>Importante:</strong> <code>BorderFactory.createEtchedBorder()</code> — bordo inciso. <code>BorderFactory.createLineBorder(Color)</code> — linea. <code>BorderFactory.createTitledBorder(String)</code> — bordo con titolo.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il pannello diviso avrà il bordo impostato. Puoi migliorare l''aspetto visivo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (181, 'it', 'Pannello Diviso Maestro: Imposta Bordo',
        'Crea un pannello diviso, imposta bordo tramite setBorder(BorderFactory.createEtchedBorder())')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (182, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Dimensioni Minime delle Parti</h2>
<p class="intro">Le dimensioni minime limitano la riduzione. Puoi impostare dimensione minima per ogni parte, prevenire parti troppo piccole. Senza limite, le parti possono essere troppo piccole.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setLeftComponent(Component)</code> e <code>setRightComponent(Component)</code></li>
  <li>Metodo <code>setMinimumSize(Dimension)</code> per componenti</li>
  <li>Gestire dimensioni minime delle parti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le dimensioni minime ti permettono di prevenire parti troppo piccole e migliorare il layout.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta dimensione minima per componente: <code>leftPanel.setMinimumSize(new Dimension(100, 0));</code> e <code>rightPanel.setMinimumSize(new Dimension(100, 0));</code></li>
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
<p>Le parti non possono essere più piccole della dimensione minima. Puoi prevenire parti troppo piccole.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (182, 'it', 'Pannello Diviso Maestro: Imposta Dimensioni Minime',
        'Crea un pannello diviso, imposta dimensione minima 100x0 per pannello sinistro tramite setMinimumSize()')
ON CONFLICT (task_id, language_code) DO NOTHING;
