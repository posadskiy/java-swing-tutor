-- Flyway migration V5: Lesson 9
-- This migration contains lesson, tasks, and documentation for lesson 9

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (74, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare un pulsante di alternanza</h2>
<p class="intro">I pulsanti di alternanza (<code>JToggleButton</code>) permettono di attivare e disattivare funzioni. "Testo grassetto", "Corsivo", "Sottolineato" — tutto questo sono pulsanti di alternanza. Rimangono nello stato selezionato fino alla prossima pressione.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>JToggleButton</code> — pulsante di alternanza</li>
  <li>Creare un pulsante di alternanza</li>
  <li>Due stati: premuto/non premuto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I pulsanti di alternanza permettono di attivare e disattivare funzioni con una pressione. Rimangono nello stato selezionato fino alla prossima pressione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un pulsante di alternanza: <code>JToggleButton toggle = new JToggleButton("Abilita");</code></li>
  <li>Aggiungi al form: <code>add(toggle);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Creare con testo: <code>new JToggleButton("Testo")</code></li>
  <li><strong>✅ Eccellente:</strong> Usare icona per distinzione visiva degli stati</li>
  <li><strong>⚠️ Evita:</strong> Pulsante di alternanza vuoto — scopo poco chiaro</li>
</ul>
<p><strong>Importante:</strong> Il pulsante di alternanza ha due stati: selezionato/non selezionato. Verificare stato: <code>toggle.isSelected()</code>. Impostare stato: <code>toggle.setSelected(true)</code>. Simile a JCheckBox, ma sembra un pulsante. Può essere raggruppato tramite <code>ButtonGroup</code> per selezione singola.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un pulsante di alternanza sul form. È un pulsante che rimane premuto dopo il clic. Al secondo clic, si rilascia.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (74, 'it', 'Pulsante di alternanza principiante: crea un pulsante di alternanza',
        'Crea un pulsante di alternanza con testo "Abilita" e aggiungilo al form')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (75, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Gestire clic su casella di controllo</h2>
<p class="intro">Gestire clic rende la casella di controllo interattiva. Puoi aggiornare altri componenti, eseguire azioni, mostrare/nascondere elementi. Senza questo, la casella di controllo sarà solo per visualizzazione.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Aggiungere <code>ActionListener</code> a casella di controllo</li>
  <li>Gestire clic su casella di controllo</li>
  <li>Reagire a cambiamenti di stato</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire clic permette di reagire alle azioni dell''utente e aggiornare l''interfaccia in tempo reale.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi ascoltatore: <code>JLabel label = new JLabel();<br>
checkBox.addActionListener(e -> {<br>
&nbsp;&nbsp;if (checkBox.isSelected()) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Casella selezionata!");<br>
&nbsp;&nbsp;} else {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Casella deselezionata!");<br>
&nbsp;&nbsp;}<br>
});<br>
add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addActionListener()</code> per gestire</li>
  <li><strong>✅ Eccellente:</strong> Verificare <code>isSelected()</code> per determinare stato, aggiornare altri componenti al cambiare</li>
  <li><strong>⚠️ Evita:</strong> Ignorare stato — perdita di funzionalità</li>
</ul>
<p><strong>Importante:</strong> <code>setSelected(boolean)</code> — impostare stato programmaticamente. Puoi usare ItemListener invece di ActionListener. ActionListener si attiva al clic.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando si fa clic sulla casella di controllo, il gestore si attiverà. Puoi verificare lo stato ed eseguire azioni.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (75, 'it', 'Casella di controllo maestro: gestisci clic',
        'Aggiungi ActionListener a casella di controllo, verifica isSelected(), mostra messaggio in base allo stato')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (76, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Posizione testo in casella di controllo</h2>
<p class="intro">La posizione del testo rende le caselle di controllo flessibili. Puoi posizionare testo a sinistra o destra. Senza impostazione, il testo sarà a destra di default.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setHorizontalTextPosition()</code> — posizione testo</li>
  <li>Configurare posizionamento testo relativo a casella di controllo</li>
  <li>Creare posizionamento personalizzato</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Configurare la posizione del testo permette di creare un''interfaccia più flessibile e personalizzata.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta posizione testo: <code>checkBox.setHorizontalTextPosition(SwingConstants.LEFT);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> LEFT per testo a sinistra, RIGHT per testo a destra (default)</li>
  <li><strong>✅ Eccellente:</strong> CENTER per centrare, LEADING/TRAILING per direzione testo</li>
  <li><strong>⚠️ Evita:</strong> Cambiare posizione frequentemente — può essere inaspettato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo sarà nella posizione specificata. Il testo può essere a sinistra o destra della casella di controllo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (76, 'it', 'Casella di controllo maestro: configura posizione testo',
        'Imposta posizione testo LEFT tramite setHorizontalTextPosition()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (77, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Modello stato casella di controllo</h2>
<p class="intro">Il modello stato permette di controllare lo stato. Puoi ottenere modello, cambiarlo, creare modello personalizzato. Senza modello, non puoi controllare lo stato programmaticamente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>getModel()</code> — ottenere modello</li>
  <li>Il metodo <code>setModel()</code> — impostare modello</li>
  <li>Lavorare con ButtonModel</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Lavorare con il modello stato permette di controllare programmaticamente lo stato della casella di controllo e creare modelli personalizzati.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni modello: <code>ButtonModel model = checkBox.getModel();</code></li>
  <li>Imposta stato: <code>model.setSelected(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getModel()</code> per ottenere, <code>setModel()</code> per impostare</li>
  <li><strong>✅ Eccellente:</strong> Creare modelli personalizzati, usare per gestione programmatica</li>
  <li><strong>⚠️ Evita:</strong> Cambiare modello direttamente — può essere inaspettato</li>
</ul>
<p><strong>Importante:</strong> <code>isSelected()</code> — verificare stato. Usa per gestione programmatica.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Puoi gestire lo stato attraverso il modello. Lo stato può essere cambiato programmaticamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (77, 'it', 'Casella di controllo maestro: lavora con modello stato',
        'Ottieni modello tramite getModel(), imposta stato true tramite setSelected()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (78, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Mnemonica per casella di controllo</h2>
<p class="intro">La mnemonica accelera il lavoro. Puoi attivare la casella di controllo tramite Alt+lettera, senza usare il mouse. Senza mnemonica, dovrai fare clic con il mouse.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setMnemonic()</code> — impostare mnemonica</li>
  <li>Sottolineare lettera nel testo</li>
  <li>Creare caselle di controllo accessibili</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La mnemonica migliora l''accessibilità e accelera il lavoro per utenti esperti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta mnemonica: <code>checkBox.setMnemonic(KeyEvent.VK_C);</code></li>
  <li>Aggiungi sottolineatura nel testo: <code>checkBox.setText("Accetto (&C)");</code></li>
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
<p>Nel testo della casella di controllo, la lettera sarà sottolineata. Puoi attivare la casella di controllo tramite Alt+lettera.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (78, 'it', 'Casella di controllo maestro: aggiungi mnemonica',
        'Imposta mnemonica VK_C tramite setMnemonic(), aggiungi &C nel testo della casella di controllo')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (79, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Gestire cambiamenti di stato</h2>
<p class="intro">Gestire stato rende la casella di controllo interattiva. Puoi reagire alla selezione, aggiornare altri componenti. Senza gestione, la selezione non avrà effetto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Gestire cambiamenti tramite ItemListener</li>
  <li>Ottenere stato</li>
  <li>Reagire a cambiamenti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire cambiamenti di stato permette di reagire alle azioni dell''utente e sincronizzare l''interfaccia.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi ascoltatore: <code>checkBox.addItemListener(e -> {<br>
&nbsp;&nbsp;boolean selected = checkBox.isSelected();<br>
&nbsp;&nbsp;label.setText("Selezionato: " + selected);<br>
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
<p>Quando lo stato cambia, il gestore si attiverà. Puoi gestire la selezione e aggiornare altri componenti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (79, 'it', 'Casella di controllo maestro: gestisci cambiamenti di stato',
        'Aggiungi ItemListener, verifica isSelected(), mostra stato')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (80, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Casella di controllo a tre stati</h2>
<p class="intro">La casella di controllo a tre stati aggiunge stato indeterminato. Puoi mostrare che la selezione non è stata fatta, migliorare l''esperienza utente. Senza tre stati, solo due stati.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setModel()</code> — impostare modello</li>
  <li>La classe <code>JToggleButton.ToggleButtonModel</code> — modello pulsante di alternanza</li>
  <li>Creare casella di controllo a tre stati</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La casella di controllo a tre stati permette di mostrare stato indeterminato, il che migliora l''esperienza utente in alcuni scenari.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea modello: <code>ButtonModel model = new JToggleButton.ToggleButtonModel();</code></li>
  <li>Imposta modello: <code>checkBox.setModel(model);</code></li>
  <li>Imposta stato indeterminato: <code>checkBox.getModel().setPressed(true);<br>
checkBox.getModel().setArmed(true);<br>
checkBox.getModel().setSelected(false);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setModel()</code> per impostare</li>
  <li><strong>✅ Eccellente:</strong> Usare per stato indeterminato, combinare stati, usare per migliorare UX</li>
  <li><strong>⚠️ Evita:</strong> Stati troppo complessi</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La casella di controllo sarà a tre stati. Puoi mostrare stato indeterminato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (80, 'it', 'Casella di controllo maestro: rendi a tre stati',
        'Crea ToggleButtonModel, imposta tramite setModel(), configura stati per indeterminato')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (81, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Raggruppare caselle di controllo</h2>
<p class="intro">Il raggruppamento migliora l''organizzazione. Puoi collegare logicamente caselle di controllo, migliorare la comprensione. Senza raggruppamento, le caselle di controllo saranno sparse.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Raggruppamento logico di caselle di controllo</li>
  <li>Creare gruppi di caselle di controllo correlate</li>
  <li>Migliorare organizzazione dell''interfaccia</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Raggruppare caselle di controllo correlate migliora l''organizzazione dell''interfaccia e semplifica la gestione di elementi logicamente correlati.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea gruppo: <code>List&lt;JCheckBox&gt; group = Arrays.asList(checkBox1, checkBox2, checkBox3);</code></li>
  <li>Gestisci gruppo: <code>group.forEach(cb -> cb.addItemListener(e -> updateGroup()));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Collezioni per raggruppare</li>
  <li><strong>✅ Eccellente:</strong> Usare per collegamento logico, gestire gruppo insieme, migliorare organizzazione</li>
  <li><strong>⚠️ Evita:</strong> Raggruppare caselle di controllo non correlate</li>
</ul>
<p><strong>Importante:</strong> Raggruppa caselle di controllo logicamente correlate. Rendi i gruppi chiari.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Le caselle di controllo saranno raggruppate logicamente. Puoi gestire il gruppo insieme.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (81, 'it', 'Casella di controllo maestro: raggruppa caselle di controllo',
        'Crea lista da caselle di controllo, aggiungi ItemListener a tutte tramite forEach()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (82, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Font casella di controllo</h2>
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
<p>Impostare il font permette di migliorare l''aspetto visivo e leggibilità del testo nella casella di controllo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea font: <code>Font font = new Font("Arial", Font.BOLD, 14);</code></li>
  <li>Imposta font: <code>checkBox.setFont(font);</code></li>
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
<p>Il testo della casella di controllo sarà con il font impostato. Puoi migliorare l''aspetto visivo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (82, 'it', 'Casella di controllo maestro: imposta font',
        'Crea font new Font("Arial", Font.BOLD, 14), imposta tramite setFont()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Italian)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
