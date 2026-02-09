-- Flyway migration V5: Lesson 17
-- This migration contains lesson, tasks, and documentation for lesson 17

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (141, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare finestra principale</h2>
<p class="intro">JFrame è la base dell''applicazione. Tutti i componenti sono posizionati nella finestra. Senza finestra non c''è interfaccia. La finestra definisce dimensione, titolo e comportamento dell''applicazione.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>JFrame</code> — finestra principale dell''applicazione</li>
  <li>Creare finestra</li>
  <li>Configurare finestra (dimensione, titolo, visibilità)</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>JFrame è la base di qualsiasi applicazione Swing e contenitore per tutti i componenti dell''interfaccia.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea finestra: <code>JFrame frame = new JFrame("La mia applicazione");</code></li>
  <li>Imposta dimensione: <code>frame.setSize(800, 600);</code></li>
  <li>Rendi visibile: <code>frame.setVisible(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Impostare titolo nel costruttore</li>
  <li><strong>✅ Eccellente:</strong> Impostare dimensione prima di mostrare, impostare operazione di chiusura: <code>setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);</code></li>
  <li><strong>⚠️ Importante:</strong> Non dimenticare <code>setVisible(true)</code> — la finestra non apparirà!</li>
</ul>
<p><strong>Importante:</strong> Titolo: <code>new JFrame("Titolo")</code> o <code>frame.setTitle("Titolo")</code>. Centratura: <code>frame.setLocationRelativeTo(null);</code>. Chiusura: <code>frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);</code>.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà la finestra dell''applicazione. È una finestra rettangolare con titolo, cornice e pulsanti di controllo. Puoi aggiungere componenti ad essa.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (141, 'it', 'Finestra principiante: crea finestra principale dell''applicazione',
        'Crea finestra con titolo "La mia applicazione", dimensione 800x600 e rendila visibile')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (142, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Creare barra di avanzamento</h2>
<p class="intro">JProgressBar mostra il progresso di esecuzione. Caricamento file, elaborazione dati, esecuzione attività — tutto questo richiede mostrare progresso. Senza questo, l''utente non saprà quanto resta.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>JProgressBar</code> — barra di avanzamento</li>
  <li>Creare barra di avanzamento con intervallo</li>
  <li>Mostrare progresso</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La barra di avanzamento informa l''utente sul progresso di esecuzione dell''attività e migliora l''esperienza utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea barra di avanzamento: <code>JProgressBar progressBar = new JProgressBar(0, 100);</code></li>
  <li>Imposta valore: <code>progressBar.setValue(50);</code></li>
  <li>Aggiungi al form: <code>add(progressBar);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Specificare min e max nel costruttore</li>
  <li><strong>✅ Eccellente:</strong> Usare <code>setStringPainted(true)</code> per mostrare percentuale, usare <code>setIndeterminate(true)</code> per modo indeterminato, aggiornare valore tramite <code>setValue()</code></li>
  <li><strong>⚠️ Evita:</strong> Non aggiornare valore — il progresso non sarà visibile</li>
</ul>
<p><strong>Importante:</strong> <code>getValue()</code> — ottenere valore. <code>setStringPainted(boolean)</code> — mostrare/nascondere testo. <code>setIndeterminate(boolean)</code> — modo indeterminato.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà barra di avanzamento con riempimento. La barra si riempirà proporzionalmente al valore. Puoi mostrare percentuale.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (142, 'it', 'Barra di avanzamento principiante: crea barra di avanzamento',
        'Crea JProgressBar con intervallo 0-100, imposta valore 50, aggiungi al form')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (143, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Operazione di chiusura finestra</h2>
<p class="intro">L''operazione di chiusura definisce il destino dell''applicazione. Senza impostazione corretta, la finestra può chiudersi ma l''applicazione continuerà ad eseguirsi. O viceversa — l''applicazione si chiuderà quando serve solo nascondere la finestra.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setDefaultCloseOperation(int operation)</code> — impostare operazione di chiusura</li>
  <li>Costanti: <code>EXIT_ON_CLOSE</code>, <code>HIDE_ON_CLOSE</code>, <code>DISPOSE_ON_CLOSE</code></li>
  <li>Gestire comportamento alla chiusura finestra</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''operazione di chiusura definisce il comportamento dell''applicazione alla chiusura della finestra e previene effetti indesiderati.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea finestra: <code>JFrame frame = new JFrame("Applicazione");</code></li>
  <li>Imposta operazione di chiusura: <code>frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);</code></li>
  <li>Rendi visibile: <code>frame.setVisible(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>EXIT_ON_CLOSE</code> per finestra principale — chiude l''applicazione</li>
  <li><strong>✅ Eccellente:</strong> <code>HIDE_ON_CLOSE</code> per finestre figlie — nasconde, non chiude, <code>DISPOSE_ON_CLOSE</code> — libera risorse</li>
  <li><strong>⚠️ Importante:</strong> Senza impostazione si usa <code>HIDE_ON_CLOSE</code> — l''applicazione non si chiuderà!</li>
</ul>
<p><strong>Importante:</strong> <code>DO_NOTHING_ON_CLOSE</code> — non fa nulla (serve gestore personalizzato). Per finestra principale generalmente si usa <code>EXIT_ON_CLOSE</code>.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Alla chiusura della finestra, si verificherà l''azione specificata. Se hai scelto <code>EXIT_ON_CLOSE</code>, l''applicazione si chiuderà completamente. Se <code>HIDE_ON_CLOSE</code> — la finestra si nasconderà, ma l''applicazione continuerà ad eseguirsi.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (143, 'it', 'Operazione di chiusura: configura comportamento alla chiusura',
        'Crea finestra, imposta operazione di chiusura EXIT_ON_CLOSE e rendila visibile')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (144, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Mostrare percentuale in barra di avanzamento</h2>
<p class="intro">Mostrare percentuale rende il progresso chiaro. L''utente vede il valore esatto, non solo la barra. Senza questo, è difficile capire quanto resta.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setStringPainted()</code> — mostrare testo</li>
  <li>Il metodo <code>setString()</code> — impostare testo</li>
  <li>Mostrare percentuale in barra di avanzamento</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Mostrare percentuale aumenta l''informatività della barra di avanzamento e migliora la comprensione del progresso da parte dell''utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Abilita mostrare testo: <code>progressBar.setStringPainted(true);</code></li>
  <li>Imposta testo (opzionale): <code>progressBar.setString("50%");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setStringPainted(true)</code> per mostrare</li>
  <li><strong>✅ Eccellente:</strong> Usare <code>setString()</code> per testo personalizzato, calcolare percentuale automaticamente, mostrare informazioni aggiuntive</li>
  <li><strong>⚠️ Evita:</strong> Testo troppo lungo — può non entrare</li>
</ul>
<p><strong>Importante:</strong> Senza <code>setString()</code>, la percentuale viene mostrata automaticamente. Testo corto è migliore.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà testo con percentuale nella barra di avanzamento. Puoi mostrare valore esatto o testo personalizzato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (144, 'it', 'Barra di avanzamento maestro: mostra percentuale',
        'Abilita mostrare testo tramite setStringPainted(true), imposta testo "50%" tramite setString()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (145, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Modo indeterminato barra di avanzamento</h2>
<p class="intro">Il modo indeterminato mostra che il processo è in esecuzione. Quando il tempo di esecuzione esatto è sconosciuto, puoi mostrare animazione. Senza questo, l''utente non saprà che il processo sta funzionando.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setIndeterminate()</code> — modo indeterminato</li>
  <li>Creare barra di avanzamento animata</li>
  <li>Mostrare processo senza progresso esatto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il modo indeterminato è necessario per processi con tempo di esecuzione sconosciuto per mostrare all''utente che il processo è attivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Abilita modo indeterminato: <code>progressBar.setIndeterminate(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setIndeterminate(true)</code> per animazione</li>
  <li><strong>✅ Eccellente:</strong> Cambiare a modo determinato quando il progresso è noto, usare per operazioni lunghe</li>
  <li><strong>⚠️ Evita:</strong> Usare sempre — l''utente non vedrà progresso</li>
</ul>
<p><strong>Importante:</strong> true — barra animata. false — modo normale con percentuale. Usa quando il progresso è sconosciuto. Cambia a determinato quando il progresso è noto.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La barra di avanzamento diventerà animata. La barra si muoverà, mostrando che il processo è in esecuzione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (145, 'it', 'Barra di avanzamento maestro: abilita modo indeterminato',
        'Abilita modo indeterminato tramite setIndeterminate(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (146, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Stringa barra di avanzamento</h2>
<p class="intro">La stringa mostra informazioni sul progresso. Puoi mostrare percentuale, testo, stato. Senza stringa, l''utente non vedrà il progresso esatto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setStringPainted()</code> — mostrare stringa</li>
  <li>Il metodo <code>setString()</code> — impostare stringa</li>
  <li>Mostrare testo su barra di avanzamento</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La stringa aumenta l''informatività della barra di avanzamento, mostrando il valore esatto del progresso.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Abilita mostrare stringa: <code>progressBar.setStringPainted(true);</code></li>
  <li>O imposta stringa personalizzata: <code>progressBar.setString("Caricamento...");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setStringPainted(true)</code> per mostrare</li>
  <li><strong>✅ Eccellente:</strong> Usare <code>setString()</code> per stringa personalizzata, mostrare percentuale automaticamente, mostrare stato</li>
  <li><strong>⚠️ Evita:</strong> Stringa troppo lunga — può essere illeggibile</li>
</ul>
<p><strong>Importante:</strong> <code>getString()</code> — ottenere stringa. Mostra percentuale automaticamente. Usa per informatività.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà stringa sulla barra di avanzamento. Puoi mostrare percentuale o testo personalizzato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (146, 'it', 'Barra di avanzamento maestro: mostra stringa',
        'Abilita mostrare stringa tramite setStringPainted(true), imposta stringa "Caricamento..." tramite setString()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (147, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Bordo barra di avanzamento</h2>
<p class="intro">Il bordo migliora l''aspetto. Puoi mostrare cornice intorno alla barra di avanzamento, migliorare il design visivo. Senza bordo, la barra di avanzamento sarà senza cornice.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setBorderPainted()</code> — mostrare bordo</li>
  <li>Creare barra di avanzamento visivamente progettata</li>
  <li>Migliorare aspetto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il bordo migliora il design visivo della barra di avanzamento e la rende più evidente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Abilita mostrare bordo: <code>progressBar.setBorderPainted(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setBorderPainted(true)</code> per mostrare</li>
  <li><strong>✅ Eccellente:</strong> Usare per design visivo, combinare con altre impostazioni</li>
  <li><strong>⚠️ Evita:</strong> Mostrare sempre bordo — può essere eccessivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La barra di avanzamento avrà bordo. La barra di avanzamento sarà con cornice.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (147, 'it', 'Barra di avanzamento maestro: mostra bordo',
        'Abilita mostrare bordo tramite setBorderPainted(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (148, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Barra di avanzamento indeterminata</h2>
<p class="intro">La barra di avanzamento indeterminata mostra il processo. Puoi mostrare animazione quando il progresso è sconosciuto, migliorare il feedback visivo. Senza indeterminazione, non puoi mostrare il processo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setIndeterminate()</code> — impostare indeterminazione</li>
  <li>Creare barra di avanzamento animata</li>
  <li>Migliorare feedback visivo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il modo indeterminato è necessario per processi con tempo di esecuzione sconosciuto per mostrare all''utente che il processo è attivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Rendi indeterminata: <code>progressBar.setIndeterminate(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setIndeterminate(true)</code> per indeterminazione</li>
  <li><strong>✅ Eccellente:</strong> Usare per progresso sconosciuto, cambiare a determinata quando il progresso è noto, migliorare feedback visivo</li>
  <li><strong>⚠️ Evita:</strong> Sempre indeterminata — può essere poco informativa</li>
</ul>
<p><strong>Importante:</strong> true — indeterminata (animazione). false — determinata (valore). Cambia quando il progresso è noto.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La barra di avanzamento diventerà indeterminata. Si mostrerà animazione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (148, 'it', 'Barra di avanzamento maestro: rendi indeterminata',
        'Rendi la barra di avanzamento indeterminata tramite setIndeterminate(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (149, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Stringa personalizzata barra di avanzamento</h2>
<p class="intro">La stringa personalizzata migliora l''informatività. Puoi mostrare testo personalizzato invece di percentuale, migliorare la comprensione. Senza stringa, ci sarà solo percentuale.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setString()</code> — impostare stringa</li>
  <li>Il metodo <code>setStringPainted()</code> — mostrare stringa</li>
  <li>Creare testo personalizzato</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La stringa personalizzata aumenta l''informatività della barra di avanzamento e permette di mostrare testo più comprensibile all''utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Abilita mostrare stringa: <code>progressBar.setStringPainted(true);</code></li>
  <li>Imposta stringa: <code>progressBar.setString("Caricamento...");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setString()</code> per impostare</li>
  <li><strong>✅ Eccellente:</strong> Usare <code>setStringPainted(true)</code> per mostrare, usare stringhe dinamiche, usare per informatività</li>
  <li><strong>⚠️ Evita:</strong> Stringhe troppo lunghe</li>
</ul>
<p><strong>Importante:</strong> Rendi le stringhe corte per migliore leggibilità.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La barra di avanzamento avrà stringa personalizzata. Puoi mostrare "Caricamento...", "Elaborazione..." ecc.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (149, 'it', 'Barra di avanzamento maestro: imposta stringa personalizzata',
        'Abilita mostrare stringa tramite setStringPainted(true), imposta stringa "Caricamento..." tramite setString()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (150, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 10: Formato stringa barra di avanzamento</h2>
<p class="intro">Il formato stringa migliora l''informatività. Puoi mostrare testo personalizzato, migliorare la comprensione. Senza formato, ci sarà solo percentuale.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setStringPainted()</code> — mostrare stringa</li>
  <li>Formattazione personalizzata stringa</li>
  <li>Migliorare informatività</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La formattazione personalizzata permette di mostrare la stringa nel formato necessario e migliorare l''informatività.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Abilita mostrare stringa: <code>progressBar.setStringPainted(true);</code></li>
  <li>Imposta formato: <code>progressBar.setString(String.format("%d%%", progressBar.getValue()));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setStringPainted(true)</code> per mostrare</li>
  <li><strong>✅ Eccellente:</strong> Usare <code>String.format()</code> per formattare, usare stringhe dinamiche, migliorare informatività</li>
  <li><strong>⚠️ Evita:</strong> Stringhe troppo lunghe</li>
</ul>
<p><strong>Importante:</strong> Rendi le stringhe corte per migliore leggibilità.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La barra di avanzamento avrà formato personalizzato. Puoi mostrare testo formattato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (150, 'it', 'Barra di avanzamento maestro: imposta formato stringa',
        'Abilita mostrare stringa tramite setStringPainted(true), imposta formato tramite String.format("%d%%", getValue())')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (151, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 11: Impostare valore barra di avanzamento</h2>
<p class="intro">Il valore definisce il progresso. Puoi impostare il progresso attuale, aggiornarlo, migliorare la visualizzazione. Senza impostazione, il progresso sarà zero.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setValue()</code> — impostare valore</li>
  <li>Il metodo <code>getValue()</code> — ottenere valore</li>
  <li>Gestire progresso</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire il valore permette di controllare programmaticamente il progresso e aggiornarlo in tempo reale.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta valore: <code>progressBar.setValue(50);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setValue()</code> per impostare, <code>getValue()</code> per ottenere</li>
  <li><strong>✅ Eccellente:</strong> Usare per aggiornare progresso, migliorare visualizzazione</li>
  <li><strong>⚠️ Evita:</strong> Impostare valore fuori dall''intervallo</li>
</ul>
<p><strong>Importante:</strong> Verifica limiti prima di impostare valore.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La barra di avanzamento si aggiornerà con il nuovo valore. Puoi visualizzare il progresso.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (151, 'it', 'Barra di avanzamento maestro: imposta valore', 'Imposta valore 50 tramite setValue()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (152, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 12: Modo indeterminato barra di avanzamento (esteso)</h2>
<p class="intro">Il modo indeterminato mostra animazione. Puoi mostrare progresso animato quando il progresso esatto è sconosciuto, migliorare l''effetto visivo. Senza indeterminazione, il progresso sarà statico.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setIndeterminate()</code> — impostare indeterminazione</li>
  <li>Barra di avanzamento animata</li>
  <li>Migliorare effetto visivo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il modo indeterminato è necessario per processi con tempo di esecuzione sconosciuto per mostrare all''utente che il processo è attivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Abilita indeterminazione: <code>progressBar.setIndeterminate(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setIndeterminate(true)</code> per abilitare</li>
  <li><strong>✅ Eccellente:</strong> Usare per animazione, usare quando il progresso è sconosciuto, migliorare effetto visivo</li>
  <li><strong>⚠️ Evita:</strong> Usare quando il progresso è noto</li>
</ul>
<p><strong>Importante:</strong> true — indeterminata (animazione). false — determinata. Usa per animazione e migliorare effetto visivo.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La barra di avanzamento sarà animata. Puoi mostrare progresso indeterminato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (152, 'it', 'Barra di avanzamento maestro: rendi indeterminata',
        'Abilita indeterminazione tramite setIndeterminate(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Italian)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
