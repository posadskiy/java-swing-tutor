-- Flyway migration V5: Lesson 53
-- This migration contains lesson, tasks, and documentation for lesson 53

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (458, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare Timer con Timer</h2>
<p class="intro">Il timer permette eseguire azioni periodicamente. Animazioni, aggiornamenti interfaccia, verifiche stato — tutto questo richiede timer. Senza questi, non puoi creare interfaccia dinamica.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>Timer</code> — timer</li>
  <li>Metodi <code>start()</code>, <code>stop()</code>, <code>restart()</code></li>
  <li>Creare azioni periodiche</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il timer è necessario per creare interfaccia dinamica con azioni periodiche.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea ActionListener: <code>ActionListener task = new ActionListener() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void actionPerformed(ActionEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Tic!");<br>
&nbsp;&nbsp;}<br>
};</code></li>
  <li>Crea timer: <code>Timer timer = new Timer(1000, task);</code></li>
  <li>Avvia timer: <code>timer.start();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Specificare ritardo in millisecondi</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>setRepeats(false)</code> per esecuzione unica, usare <code>setInitialDelay()</code> per ritardo iniziale</li>
  <li><strong>⚠️ Evita:</strong> Verifica troppo frequente — può essere lento</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il timer si attiverà ogni secondo. L''azione sarà eseguita periodicamente. Puoi creare animazioni, aggiornamenti interfaccia.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (458, 'it', 'Timer Principiante: Crea Timer',
        'Crea ActionListener, crea Timer con ritardo 1000 ms, avvia timer')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (459, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Fermare e Riavviare Timer</h2>
<p class="intro">Il controllo del timer permette controllare esecuzione azioni. Puoi mettere in pausa animazione, fermare aggiornamenti, riavviare dall''inizio. Senza questo, timer funzionerà costantemente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>stop()</code> — fermare timer</li>
  <li>Metodo <code>restart()</code> — riavviare timer</li>
  <li>Gestire stato timer</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il controllo del timer è necessario per controllare esecuzione azioni periodiche.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ferma timer: <code>timer.stop();</code></li>
  <li>Riavvia timer: <code>timer.restart();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>stop()</code> per fermare</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>restart()</code> per riavviare dall''inizio, verificare <code>isRunning()</code> prima di fermare</li>
  <li><strong>⚠️ Evita:</strong> Fermare timer già fermato — sicuro, ma ridondante</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il timer può essere fermato e riavviato. L''azione si metterà in pausa e riprenderà.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (459, 'it', 'Timer Maestro: Ferma e Riavvia Timer',
        'Ferma timer via stop(), poi riavvia via restart()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (462, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Determinare Codice Tasto in KeyListener</h2>
<p class="intro">Il codice tasto permette processare tasti specifici. Enter per confermare, Escape per annullare, frecce per navigazione — tutto questo richiede determinare codice. Senza questo, non puoi processare tasto specifico.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getKeyCode()</code> — codice tasto</li>
  <li>Costanti codice tasto (VK_ENTER, VK_SPACE)</li>
  <li>Processare tasti specifici</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il codice tasto è necessario per processare tasti specifici.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Gestisci pressione: <code>component.addKeyListener(new KeyAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void keyPressed(KeyEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;if (e.getKeyCode() == KeyEvent.VK_ENTER) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Enter premuto!");<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getKeyCode()</code> per verificare</li>
  <li><strong>✅ Ottimo:</strong> Usare costanti VK_* per tasti, processare tasti funzione, processare frecce per navigazione</li>
  <li><strong>⚠️ Evita:</strong> Ignorare codice — perdita funzionalità</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Puoi processare tasti specifici. Quando Enter è premuto, un''azione si eseguirà, quando Escape — altra.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (462, 'it', 'KeyListener Maestro: Determina Codice Tasto',
        'Aggiungi KeyListener, verifica getKeyCode() == VK_ENTER, mostra messaggio')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (460, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Creare Timer Una Volta</h2>
<p class="intro">Il timer una volta permette eseguire azione con ritardo. Mostrare messaggio dopo 3 secondi, chiusura automatica finestra, esecuzione ritardata — tutto questo richiede timer una volta. Senza questo, timer si ripeterà infinitamente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setRepeats()</code> — impostare ripetizione</li>
  <li>Creare timer una volta</li>
  <li>Usare timer per ritardi</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il timer una volta è necessario per eseguire azioni con ritardo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea timer: <code>Timer timer = new Timer(3000, e -> {<br>
&nbsp;&nbsp;label.setText("Passati 3 secondi!");<br>
});</code></li>
  <li>Disabilita ripetizione: <code>timer.setRepeats(false);</code></li>
  <li>Avvia timer: <code>timer.start();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setRepeats(false)</code> per esecuzione unica</li>
  <li><strong>✅ Ottimo:</strong> Usare per ritardi prima di azioni, fermare timer in gestore per affidabilità</li>
  <li><strong>⚠️ Evita:</strong> Dimenticare setRepeats(false) — si ripeterà</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il timer si eseguirà una volta e si fermerà. L''azione avverrà dopo tempo specificato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (460, 'it', 'Timer Maestro: Crea Timer Una Volta',
        'Crea Timer con ritardo 3000 ms, imposta setRepeats(false), avvia timer')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (463, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Determinare Carattere Tasto in KeyListener</h2>
<p class="intro">Il carattere tasto permette processare testo. Puoi ottenere carattere inserito, processare testo. Senza carattere, non puoi processare input testo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getKeyChar()</code> — ottenere carattere</li>
  <li>Distinguere caratteri e codici</li>
  <li>Processare input testo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il carattere tasto è necessario per processare input testo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Gestisci pressione: <code>component.addKeyListener(new KeyAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void keyTyped(KeyEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;char ch = e.getKeyChar();<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Carattere: " + ch);<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getKeyChar()</code> per ottenere carattere</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>keyTyped()</code> per input testo, processare lettere e numeri, filtrare caratteri</li>
  <li><strong>⚠️ Evita:</strong> Ignorare carattere — perdita funzionalità</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Puoi ottenere carattere inserito. Quando digiti, puoi determinare carattere.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (463, 'it', 'KeyListener Maestro: Determina Carattere Tasto',
        'Aggiungi KeyListener, ottieni carattere via getKeyChar() in keyTyped(), mostralo')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (461, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Impostare Ritardo Iniziale in Timer</h2>
<p class="intro">Il ritardo iniziale permette ritardare avvio timer. Mostrare messaggio dopo 5 secondi, aggiornamento automatico dopo caricamento, azioni ritardate — tutto questo richiede ritardo iniziale. Senza questo, timer inizierà immediatamente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setInitialDelay()</code> — impostare ritardo iniziale</li>
  <li>Differenza tra ritardo iniziale e intervallo</li>
  <li>Creare timer con avvio ritardato</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il ritardo iniziale è necessario per avvio ritardato del timer.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea timer: <code>Timer timer = new Timer(1000, e -> {<br>
&nbsp;&nbsp;label.setText("Tic!");<br>
});</code></li>
  <li>Imposta ritardo iniziale: <code>timer.setInitialDelay(5000);</code></li>
  <li>Avvia timer: <code>timer.start();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setInitialDelay()</code> per ritardare avvio</li>
  <li><strong>✅ Ottimo:</strong> Impostare ritardo e intervallo diversi, usare per azioni ritardate</li>
  <li><strong>⚠️ Evita:</strong> Ritardo troppo grande — utente aspetterà</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il timer inizierà dopo tempo specificato. La prima esecuzione avverrà dopo ritardo iniziale, poi per intervallo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (461, 'it', 'Timer Maestro: Imposta Ritardo Iniziale',
        'Crea Timer con intervallo 1000 ms, imposta setInitialDelay(5000), avvia timer')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (464, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Determinare Modificatori in KeyListener</h2>
<p class="intro">I modificatori permettono processare combinazioni. Puoi determinare se Ctrl, Alt, Shift sono premuti, processare combinazioni. Senza modificatori, non puoi processare combinazioni.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getModifiersEx()</code> — ottenere modificatori</li>
  <li>Verificare Ctrl, Alt, Shift</li>
  <li>Processare combinazioni tasti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I modificatori sono necessari per processare combinazioni tasti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Gestisci pressione: <code>component.addKeyListener(new KeyAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void keyPressed(KeyEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;if ((e.getModifiersEx() & InputEvent.CTRL_DOWN_MASK) != 0) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Ctrl premuto!");<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getModifiersEx()</code> per ottenere</li>
  <li><strong>✅ Ottimo:</strong> Verificare CTRL_DOWN_MASK per Ctrl, verificare ALT_DOWN_MASK per Alt, verificare SHIFT_DOWN_MASK per Shift</li>
  <li><strong>⚠️ Evita:</strong> Ignorare modificatori</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Puoi determinare modificatori. Quando premi, puoi sapere se Ctrl, Alt, Shift sono premuti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (464, 'it', 'KeyListener Maestro: Determina Modificatori',
        'Aggiungi KeyListener, verifica getModifiersEx() & CTRL_DOWN_MASK, mostra messaggio')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (465, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Determinare Posizione Tasto in KeyListener</h2>
<p class="intro">La posizione tasto permette distinguere posizioni. Puoi determinare se tasto sinistro o destro è premuto, processare di conseguenza. Senza verifica, non puoi distinguere posizioni.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getKeyLocation()</code> — ottenere posizione</li>
  <li>Distinguere tasto sinistro e destro</li>
  <li>Processare posizioni diverse</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La posizione tasto è necessaria per distinguere posizioni tasti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Gestisci pressione: <code>component.addKeyListener(new KeyAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void keyPressed(KeyEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;if (e.getKeyLocation() == KeyEvent.KEY_LOCATION_LEFT) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Tasto sinistro!");<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getKeyLocation()</code> per verificare</li>
  <li><strong>✅ Ottimo:</strong> Verificare KEY_LOCATION_LEFT per sinistro, verificare KEY_LOCATION_RIGHT per destro, verificare KEY_LOCATION_STANDARD per standard</li>
  <li><strong>⚠️ Evita:</strong> Ignorare posizione</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Puoi determinare posizione tasto. Quando premi, puoi sapere se tasto sinistro o destro.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (465, 'it', 'KeyListener Maestro: Determina Posizione Tasto',
        'Aggiungi KeyListener, verifica getKeyLocation() == KEY_LOCATION_LEFT, mostra messaggio')
ON CONFLICT (task_id, language_code) DO NOTHING;
