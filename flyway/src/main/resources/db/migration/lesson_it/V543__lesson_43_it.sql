-- Flyway migration V5: Lesson 43
-- This migration contains lesson, tasks, and documentation for lesson 43

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (370, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare Layout di Gruppo con GroupLayout</h2>
<p class="intro">GroupLayout permette creare layout complessi. Gruppi componenti, allineamento, posizionamento sequenziale e parallelo — tutto questo richiede GroupLayout. Senza questo, moduli complessi sembreranno disordinati.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>GroupLayout</code> — layout di gruppo</li>
  <li>Classi <code>SequentialGroup</code> e <code>ParallelGroup</code> — gruppi</li>
  <li>Creare layout di gruppo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>GroupLayout è necessario per creare layout complessi.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea gestore: <code>GroupLayout layout = new GroupLayout(panel);<br>
panel.setLayout(layout);</code></li>
  <li>Crea gruppo orizzontale: <code>layout.setHorizontalGroup(<br>
&nbsp;&nbsp;layout.createSequentialGroup()<br>
&nbsp;&nbsp;&nbsp;&nbsp;.addComponent(button1)<br>
&nbsp;&nbsp;&nbsp;&nbsp;.addComponent(button2)<br>
);</code></li>
  <li>Crea gruppo verticale: <code>layout.setVerticalGroup(<br>
&nbsp;&nbsp;layout.createParallelGroup()<br>
&nbsp;&nbsp;&nbsp;&nbsp;.addComponent(button1)<br>
&nbsp;&nbsp;&nbsp;&nbsp;.addComponent(button2)<br>
);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createSequentialGroup()</code> per posizionamento sequenziale</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>createParallelGroup()</code> per posizionamento parallelo, combinare gruppi sequenziali e paralleli</li>
  <li><strong>⚠️ Evita:</strong> Struttura troppo complessa — difficile da mantenere</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componenti saranno posizionati in gruppi. Orizzontalmente e verticalmente — come configuri.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (370, 'it', 'GroupLayout Principiante: Creare Layout di Gruppo',
        'Crea GroupLayout, crea gruppo sequenziale orizzontale con due pulsanti, crea gruppo parallelo verticale')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (371, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Aggiungere Spazi Tra Componenti in GroupLayout</h2>
<p class="intro">Gli spazi rendono interfaccia ordinata. Componenti non saranno premuti tra loro, ci sarà separazione visiva. Senza spazi, interfaccia sembrerà sovraccarica.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>addGap()</code> — aggiungere spazio</li>
  <li>Creare spazi tra componenti</li>
  <li>Configurare dimensioni spazi</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gli spazi sono necessari per creare interfaccia ordinata con separazione visiva.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi componente: <code>layout.createSequentialGroup()<br>
&nbsp;&nbsp;.addComponent(button1)</code></li>
  <li>Aggiungi spazio: <code>.addGap(10)</code></li>
  <li>Aggiungi altro componente: <code>.addComponent(button2)</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addGap()</code> per spazi</li>
  <li><strong>✅ Ottimo:</strong> Usare stessi spazi per uniformità, aggiungere spazi all''inizio e fine di gruppi</li>
  <li><strong>⚠️ Evita:</strong> Spazi troppo grandi — può essere eccessivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Spazi appariranno tra componenti. Componenti non saranno premuti tra loro. Interfaccia sembrerà ordinata.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (371, 'it', 'GroupLayout Maestro: Aggiungere Spazi Tra Componenti',
        'In gruppo sequenziale aggiungi componente, aggiungi spazio 10, aggiungi altro componente')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (373, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Gestire Più Pulsanti con Un ActionListener</h2>
<p class="intro">Un gestore per più pulsanti semplifica codice. Puoi determinare fonte evento e eseguire azione necessaria. Senza questo, dovrai creare gestore separato per ogni pulsante.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Gestire più fonti eventi</li>
  <li>Metodo <code>getSource()</code> — determinare fonte</li>
  <li>Creare gestori universali</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Un gestore è necessario per semplificare codice quando gestisci più pulsanti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea gestore: <code>ActionListener listener = e -> {<br>
&nbsp;&nbsp;if (e.getSource() == button1) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Pulsante 1");<br>
&nbsp;&nbsp;} else if (e.getSource() == button2) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Pulsante 2");<br>
&nbsp;&nbsp;}<br>
};</code></li>
  <li>Aggiungi a pulsanti: <code>button1.addActionListener(listener);<br>
button2.addActionListener(listener);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getSource()</code> per determinare</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>getActionCommand()</code> per comando, usare un gestore per gruppo, usare switch per più opzioni</li>
  <li><strong>⚠️ Evita:</strong> Troppe condizioni — può essere complesso</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Un gestore funzionerà per tutti i pulsanti. Quando clicchi qualsiasi pulsante, gestore si attiverà, che determinerà fonte.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (373, 'it', 'ActionListener Maestro: Gestire Più Pulsanti',
        'Crea ActionListener, verifica getSource() per due pulsanti, aggiungi gestore a entrambi i pulsanti')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (372, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Creare Gruppi Paralleli in GroupLayout</h2>
<p class="intro">I gruppi paralleli permettono allineare componenti. Puoi creare colonne, righe, layout complessi. Senza questo, componenti saranno solo posizionati sequenzialmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>createParallelGroup()</code> — creare gruppo parallelo</li>
  <li>Allineare componenti in parallelo</li>
  <li>Creare layout complessi</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I gruppi paralleli sono necessari per allineare componenti e creare layout complessi.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea gruppo parallelo: <code>layout.setHorizontalGroup(<br>
&nbsp;&nbsp;layout.createParallelGroup()<br>
&nbsp;&nbsp;&nbsp;&nbsp;.addComponent(button1)<br>
&nbsp;&nbsp;&nbsp;&nbsp;.addComponent(button2)<br>
);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createParallelGroup()</code> per posizionamento parallelo</li>
  <li><strong>✅ Ottimo:</strong> Combinare gruppi sequenziali e paralleli, usare per creare colonne e righe</li>
  <li><strong>⚠️ Evita:</strong> Solo gruppi paralleli — può essere inflessibile</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componenti saranno allineati in parallelo. Saranno posizionati uno accanto all''altro.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (372, 'it', 'GroupLayout Maestro: Creare Gruppi Paralleli',
        'Crea gruppo parallelo orizzontale con due pulsanti')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (374, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Usare Comando Azione in ActionListener</h2>
<p class="intro">Il comando azione permette identificare fonte. Puoi determinare quale pulsante è premuto senza verificare fonte. Senza comando, dovrai verificare fonte.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getActionCommand()</code> — ottenere comando</li>
  <li>Metodo <code>setActionCommand()</code> — impostare comando</li>
  <li>Identificare fonte attraverso comando</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il comando azione è necessario per identificare fonte evento.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta comando: <code>button.setActionCommand("SAVE");</code></li>
  <li>Ottieni comando in gestore: <code>button.addActionListener(e -> {<br>
&nbsp;&nbsp;String cmd = e.getActionCommand();<br>
&nbsp;&nbsp;if ("SAVE".equals(cmd)) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Salvataggio!");<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setActionCommand()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>getActionCommand()</code> per ottenere, usare comandi chiari, usare per identificazione</li>
  <li><strong>⚠️ Evita:</strong> Duplicare comandi</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>In gestore potrai ottenere comando. Quando clicchi, puoi determinare comando.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (374, 'it', 'ActionListener Maestro: Usare Comando Azione',
        'Imposta comando "SAVE" via setActionCommand(), ottieni comando in ActionListener via getActionCommand()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (375, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Determinare Tempo Evento in ActionListener</h2>
<p class="intro">Il tempo evento permette tracciare azioni. Puoi sapere quando evento è avvenuto, creare log, tracciare sequenza. Senza tempo, non puoi tracciare azioni.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getWhen()</code> — ottenere tempo</li>
  <li>Determinare tempo evento</li>
  <li>Creare timestamp</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il tempo evento è necessario per tracciare azioni e creare log.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni tempo: <code>button.addActionListener(e -> {<br>
&nbsp;&nbsp;long when = e.getWhen();<br>
&nbsp;&nbsp;label.setText("Tempo: " + new Date(when));<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getWhen()</code> per ottenere</li>
  <li><strong>✅ Ottimo:</strong> Usare per logging, usare per tracciamento, convertire a Date</li>
  <li><strong>⚠️ Evita:</strong> Ignorare tempo</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Potrai ottenere tempo evento. Quando clicchi, puoi sapere tempo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (375, 'it', 'ActionListener Maestro: Determinare Quando',
        'Aggiungi ActionListener, ottieni tempo via getWhen(), mostralo')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (377, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Ottenere Carattere Tasto in KeyListener</h2>
<p class="intro">Il carattere tasto è importante per input testo. Puoi ottenere carattere, processare testo, migliorare funzionalità. Senza carattere, non puoi processare testo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getKeyChar()</code> — ottenere carattere</li>
  <li>Ottenere carattere tasto premuto</li>
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
  <li>Ottieni carattere: <code>component.addKeyListener(new KeyAdapter() {<br>
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
  <li><strong>✅ Usa:</strong> <code>getKeyChar()</code> per ottenere</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>keyTyped()</code> per caratteri, processare input testo, migliorare funzionalità</li>
  <li><strong>⚠️ Evita:</strong> Ignorare tasti speciali</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Potrai ottenere carattere tasto premuto. Puoi processare input testo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (377, 'it', 'KeyListener Maestro: Ottenere Carattere Tasto',
        'Aggiungi KeyListener, sovrascrivi keyTyped(), ottieni carattere via getKeyChar(), mostra')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (376, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Determinare Modificatori in ActionListener</h2>
<p class="intro">I modificatori permettono gestire combinazioni. Puoi determinare se Ctrl, Alt, Shift sono premuti, gestire combinazioni. Senza modificatori, non puoi gestire combinazioni.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getModifiers()</code> — ottenere modificatori</li>
  <li>Verificare Ctrl, Alt, Shift</li>
  <li>Gestire combinazioni tasti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I modificatori sono necessari per gestire combinazioni tasti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni modificatori: <code>button.addActionListener(e -> {<br>
&nbsp;&nbsp;int modifiers = e.getModifiers();<br>
&nbsp;&nbsp;if ((modifiers & ActionEvent.CTRL_MASK) != 0) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Ctrl premuto!");<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getModifiers()</code> per ottenere</li>
  <li><strong>✅ Ottimo:</strong> Verificare CTRL_MASK per Ctrl, verificare ALT_MASK per Alt, verificare SHIFT_MASK per Shift</li>
  <li><strong>⚠️ Evita:</strong> Ignorare modificatori</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Potrai determinare modificatori. Quando clicchi, puoi sapere se Ctrl, Alt, Shift sono premuti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (376, 'it', 'ActionListener Maestro: Determinare Modificatori',
        'Aggiungi ActionListener, verifica getModifiers() & CTRL_MASK, mostra messaggio')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (379, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 10: Ottenere Codice Tasto in KeyListener</h2>
<p class="intro">Il codice tasto è importante per tasti speciali. Puoi gestire Enter, Escape, frecce, migliorare funzionalità. Senza codice, non puoi gestire tasti speciali.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getKeyCode()</code> — ottenere codice tasto</li>
  <li>Costanti <code>KeyEvent.VK_*</code> — codici tasti</li>
  <li>Gestire tasti speciali</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il codice tasto è necessario per gestire tasti speciali.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni codice: <code>component.addKeyListener(new KeyAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void keyPressed(KeyEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;int code = e.getKeyCode();<br>
&nbsp;&nbsp;&nbsp;&nbsp;if (code == KeyEvent.VK_ENTER) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Enter premuto");<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getKeyCode()</code> per ottenere</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>keyPressed()</code> per codici, usare costanti VK_*, gestire tasti speciali</li>
  <li><strong>⚠️ Evita:</strong> Ignorare tasti speciali</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Potrai ottenere codice tasto premuto. Puoi gestire tasti speciali.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (379, 'it', 'KeyListener Maestro: Ottenere Codice Tasto',
        'Aggiungi KeyListener, sovrascrivi keyPressed(), ottieni codice via getKeyCode(), verifica VK_ENTER')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (382, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 13: Ottenere Carattere Tasto in KeyListener</h2>
<p class="intro">Il carattere tasto è importante per input testo. Puoi processare caratteri, migliorare funzionalità. Senza carattere, non puoi processare input testo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getKeyChar()</code> — ottenere carattere</li>
  <li>Processare tasti carattere</li>
  <li>Migliorare funzionalità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il carattere tasto è necessario per processare input testo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni carattere: <code>component.addKeyListener(new KeyAdapter() {<br>
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
  <li><strong>✅ Usa:</strong> <code>getKeyChar()</code> per ottenere</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>keyTyped()</code> per caratteri, usare per input testo, migliorare funzionalità</li>
  <li><strong>⚠️ Evita:</strong> Ignorare caratteri speciali</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Potrai ottenere carattere tasto premuto. Puoi processare input testo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (382, 'it', 'KeyListener Maestro: Ottenere Carattere Tasto',
        'Aggiungi KeyListener, sovrascrivi keyTyped(), ottieni carattere via getKeyChar(), mostra')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (378, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Creare Gruppo Sequenziale in GroupLayout</h2>
<p class="intro">Il gruppo sequenziale posiziona componenti sequenzialmente. Puoi posizionare componenti uno dopo l''altro, migliorare layout. Senza gruppo, componenti non saranno posizionati.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>createSequentialGroup()</code> — creare gruppo sequenziale</li>
  <li>Posizionamento sequenziale componenti</li>
  <li>Migliorare layout</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il gruppo sequenziale è necessario per posizionamento sequenziale di componenti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea gruppo: <code>GroupLayout.SequentialGroup hGroup = layout.createSequentialGroup();</code></li>
  <li>Aggiungi componenti: <code>hGroup.addComponent(component1).addComponent(component2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createSequentialGroup()</code> per creare</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>addComponent()</code> per aggiungere, usare per sequenza, migliorare layout</li>
  <li><strong>⚠️ Evita:</strong> Mescolare con gruppo parallelo incorrectamente</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componenti saranno posizionati sequenzialmente. Puoi migliorare layout.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (378, 'it', 'GroupLayout Maestro: Creare Gruppo Sequenziale',
        'Crea gruppo sequenziale via createSequentialGroup(), aggiungi componenti via addComponent()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (380, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 11: Creare Gruppo Parallelo in GroupLayout</h2>
<p class="intro">Il gruppo parallelo posiziona componenti in parallelo. Puoi posizionare componenti uno accanto all''altro, allineare, migliorare layout. Senza gruppo, componenti non saranno posizionati.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>createParallelGroup()</code> — creare gruppo parallelo</li>
  <li>Posizionamento parallelo componenti</li>
  <li>Migliorare layout</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il gruppo parallelo è necessario per posizionamento parallelo di componenti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea gruppo: <code>GroupLayout.ParallelGroup vGroup = layout.createParallelGroup();</code></li>
  <li>Aggiungi componenti: <code>vGroup.addComponent(component1).addComponent(component2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createParallelGroup()</code> per creare</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>addComponent()</code> per aggiungere, usare per parallelismo, migliorare layout</li>
  <li><strong>⚠️ Evita:</strong> Mescolare con gruppo sequenziale incorrectamente</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componenti saranno posizionati in parallelo. Puoi migliorare layout.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (380, 'it', 'GroupLayout Maestro: Creare Gruppo Parallelo',
        'Crea gruppo parallelo via createParallelGroup(), aggiungi componenti via addComponent()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (381, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 12: Aggiungere Spazio in GroupLayout</h2>
<p class="intro">Lo spazio crea distanza. Puoi aggiungere distanza tra componenti, migliorare layout. Senza spazio, componenti saranno stretti insieme.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>addGap()</code> — aggiungere spazio</li>
  <li>Creare distanza tra componenti</li>
  <li>Migliorare layout</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Lo spazio è necessario per creare distanza tra componenti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi spazio: <code>hGroup.addGap(10);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addGap()</code> per aggiungere</li>
  <li><strong>✅ Ottimo:</strong> Usare per creare distanza, usare per migliorare layout, migliorare posizionamento</li>
  <li><strong>⚠️ Evita:</strong> Spazi troppo grandi</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Spazio apparirà tra componenti. Puoi migliorare layout.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (381, 'it', 'GroupLayout Maestro: Aggiungere Spazio', 'Aggiungi spazio 10 via addGap() a gruppo')
ON CONFLICT (task_id, language_code) DO NOTHING;
