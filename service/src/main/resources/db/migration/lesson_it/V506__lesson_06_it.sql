-- Flyway migration V5: Lesson 6
-- This migration contains lesson, tasks, and documentation for lesson 6

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (51, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare un campo password</h2>
<p class="intro">I campi password (<code>JPasswordField</code>) proteggono informazioni confidenziali. Le password non devono essere visibili sullo schermo — questa è la base della sicurezza. Il testo è nascosto con asterischi così nessuno può sbirciare.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>JPasswordField</code> — campo per input password</li>
  <li>Creare un campo di input protetto</li>
  <li>Nascondere automaticamente il testo inserito</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I campi password proteggono informazioni confidenziali. Senza campi password, chiunque può sbirciare la password inserita.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un campo password: <code>JPasswordField passwordField = new JPasswordField();</code></li>
  <li>Aggiungi al form: <code>add(passwordField);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Creare con dimensione: <code>new JPasswordField(20)</code></li>
  <li><strong>✅ Eccellente:</strong> Usare nome chiaro: <code>passwordField</code></li>
  <li><strong>⚠️ Accettabile:</strong> <code>add(new JPasswordField());</code> — non puoi configurare dopo</li>
</ul>
<p><strong>Importante:</strong> Il campo password nasconde automaticamente il testo inserito con asterischi. Di default, il simbolo * è usato per mascherare. Puoi cambiare il carattere di mascheramento con il metodo <code>setEchoChar()</code>. Ottenere password: <code>char[] password = passwordField.getPassword();</code>. Usa solo per password, non per testo normale.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un campo password sul form. Quando si inserisce testo, appariranno asterischi invece di lettere. Questo protegge la password da occhi indiscreti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (51, 'it', 'Campo password principiante: crea un campo protetto', 'Crea un campo password e aggiungilo al form')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (52, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Carattere di eco</h2>
<p class="intro">Diversi caratteri di eco possono essere usati per diversi stili di interfaccia. Alcune applicazioni usano ● o • invece di *. Questo rende l''interfaccia unica.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setEchoChar(char c)</code> — impostare carattere di eco</li>
  <li>Cambiare il carattere visualizzato invece della password</li>
  <li>Personalizzare aspetto del campo password</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Personalizzare il carattere di eco permette di creare uno stile di interfaccia unico e migliorare la percezione visiva.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un campo password: <code>JPasswordField passwordField = new JPasswordField();</code></li>
  <li>Imposta carattere di eco: <code>passwordField.setEchoChar(''●'');</code></li>
  <li>Aggiungi al form: <code>add(passwordField);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Caratteri visibili: ●, •, *</li>
  <li><strong>✅ Eccellente:</strong> Il carattere deve essere chiaro e visibile</li>
  <li><strong>⚠️ Evita:</strong> Caratteri invisibili — l''utente non capirà cosa sta inserendo</li>
</ul>
<p><strong>Importante:</strong> Puoi usare qualsiasi carattere Unicode. Caratteri standard: *, ●, •.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Invece di asterischi, verrà usato il carattere specificato. Se hai impostato ●, sarà quello visualizzato quando si inserisce.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (52, 'it', 'Carattere di eco: cambia asterisco con altro carattere',
        'Crea un campo password, imposta carattere di eco ● e aggiungilo al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (53, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: A capo automatico in area di testo</h2>
<p class="intro">L''a capo automatico rende il testo leggibile. Le righe lunghe non andranno oltre i limiti dell''area, il testo si adatterà automaticamente. Senza questo, apparirà scroll orizzontale.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setLineWrap()</code> — abilitare a capo automatico</li>
  <li>Il metodo <code>setWrapStyleWord()</code> — a capo per parole</li>
  <li>Configurare a capo del testo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''a capo automatico migliora la leggibilità del testo ed elimina la necessità di scroll orizzontale.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Abilita a capo: <code>textArea.setLineWrap(true);</code></li>
  <li>Abilita a capo per parole: <code>textArea.setWrapStyleWord(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setLineWrap(true)</code> per a capo</li>
  <li><strong>✅ Eccellente:</strong> <code>setWrapStyleWord(true)</code> per a capo per parole, combinare entrambi i metodi</li>
  <li><strong>⚠️ Evita:</strong> A capo per caratteri — le parole si romperanno</li>
</ul>
<p><strong>Importante:</strong> L''a capo per parole si legge meglio. L''a capo per caratteri può rompere parole. Usa insieme per risultato migliore.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Le righe lunghe si adatteranno automaticamente. Il testo si adatterà per parole, non andando oltre i limiti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (53, 'it', 'Area di testo maestro: abilita a capo automatico',
        'Imposta setLineWrap(true) e setWrapStyleWord(true) per area di testo')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (54, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Dimensione tabulazione</h2>
<p class="intro">La dimensione della tabulazione rende il testo strutturato. Codice, liste, dati strutturati — tutto questo richiede tabulazioni. Senza impostazione, la tabulazione sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setTabSize()</code> — impostare dimensione tabulazione</li>
  <li>Configurare indentazione nel testo</li>
  <li>Creare testo strutturato</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La dimensione corretta della tabulazione migliora la struttura del testo, specialmente per codice e liste.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta dimensione tabulazione: <code>textArea.setTabSize(4);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setTabSize()</code> per configurazione</li>
  <li><strong>✅ Dimensioni:</strong> 4 per codice (standard Java), 2 per codice compatto, 8 per standard vecchi</li>
  <li><strong>⚠️ Evita:</strong> Dimensione troppo grande — può essere scomodo</li>
</ul>
<p><strong>Importante:</strong> La dimensione è specificata in spazi. 4 — standard per Java.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La tabulazione sarà della dimensione necessaria. Quando si preme Tab, verrà inserito il numero necessario di spazi.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (54, 'it', 'Area di testo maestro: configura dimensione tabulazione',
        'Imposta dimensione tabulazione 4 tramite setTabSize(4)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (55, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: A capo automatico (continuazione)</h2>
<p class="intro">L''a capo automatico rende il testo leggibile. Le righe lunghe si adatteranno automaticamente, il testo sarà completamente visibile. Senza a capo, il testo andrà oltre i limiti.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setLineWrap()</code> — abilitare a capo</li>
  <li>Il metodo <code>setWrapStyleWord()</code> — a capo per parole</li>
  <li>Creare testo leggibile</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''a capo automatico migliora la leggibilità e permette di vedere tutto il testo senza scroll orizzontale.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Abilita a capo: <code>textArea.setLineWrap(true);</code></li>
  <li>Abilita a capo per parole: <code>textArea.setWrapStyleWord(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setLineWrap(true)</code> per a capo, <code>setWrapStyleWord(true)</code> per a capo per parole</li>
  <li><strong>✅ Combina:</strong> Entrambi i metodi insieme</li>
  <li><strong>⚠️ Evita:</strong> A capo per caratteri — può essere illeggibile</li>
</ul>
<p><strong>Importante:</strong> Usa per testo lungo. L''a capo per parole si legge meglio.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo si adatterà automaticamente. Le righe lunghe si adatteranno a una nuova riga.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (55, 'it', 'Area di testo maestro: abilita a capo automatico',
        'Abilita a capo tramite setLineWrap(true), abilita a capo per parole tramite setWrapStyleWord(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (56, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Aggiungere testo</h2>
<p class="intro">Aggiungere testo permette di accumulare contenuto. Puoi aggiungere testo alla fine, creare un log, accumulare informazioni. Senza aggiungere, dovrai sostituire tutto il testo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>append()</code> — aggiungere testo</li>
  <li>Aggiungere testo alla fine</li>
  <li>Creare testo accumulativo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Aggiungere testo alla fine è utile per creare log, accumulare informazioni e costruire testo gradualmente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi testo: <code>textArea.append("Nuova riga\n");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>append()</code> per aggiungere alla fine</li>
  <li><strong>✅ Eccellente:</strong> Usare per log, usare \n per a capo</li>
  <li><strong>⚠️ Evita:</strong> Aggiungere troppo frequentemente — può essere lento</li>
</ul>
<p><strong>Importante:</strong> Usa per accumulare testo. Non aggiungere troppo frequentemente per migliori prestazioni.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo sarà aggiunto alla fine. Puoi accumulare testo gradualmente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (56, 'it', 'Area di testo maestro: aggiungi testo', 'Aggiungi testo "Nuova riga\n" tramite append()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (57, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Inserire testo</h2>
<p class="intro">Inserire testo permette di modificare contenuto. Puoi inserire testo in una posizione specificata senza sostituire tutto il testo. Senza inserimento, dovrai sostituire tutto il testo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>insert()</code> — inserire testo</li>
  <li>Inserire testo in posizione specificata</li>
  <li>Creare contenuto modificabile</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Inserire testo in una posizione specifica permette di modificare contenuto in modo preciso senza sostituire tutto il testo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Inserisci testo: <code>textArea.insert("Testo inserito", 0);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>insert()</code> per inserire in posizione specificata</li>
  <li><strong>✅ Eccellente:</strong> Usare per modifica, combinare con <code>append()</code></li>
  <li><strong>⚠️ Evita:</strong> Inserire in posizione inesistente</li>
</ul>
<p><strong>Importante:</strong> Specifica posizione corretta. Usa per migliorare l''esperienza utente.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo sarà inserito nella posizione specificata. Puoi modificare contenuto in modo preciso.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (57, 'it', 'Area di testo maestro: inserisci testo',
        'Inserisci testo "Testo inserito" in posizione 0 tramite insert()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (58, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Sostituire intervallo di testo</h2>
<p class="intro">Sostituire intervallo accelera la modifica. Puoi sostituire testo in un intervallo specificato senza eliminare e inserire manualmente. Senza sostituzione, dovrai eliminare e inserire testo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>replaceRange()</code> — sostituire intervallo</li>
  <li>Sostituire testo in intervallo specificato</li>
  <li>Migliorare la modifica</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Sostituire intervallo accelera la modifica e migliora l''esperienza utente quando si lavora con testo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Sostituisci intervallo: <code>textArea.replaceRange("Testo nuovo", 0, 5);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>replaceRange()</code> per sostituzione</li>
  <li><strong>✅ Eccellente:</strong> Specificare intervallo corretto, usare per modifica veloce, combinare con <code>select()</code></li>
  <li><strong>⚠️ Evita:</strong> Sostituire intervallo inesistente</li>
</ul>
<p><strong>Importante:</strong> Usa per migliorare l''esperienza utente.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo nell''intervallo specificato sarà sostituito. Puoi sostituire rapidamente il testo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (58, 'it', 'Area di testo maestro: sostituisci testo',
        'Sostituisci intervallo 0-5 tramite replaceRange("Testo nuovo", 0, 5)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (59, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Numero di righe</h2>
<p class="intro">Il numero di righe è importante per l''analisi. Puoi scoprire quante righe ci sono nel testo, migliorare la funzionalità. Senza contare, non puoi sapere il numero di righe.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>getLineCount()</code> — ottenere numero di righe</li>
  <li>Contare righe nel testo</li>
  <li>Migliorare la funzionalità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Contare righe è utile per analisi del testo, validazione e migliorare la funzionalità dell''applicazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni numero di righe: <code>int lines = textArea.getLineCount();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getLineCount()</code> per ottenere numero di righe</li>
  <li><strong>✅ Eccellente:</strong> Usare per analisi, validazione, migliorare funzionalità</li>
  <li><strong>⚠️ Considera:</strong> Le righe vuote sono anche contate</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Puoi ottenere il numero di righe nell''area di testo. Usa per analisi e validazione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (59, 'it', 'Area di testo maestro: ottieni numero di righe', 'Ottieni numero di righe tramite getLineCount()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (60, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 10: Ottenere testo di riga</h2>
<p class="intro">Il testo di riga è importante per l''analisi. Puoi ottenere testo di una riga specifica, processarlo, migliorare la funzionalità. Senza ottenere, non puoi processare la riga.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>getLineStartOffset()</code> — inizio riga</li>
  <li>Il metodo <code>getLineEndOffset()</code> — fine riga</li>
  <li>Ottenere testo di riga</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Ottenere testo di una riga specifica permette di processare testo riga per riga e migliorare la funzionalità dell''applicazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni inizio riga: <code>int start = textArea.getLineStartOffset(0);</code></li>
  <li>Ottieni fine riga: <code>int end = textArea.getLineEndOffset(0);</code></li>
  <li>Ottieni testo: <code>String line = textArea.getText(start, end - start);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getLineStartOffset()</code> per inizio, <code>getLineEndOffset()</code> per fine, <code>getText()</code> per ottenere</li>
  <li><strong>✅ Eccellente:</strong> Usare per migliorare funzionalità</li>
  <li><strong>⚠️ Evita:</strong> Usare riga inesistente</li>
</ul>
<p><strong>Importante:</strong> Verifica limiti prima di ottenere testo di riga.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Puoi ottenere testo di una riga specifica. Usa per processare testo riga per riga.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (60, 'it', 'Area di testo maestro: ottieni testo di riga',
        'Ottieni inizio riga 0 tramite getLineStartOffset(), fine tramite getLineEndOffset(), ottieni testo tramite getText()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (61, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 11: A capo automatico (conclusione)</h2>
<p class="intro">L''a capo automatico migliora la leggibilità. Puoi adattare automaticamente righe lunghe, migliorare la visualizzazione. Senza a capo, le righe andranno oltre i limiti.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setLineWrap()</code> — abilitare a capo</li>
  <li>A capo automatico di righe lunghe</li>
  <li>Migliorare la leggibilità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''a capo automatico migliora la leggibilità e visualizzazione del testo, eliminando la necessità di scroll orizzontale.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Abilita a capo: <code>textArea.setLineWrap(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setLineWrap(true)</code> per abilitare</li>
  <li><strong>✅ Eccellente:</strong> Combinare con <code>setWrapStyleWord()</code>, usare per migliorare leggibilità</li>
  <li><strong>⚠️ Considera:</strong> Non usare per codice — può rompere formattazione</li>
</ul>
<p><strong>Importante:</strong> Usa per leggibilità e migliorare visualizzazione di testo normale.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Le righe lunghe si adatteranno automaticamente. Puoi migliorare la leggibilità del testo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (61, 'it', 'Area di testo maestro: abilita a capo automatico', 'Abilita a capo tramite setLineWrap(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Italian)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
