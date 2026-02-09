-- Flyway migration V5: Lesson 47
-- This migration contains lesson, tasks, and documentation for lesson 47

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (421, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Rispondere a Pressioni Tasti con KeyListener</h2>
<p class="intro">KeyListener permette rispondere a tastiera. Scorciatoie, input testo, navigazione — tutto questo richiede gestione tastiera. Senza questo, interfaccia non sarà interattiva.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Interfaccia <code>KeyListener</code> — gestione tastiera</li>
  <li>Metodi <code>keyPressed()</code>, <code>keyReleased()</code>, <code>keyTyped()</code></li>
  <li>Gestire pressioni tasti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>KeyListener è necessario per creare interfaccia interattiva con gestione tastiera.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea ascoltatore: <code>KeyListener listener = new KeyListener() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void keyPressed(KeyEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;if (e.getKeyCode() == KeyEvent.VK_ENTER) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Enter premuto!");<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void keyReleased(KeyEvent e) {}<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void keyTyped(KeyEvent e) {}<br>
};</code></li>
  <li>Aggiungi ascoltatore a componente: <code>component.addKeyListener(listener);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getKeyCode()</code> per tasti fisici</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>getKeyChar()</code> per caratteri, verificare modificatori: <code>isShiftDown()</code>, <code>isControlDown()</code></li>
  <li><strong>⚠️ Evita:</strong> Gestire tutti i tasti — può essere lento</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando premi tasti, gestore si attiverà. Puoi gestire qualsiasi tasto e combinazioni.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (421, 'it', 'KeyListener Principiante: Rispondere a Pressioni Tasti',
        'Crea KeyListener, gestisci pressione Enter e aggiungi ascoltatore a componente')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (422, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Gestire Combinazioni Tasti con KeyListener</h2>
<p class="intro">Gestire combinazioni tasti rende interfaccia veloce. Scorciatoie, azioni rapide, combinazioni — tutto questo richiede gestione modificatori. Senza questo, non puoi creare scorciatoie convenienti.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodi <code>isControlDown()</code>, <code>isShiftDown()</code>, <code>isAltDown()</code></li>
  <li>Gestire combinazioni tasti</li>
  <li>Creare scorciatoie</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire combinazioni tasti è necessario per creare scorciatoie convenienti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Verifica modificatori: <code>if (e.isControlDown() && e.getKeyCode() == KeyEvent.VK_C) {<br>
&nbsp;&nbsp;label.setText("Ctrl+C premuto!");<br>
}</code></li>
  <li>O verifica Shift: <code>if (e.isShiftDown() && e.getKeyCode() == KeyEvent.VK_ENTER) {<br>
&nbsp;&nbsp;label.setText("Shift+Enter premuto!");<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Verificare modificatori prima di verificare tasto</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>isControlDown()</code> per Ctrl, usare <code>isShiftDown()</code> per Shift, usare <code>isAltDown()</code> per Alt</li>
  <li><strong>⚠️ Evita:</strong> Gestire tutte le combinazioni — può essere complesso</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Combinazioni tasti saranno gestite. Puoi creare scorciatoie Ctrl+C, Shift+Enter e altre.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (422, 'it', 'KeyListener Maestro: Gestire Combinazioni Tasti',
        'In keyPressed verifica isControlDown() e VK_C, mostra messaggio quando premi Ctrl+C')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (424, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Aggiungere Colla in BoxLayout</h2>
<p class="intro">La colla crea spazio estendibile. Puoi separare componenti, spingerli a bordi, creare layout flessibili. Senza colla, componenti saranno premuti insieme.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>Box.createHorizontalGlue()</code> — colla orizzontale</li>
  <li>Metodo <code>Box.createVerticalGlue()</code> — colla verticale</li>
  <li>Creare spazio estendibile</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La colla è necessaria per creare layout flessibili con separazione componenti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea colla: <code>Component glue = Box.createHorizontalGlue();</code></li>
  <li>Aggiungi componenti e colla: <code>add(button1);<br>
add(glue);<br>
add(button2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createHorizontalGlue()</code> per orizzontale</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>createVerticalGlue()</code> per verticale, separare componenti con colla, spingere componenti a bordi</li>
  <li><strong>⚠️ Evita:</strong> Troppa colla — può essere eccessivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Spazio estendibile apparirà tra componenti. Colla prenderà spazio disponibile. Componenti saranno separati.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (424, 'it', 'BoxLayout Maestro: Aggiungere Colla',
        'Crea colla orizzontale via createHorizontalGlue(), aggiungi componenti e colla')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (423, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Gestire Rilascio Tasti con KeyListener</h2>
<p class="intro">Gestire rilascio tasti permette tracciare stato. Giochi, animazioni, scorciatoie — tutto questo richiede gestione rilascio. Senza questo, non puoi determinare quando azione deve fermarsi.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>keyReleased()</code> — gestire rilascio</li>
  <li>Tracciare stato tasti</li>
  <li>Gestire rilascio tasti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire rilascio tasti è necessario per tracciare stato e gestire azioni.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Sovrascrivi keyReleased: <code>@Override<br>
public void keyReleased(KeyEvent e) {<br>
&nbsp;&nbsp;if (e.getKeyCode() == KeyEvent.VK_SPACE) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Spazio rilasciato!");<br>
&nbsp;&nbsp;}<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>keyReleased()</code> per gestire rilascio</li>
  <li><strong>✅ Ottimo:</strong> Fermare azioni al rilascio, usare per gestione stato</li>
  <li><strong>⚠️ Evita:</strong> Ignorare keyReleased — azione non si fermerà</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando rilasci tasto, gestore si attiverà. Puoi fermare azione, cambiare stato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (423, 'it', 'KeyListener Maestro: Gestire Rilascio Tasti',
        'Sovrascrivi keyReleased(), gestisci rilascio VK_SPACE, mostra messaggio')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (425, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Aggiungere Area Rigida in BoxLayout</h2>
<p class="intro">L''area rigida crea spazio fisso. Puoi separare componenti con spazio fisso. Senza area rigida, spazio cambierà.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>Box.createRigidArea()</code> — area rigida</li>
  <li>Creare spazio fisso</li>
  <li>Separare componenti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''area rigida è necessaria per creare spazi fissi tra componenti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea area: <code>Component area = Box.createRigidArea(new Dimension(10, 10));</code></li>
  <li>Aggiungi componenti e area: <code>add(button1);<br>
add(area);<br>
add(button2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createRigidArea()</code> per area rigida</li>
  <li><strong>✅ Ottimo:</strong> Usare Dimension per dimensione, separare componenti con area, usare per spazi fissi</li>
  <li><strong>⚠️ Evita:</strong> Area troppo grande — può essere eccessivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Spazio fisso apparirà tra componenti. Spazio sarà costante.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (425, 'it', 'BoxLayout Maestro: Aggiungere Area Rigida',
        'Crea area rigida via createRigidArea() con dimensione 10x10, aggiungi tra componenti')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (426, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Aggiungere Distanziatore in BoxLayout</h2>
<p class="intro">Il distanziatore crea spazio fisso. Puoi separare componenti con spazio fisso. Senza distanziatore, spazio cambierà.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>Box.createHorizontalStrut()</code> — distanziatore orizzontale</li>
  <li>Metodo <code>Box.createVerticalStrut()</code> — distanziatore verticale</li>
  <li>Creare spazio fisso</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il distanziatore è necessario per creare spazi fissi tra componenti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea distanziatore: <code>Component strut = Box.createHorizontalStrut(20);</code></li>
  <li>Aggiungi componenti e distanziatore: <code>add(button1);<br>
add(strut);<br>
add(button2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createHorizontalStrut()</code> per orizzontale</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>createVerticalStrut()</code> per verticale, separare componenti con distanziatore, usare per spazi fissi</li>
  <li><strong>⚠️ Evita:</strong> Distanziatore troppo grande — può essere eccessivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Spazio fisso apparirà tra componenti. Spazio sarà costante.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (426, 'it', 'BoxLayout Maestro: Aggiungere Distanziatore',
        'Crea distanziatore orizzontale via createHorizontalStrut(20), aggiungi tra componenti')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (427, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Impostare Dimensione Massima in BoxLayout</h2>
<p class="intro">La dimensione massima limita componente. Puoi specificare dimensione massima, prevenire stiramento eccessivo. Senza limite, componente può stirarsi troppo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setMaximumSize()</code> — impostare dimensione massima</li>
  <li>Limitare dimensione componente</li>
  <li>Creare layout controllati</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La dimensione massima è necessaria per prevenire stiramento eccessivo di componenti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta dimensione massima: <code>component.setMaximumSize(new Dimension(200, 100));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMaximumSize()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare Dimension per dimensione, usare per limitare, adattare a contenuto</li>
  <li><strong>⚠️ Evita:</strong> Dimensione troppo piccola — può essere scomodo</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componente sarà limitato da dimensione massima. Componente non si stirerà più di specificato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (427, 'it', 'BoxLayout Maestro: Impostare Dimensione Massima',
        'Imposta dimensione massima 200x100 via setMaximumSize()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (428, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Impostare Spazi in BorderLayout</h2>
<p class="intro">Gli spazi migliorano aspetto visivo. Puoi aggiungere distanza tra componenti, migliorare leggibilità. Senza spazi, componenti saranno stretti.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Costruttore <code>BorderLayout(int, int)</code> — spazi</li>
  <li>Spazi orizzontali e verticali</li>
  <li>Migliorare aspetto visivo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gli spazi sono necessari per migliorare aspetto visivo e leggibilità.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea layout con spazi: <code>BorderLayout layout = new BorderLayout(10, 10);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>BorderLayout(int, int)</code> per spazi</li>
  <li><strong>✅ Ottimo:</strong> Usare valori ragionevoli, migliorare aspetto visivo, migliorare leggibilità</li>
  <li><strong>⚠️ Evita:</strong> Spazi troppo grandi</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Spazi saranno tra componenti. Puoi migliorare aspetto visivo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (428, 'it', 'BorderLayout Maestro: Impostare Spazi',
        'Crea BorderLayout con spazi 10, 10 via costruttore BorderLayout(10, 10)')
ON CONFLICT (task_id, language_code) DO NOTHING;
