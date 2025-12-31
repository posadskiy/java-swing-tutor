-- Flyway migration V5: Lesson 19
-- This migration contains lesson, tasks, and documentation for lesson 19

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (163, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare finestra senza cornice</h2>
<p class="intro">JWindow permette di creare finestra senza cornice. Suggerimenti popup, schermate di avvio, dialoghi personalizzati — tutto questo richiede finestra senza cornice. Senza di essa, dovrai usare JFrame con cornice.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>JWindow</code> — finestra senza cornice</li>
  <li>Creare finestra</li>
  <li>Differenza da JFrame</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le finestre senza cornice sono necessarie per finestre popup, schermate di avvio e dialoghi personalizzati.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea finestra: <code>JWindow window = new JWindow(frame);</code></li>
  <li>Imposta dimensione: <code>window.setSize(400, 300);</code></li>
  <li>Rendi visibile: <code>window.setVisible(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Specificare finestra padre</li>
  <li><strong>✅ Eccellente:</strong> Usare per finestre popup, usare per schermate di avvio</li>
  <li><strong>⚠️ Evita:</strong> Usare invece di JFrame — migliore per finestre con cornice</li>
</ul>
<p><strong>Importante:</strong> <code>JWindow(padre)</code> — creare finestra. <code>JWindow()</code> — creare finestra senza padre. Senza cornice e titolo.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà finestra senza cornice. È una finestra senza titolo e pulsanti. Puoi usare per finestre popup.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (163, 'it', 'Finestra principiante: crea finestra senza cornice',
        'Crea finestra con frame padre, dimensione 400x300 e rendila visibile')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (164, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Impostare dimensione finestra</h2>
<p class="intro">La dimensione definisce le dimensioni della finestra. Puoi impostare la dimensione necessaria, migliorare il posizionamento. Senza impostazione, la dimensione sarà automatica.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setSize(int, int)</code> — impostare dimensione</li>
  <li>Il metodo <code>setSize(Dimension)</code> — impostare dimensione tramite Dimension</li>
  <li>Gestire dimensione finestra</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire la dimensione permette di controllare le dimensioni della finestra e migliorare il layout dell''interfaccia.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta dimensione: <code>window.setSize(500, 400);</code></li>
  <li>O tramite Dimension: <code>window.setSize(new Dimension(500, 400));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setSize()</code> per impostare</li>
  <li><strong>✅ Eccellente:</strong> Usare Dimension per dimensione, usare per layout, migliorare posizionamento</li>
  <li><strong>⚠️ Evita:</strong> Impostare dimensione troppo piccola o grande</li>
</ul>
<p><strong>Importante:</strong> <code>getSize()</code> — ottenere dimensione. Rendi la dimensione ragionevole.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La finestra avrà la dimensione impostata. Puoi migliorare il posizionamento.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (164, 'it', 'Finestra maestro: imposta dimensione',
        'Crea finestra, imposta dimensione 500x400 tramite setSize(500, 400)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (165, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Impostare posizione finestra</h2>
<p class="intro">La posizione definisce la posizione della finestra. Puoi impostare la posizione necessaria, centrare la finestra, posizionare relativa a un''altra finestra. Senza impostazione, la finestra apparirà in luogo casuale.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setLocation(int, int)</code> — impostare posizione</li>
  <li>Il metodo <code>setLocation(Point)</code> — impostare posizione tramite Point</li>
  <li>Gestire posizione finestra</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire la posizione permette di controllare la posizione della finestra sullo schermo e migliorare l''esperienza utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta posizione: <code>window.setLocation(100, 100);</code></li>
  <li>O tramite Point: <code>window.setLocation(new Point(100, 100));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setLocation()</code> per impostare</li>
  <li><strong>✅ Eccellente:</strong> Usare Point per posizione, centrare finestra relativa allo schermo, posizionare relativa a un''altra finestra</li>
  <li><strong>⚠️ Evita:</strong> Posizionare fuori dallo schermo</li>
</ul>
<p><strong>Importante:</strong> <code>getLocation()</code> — ottenere posizione. <code>setLocationRelativeTo(null)</code> — centrare relativa allo schermo. <code>setLocationRelativeTo(componente)</code> — centrare relativa a componente.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La finestra apparirà alla posizione specificata. Puoi migliorare il posizionamento.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (165, 'it', 'Finestra maestro: imposta posizione',
        'Crea finestra, imposta posizione 100, 100 tramite setLocation(100, 100)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (166, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Finestra sempre in primo piano</h2>
<p class="intro">Sempre in primo piano rende la finestra visibile. Suggerimenti popup, notifiche, messaggi importanti — tutto questo richiede finestra sopra altre. Senza questo, la finestra può essere nascosta.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setAlwaysOnTop(boolean)</code> — sempre in primo piano</li>
  <li>Finestra sopra tutte le altre finestre</li>
  <li>Usare per finestre importanti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La modalità "sempre in primo piano" è necessaria per finestre importanti, notifiche e suggerimenti popup.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Abilita sempre in primo piano: <code>window.setAlwaysOnTop(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setAlwaysOnTop(true)</code> per abilitare</li>
  <li><strong>✅ Eccellente:</strong> Usare per finestre importanti, usare per finestre popup, usare per notifiche</li>
  <li><strong>⚠️ Evita:</strong> Usare per finestre regolari — può interferire</li>
</ul>
<p><strong>Importante:</strong> <code>true</code> — sempre in primo piano, <code>false</code> — priorità normale.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La finestra sarà sempre sopra altre finestre. Anche se apri altre finestre, questa finestra rimarrà visibile.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (166, 'it', 'Finestra maestro: rendi sempre in primo piano',
        'Crea finestra, abilita sempre in primo piano tramite setAlwaysOnTop(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (167, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Colore di sfondo finestra</h2>
<p class="intro">Il colore di sfondo migliora l''aspetto visivo. Puoi impostare il colore necessario, rendere la finestra evidente. Senza impostazione, il colore sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setBackground(Color)</code> — impostare colore di sfondo</li>
  <li>Personalizzare aspetto</li>
  <li>Migliorare aspetto visivo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Impostare colore di sfondo permette di personalizzare l''aspetto della finestra e migliorare la percezione visiva.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta colore di sfondo: <code>window.setBackground(Color.WHITE);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setBackground()</code> per impostare</li>
  <li><strong>✅ Eccellente:</strong> Usare costanti Color, usare <code>new Color()</code> per colori personalizzati, usare per migliorare aspetto</li>
  <li><strong>⚠️ Evita:</strong> Usare colori troppo brillanti</li>
</ul>
<p><strong>Importante:</strong> <code>Color.WHITE</code>, <code>Color.BLACK</code>, <code>Color.GRAY</code> — colori standard. <code>new Color(r, g, b)</code> — colore personalizzato. Rendi il colore ragionevole.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La finestra avrà il colore di sfondo impostato. Puoi migliorare l''aspetto visivo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (167, 'it', 'Finestra maestro: imposta colore di sfondo',
        'Crea finestra, imposta colore di sfondo Color.WHITE tramite setBackground()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (168, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Opacità finestra</h2>
<p class="intro">L''opacità crea effetti. Puoi rendere la finestra semi-trasparente, creare effetto nebbia, migliorare l''aspetto visivo. Senza impostazione, la finestra sarà opaca.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setOpacity(float)</code> — impostare opacità</li>
  <li>Finestra trasparente</li>
  <li>Creare effetti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''opacità permette di creare effetti visivi e migliorare il design dell''interfaccia.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta opacità: <code>window.setOpacity(0.8f);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setOpacity()</code> per impostare</li>
  <li><strong>✅ Eccellente:</strong> Usare valori da 0.0 (trasparente) a 1.0 (opaco), usare per effetti, usare per migliorare aspetto</li>
  <li><strong>⚠️ Evita:</strong> Usare opacità troppo bassa</li>
</ul>
<p><strong>Importante:</strong> 0.0 — completamente trasparente, 1.0 — completamente opaco. Rendi l''opacità ragionevole.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La finestra avrà l''opacità impostata. Puoi vedere attraverso la finestra.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (168, 'it', 'Finestra maestro: imposta opacità',
        'Crea finestra, imposta opacità 0.8 tramite setOpacity(0.8f)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (169, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Chiudere finestra</h2>
<p class="intro">Chiudere finestra libera risorse. Puoi chiudere la finestra programmaticamente, liberare memoria, terminare lavoro. Senza chiudere, la finestra rimarrà in memoria.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>dispose()</code> — chiudere finestra</li>
  <li>Liberare risorse</li>
  <li>Gestire ciclo di vita finestra</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La chiusura corretta della finestra è necessaria per liberare risorse e prevenire perdite di memoria.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Chiudi finestra: <code>window.dispose();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>dispose()</code> per chiudere</li>
  <li><strong>✅ Eccellente:</strong> Usare <code>setVisible(false)</code> per nascondere, liberare risorse, gestire ciclo di vita</li>
  <li><strong>⚠️ Evita:</strong> Non chiudere finestra — perdita di memoria</li>
</ul>
<p><strong>Importante:</strong> <code>dispose()</code> — chiudere finestra e liberare risorse. <code>setVisible(false)</code> — nascondere finestra senza liberare risorse. Usa <code>dispose()</code> per chiusura finale.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La finestra si chiuderà e libererà risorse. Puoi gestire il ciclo di vita della finestra.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (169, 'it', 'Finestra maestro: chiudi finestra', 'Crea finestra, chiudila tramite dispose()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Italian)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
