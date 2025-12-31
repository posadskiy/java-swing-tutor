-- Flyway migration V5: Lesson 12
-- This migration contains lesson, tasks, and documentation for lesson 12

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (101, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Gestire stato pulsante di alternanza</h2>
<p class="intro">Gestire stato rende il pulsante di alternanza interattivo. Puoi aggiornare altri componenti, eseguire azioni, cambiare modi. Senza questo, il pulsante di alternanza sarà solo per visualizzazione.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Gestire stato tramite ActionListener</li>
  <li>Il metodo <code>isSelected()</code> — verificare stato</li>
  <li>Reagire ad alternanza</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire stato permette di reagire alle azioni dell''utente e aggiornare l''interfaccia in tempo reale.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi ascoltatore: <code>JLabel label = new JLabel();<br>
toggleButton.addActionListener(e -> {<br>
&nbsp;&nbsp;if (toggleButton.isSelected()) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Abilitato!");<br>
&nbsp;&nbsp;} else {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Disabilitato!");<br>
&nbsp;&nbsp;}<br>
});<br>
add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>isSelected()</code> per verificare</li>
  <li><strong>✅ Eccellente:</strong> Aggiornare altri componenti all''alternanza, usare ItemListener per gestione più precisa</li>
  <li><strong>⚠️ Evita:</strong> Ignorare stato — perdita di funzionalità</li>
</ul>
<p><strong>Importante:</strong> <code>setSelected(boolean)</code> — impostare stato. Usa per cambiare modi.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando si alterna, il gestore si attiverà. Puoi verificare lo stato ed eseguire azioni.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (101, 'it', 'Pulsante di alternanza maestro: gestisci stato',
        'Aggiungi ActionListener, verifica isSelected(), mostra messaggio in base allo stato')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (102, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Mnemonica per pulsante di alternanza</h2>
<p class="intro">La mnemonica accelera il lavoro. Puoi attivare il pulsante di alternanza tramite Alt+lettera, senza usare il mouse. Senza mnemonica, dovrai fare clic con il mouse.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setMnemonic()</code> — impostare mnemonica</li>
  <li>Sottolineare lettera nel testo</li>
  <li>Creare pulsanti di alternanza accessibili</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La mnemonica migliora l''accessibilità e accelera il lavoro per utenti esperti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta mnemonica: <code>toggleButton.setMnemonic(KeyEvent.VK_T);</code></li>
  <li>Aggiungi sottolineatura nel testo: <code>toggleButton.setText("Abilita (&T)");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMnemonic()</code> per impostare, KeyEvent.VK_* per tasti</li>
  <li><strong>✅ Eccellente:</strong> Mostrare mnemonica nel testo tramite &, usare prima lettera della parola</li>
  <li><strong>⚠️ Evita:</strong> Duplicare mnemoniche</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Nel testo del pulsante di alternanza, la lettera sarà sottolineata. Puoi attivare il pulsante di alternanza tramite Alt+lettera.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (102, 'it', 'Pulsante di alternanza maestro: aggiungi mnemonica',
        'Imposta mnemonica VK_T tramite setMnemonic(), aggiungi &T nel testo del pulsante di alternanza')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (103, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Gestire cambio stato</h2>
<p class="intro">Gestire stato rende il pulsante di alternanza interattivo. Puoi reagire all''alternanza, aggiornare altri componenti. Senza gestione, l''alternanza non avrà effetto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Gestire cambiamenti tramite ItemListener</li>
  <li>Ottenere stato</li>
  <li>Reagire ad alternanza</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire cambiamenti di stato permette di sincronizzare l''interfaccia e reagire alle azioni dell''utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi ascoltatore: <code>toggleButton.addItemListener(e -> {<br>
&nbsp;&nbsp;boolean selected = toggleButton.isSelected();<br>
&nbsp;&nbsp;label.setText("Abilitato: " + selected);<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addItemListener()</code> per gestire</li>
  <li><strong>✅ Eccellente:</strong> Usare <code>isSelected()</code> per verificare, <code>getStateChange()</code> per cambiamento, aggiornare altri componenti</li>
  <li><strong>⚠️ Evita:</strong> Ignorare stato</li>
</ul>
<p><strong>Importante:</strong> Usa per sincronizzare componenti dell''interfaccia.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando lo stato cambia, il gestore si attiverà. Puoi gestire l''alternanza e aggiornare altri componenti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (103, 'it', 'Pulsante di alternanza maestro: gestisci cambio stato',
        'Aggiungi ItemListener, verifica isSelected(), mostra stato')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (104, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Comando azione pulsante di alternanza</h2>
<p class="intro">Il comando azione permette di identificare il pulsante di alternanza. Puoi determinare quale pulsante di alternanza è alternato senza verificare la fonte. Senza comando, dovrai verificare la fonte.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setActionCommand()</code> — impostare comando</li>
  <li>Il metodo <code>getActionCommand()</code> — ottenere comando</li>
  <li>Identificare pulsante di alternanza tramite comando</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il comando azione semplifica l''identificazione del pulsante di alternanza nei gestori di eventi.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta comando: <code>toggleButton.setActionCommand("ALTERNA");</code></li>
  <li>Ottieni comando nel gestore: <code>toggleButton.addActionListener(e -> {<br>
&nbsp;&nbsp;String cmd = e.getActionCommand();<br>
&nbsp;&nbsp;label.setText("Comando: " + cmd);<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setActionCommand()</code> per impostare, <code>getActionCommand()</code> per ottenere</li>
  <li><strong>✅ Eccellente:</strong> Usare comandi chiari, usare per identificazione</li>
  <li><strong>⚠️ Evita:</strong> Duplicare comandi</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Nel gestore, puoi ottenere il comando. Quando si alterna, puoi determinare il comando.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (104, 'it', 'Pulsante di alternanza maestro: imposta comando azione',
        'Imposta comando "ALTERNA" tramite setActionCommand(), ottieni comando in ActionListener tramite getActionCommand()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (105, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Font pulsante di alternanza</h2>
<p class="intro">Il font migliora l''aspetto visivo. Puoi impostare il font necessario, dimensione, stile, migliorare la leggibilità. Senza impostazione, il font sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setFont()</code> — impostare font</li>
  <li>Migliorare aspetto visivo</li>
  <li>Personalizzare testo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Impostare il font permette di migliorare l''aspetto visivo e leggibilità del testo nel pulsante di alternanza.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea font: <code>Font font = new Font("Serif", Font.PLAIN, 16);</code></li>
  <li>Imposta font: <code>toggleButton.setFont(font);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setFont()</code> per impostare, <code>new Font()</code> per creare</li>
  <li><strong>✅ Eccellente:</strong> Usare per migliorare aspetto e leggibilità</li>
  <li><strong>⚠️ Evita:</strong> Dimensione troppo piccola o grande</li>
</ul>
<p><strong>Importante:</strong> Rendi la dimensione ragionevole per migliore leggibilità.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo del pulsante di alternanza sarà con il font impostato. Puoi migliorare l''aspetto visivo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (105, 'it', 'Pulsante di alternanza maestro: imposta font',
        'Crea font new Font("Serif", Font.PLAIN, 16), imposta tramite setFont()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (106, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Disegno bordo pulsante di alternanza</h2>
<p class="intro">Il disegno del bordo influenza l''aspetto visivo. Puoi mostrare o nascondere il bordo, migliorare il design. Senza impostazione, il bordo sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setBorderPainted()</code> — impostare disegno bordo</li>
  <li>Gestire visibilità del bordo</li>
  <li>Migliorare aspetto visivo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire il disegno del bordo permette di migliorare l''aspetto visivo e design del pulsante di alternanza.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta disegno: <code>toggleButton.setBorderPainted(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setBorderPainted()</code> per impostare</li>
  <li><strong>✅ Eccellente:</strong> Usare true per mostrare, false per nascondere, migliorare aspetto visivo</li>
  <li><strong>⚠️ Evita:</strong> Nascondere senza necessità</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il bordo sarà mostrato o nascosto. Puoi migliorare l''aspetto visivo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (106, 'it', 'Pulsante di alternanza maestro: imposta disegno bordo',
        'Imposta disegno true tramite setBorderPainted()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Italian)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
