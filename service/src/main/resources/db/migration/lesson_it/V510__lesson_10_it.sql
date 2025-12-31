-- Flyway migration V5: Lesson 10
-- This migration contains lesson, tasks, and documentation for lesson 10

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (83, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare una lista a discesa</h2>
<p class="intro">Le liste a discesa (<code>JComboBox</code>) risparmiano spazio. Invece di molti pulsanti radio — una lista compatta. Paesi, città, categorie — tutto questo è conveniente selezionare da una lista.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>JComboBox</code> — lista a discesa</li>
  <li>Creare una lista con elementi</li>
  <li>Selezionare un elemento dalla lista</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le liste a discesa risparmiano spazio e semplificano la selezione tra molte opzioni.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea array di elementi: <code>String[] items = {"Opzione 1", "Opzione 2", "Opzione 3"};</code></li>
  <li>Crea lista a discesa: <code>JComboBox&lt;String&gt; combo = new JComboBox&lt;&gt;(items);</code></li>
  <li>Aggiungi al form: <code>add(combo);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Creare con array di elementi</li>
  <li><strong>✅ Eccellente:</strong> Usare <code>JComboBox&lt;String&gt;</code> tipizzato</li>
  <li><strong>⚠️ Evita:</strong> Lista vuota — l''utente non potrà selezionare</li>
</ul>
<p><strong>Importante:</strong> Puoi creare vuota: <code>new JComboBox&lt;&gt;()</code> e aggiungere elementi dopo. Aggiungere elemento: <code>combo.addItem("Nuovo elemento");</code>. Ottenere selezionato: <code>String selected = (String) combo.getSelectedItem();</code>. Impostare selezionato: <code>combo.setSelectedItem("Opzione 1");</code>. Puoi rendere modificabile: <code>combo.setEditable(true);</code>.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà una lista a discesa sul form. È un campo con un pulsante con freccia verso il basso. Al clic, si aprirà la lista di opzioni. Puoi selezionare un''opzione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (83, 'it', 'Lista a discesa principiante: crea una lista di selezione',
        'Crea una lista a discesa con elementi "Opzione 1", "Opzione 2", "Opzione 3" e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (84, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Lista modificabile</h2>
<p class="intro">Le liste modificabili danno più flessibilità. L''utente può selezionare da opzioni suggerite o inserire la propria. È come autocompletamento con possibilità di personalizzazione.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setEditable(boolean editable)</code> — abilitare modifica</li>
  <li>Liste a discesa modificabili</li>
  <li>Combinazione di selezione e inserimento</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le liste modificabili permettono all''utente di selezionare da opzioni suggerite o inserire la propria, il che aumenta la flessibilità dell''interfaccia.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea lista a discesa: <code>JComboBox&lt;String&gt; combo = new JComboBox&lt;&gt;(items);</code></li>
  <li>Rendi modificabile: <code>combo.setEditable(true);</code></li>
  <li>Aggiungi al form: <code>add(combo);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setEditable(true)</code> per inserimento flessibile</li>
  <li><strong>✅ Eccellente:</strong> Combinazione di lista e campo di testo</li>
  <li><strong>⚠️ Evita:</strong> Lista modificabile senza elementi — funziona come campo di testo</li>
</ul>
<p><strong>Importante:</strong> <code>setEditable(false)</code> — solo selezione da lista (default). Ottenere testo inserito: <code>String text = (String) combo.getSelectedItem();</code>. Usa per campi dove sono possibili sia valori standard che personalizzati.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La lista diventerà modificabile. L''utente può fare clic nel campo e inserire il proprio testo, o selezionare dalla lista a discesa.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (84, 'it', 'Lista modificabile: consenti inserimento testo',
        'Crea una lista a discesa, rendila modificabile e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (85, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Modo selezione in lista</h2>
<p class="intro">Il modo selezione determina il comportamento della lista. Un file per aprire, diversi file per eliminare — diverse attività richiedono diversi modi. Il modo corretto rende l''interfaccia intuitiva.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setSelectionMode(int mode)</code> — impostare modo selezione</li>
  <li>Modi: <code>SINGLE_SELECTION</code>, <code>SINGLE_INTERVAL_SELECTION</code>, <code>MULTIPLE_INTERVAL_SELECTION</code></li>
  <li>Gestire selezione elementi in lista</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il modo selezione corretto rende l''interfaccia intuitiva e corrisponde alle aspettative dell''utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea lista: <code>JList&lt;String&gt; list = new JList&lt;&gt;(items);</code></li>
  <li>Imposta modo selezione: <code>list.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);</code></li>
  <li>Aggiungi al form: <code>add(list);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>SINGLE_SELECTION</code> per selezionare un elemento</li>
  <li><strong>✅ Eccellente:</strong> <code>MULTIPLE_INTERVAL_SELECTION</code> per selezione multipla</li>
  <li><strong>⚠️ Evita:</strong> Selezione multipla dove serve una — confonde l''utente</li>
</ul>
<p><strong>Importante:</strong> <code>SINGLE_INTERVAL_SELECTION</code> — un intervallo continuo. Usa <code>SINGLE_SELECTION</code> per azioni con un elemento. Usa <code>MULTIPLE_INTERVAL_SELECTION</code> per operazioni massive.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La lista funzionerà nel modo specificato. Se hai scelto <code>SINGLE_SELECTION</code>, solo un elemento può essere selezionato. Se <code>MULTIPLE_INTERVAL_SELECTION</code> — diversi con Ctrl/Cmd.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (85, 'it', 'Modo selezione: uno o diversi elementi',
        'Crea una lista, imposta modo selezione singola e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (86, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Gruppo pulsanti radio</h2>
<p class="intro">I gruppi di pulsanti radio creano selezione mutualmente esclusiva. Genere, età, categoria — tutto questo richiede selezionare un''opzione. Senza gruppo, si possono selezionare più pulsanti simultaneamente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>ButtonGroup</code> — gruppo pulsanti</li>
  <li>Il metodo <code>add()</code> — aggiungere pulsanti al gruppo</li>
  <li>Creare opzioni mutualmente esclusive</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il gruppo assicura selezione mutualmente esclusiva, il che è critico per il corretto funzionamento dei pulsanti radio.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea gruppo: <code>ButtonGroup group = new ButtonGroup();</code></li>
  <li>Aggiungi pulsanti: <code>group.add(radio1);</code><br><code>group.add(radio2);</code><br><code>group.add(radio3);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> ButtonGroup per raggruppare</li>
  <li><strong>✅ Eccellente:</strong> Aggiungere tutti i pulsanti radio a un gruppo, usare diversi gruppi per diverse categorie</li>
  <li><strong>⚠️ Evita:</strong> Non usare gruppi — si possono selezionare più</li>
</ul>
<p><strong>Importante:</strong> Solo un pulsante nel gruppo può essere selezionato. Il gruppo non è visivo, solo logico.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Solo un pulsante radio nel gruppo può essere selezionato. Quando si seleziona un altro pulsante, il precedente viene automaticamente deselezionato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (86, 'it', 'Pulsante radio maestro: crea gruppo pulsanti',
        'Crea ButtonGroup, aggiungi tre pulsanti radio al gruppo tramite add()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (87, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Icona pulsante radio</h2>
<p class="intro">Le icone rendono i pulsanti radio visivamente attraenti. Puoi mostrare diverse icone per stato selezionato e non selezionato. Senza icone, i pulsanti radio saranno solo di testo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setIcon()</code> — impostare icona</li>
  <li>Il metodo <code>setSelectedIcon()</code> — icona quando selezionato</li>
  <li>Creare pulsanti radio visivamente attraenti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le icone migliorano la percezione visiva e permettono di distinguere stati del pulsante radio.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta icona: <code>radioButton.setIcon(new ImageIcon("unselected.png"));</code></li>
  <li>Imposta icona selezione: <code>radioButton.setSelectedIcon(new ImageIcon("selected.png"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setIcon()</code> per icona regolare, <code>setSelectedIcon()</code> per selezionato</li>
  <li><strong>✅ Eccellente:</strong> Usare <code>setPressedIcon()</code> per premuto, combinare icona e testo</li>
  <li><strong>⚠️ Evita:</strong> Icone troppo grandi — può essere disordinato</li>
</ul>
<p><strong>Importante:</strong> <code>setDisabledIcon()</code> — impostare icona disabilitata. Usa diverse icone per diversi stati.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un''icona sul pulsante radio. Quando selezionato, l''icona cambierà. Puoi creare pulsanti radio visivamente attraenti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (87, 'it', 'Pulsante radio maestro: aggiungi icona',
        'Imposta icona tramite setIcon(), imposta icona selezione tramite setSelectedIcon()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (88, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Aggiungere pulsanti radio a gruppo</h2>
<p class="intro">Il gruppo rende i pulsanti mutualmente esclusivi. Solo un pulsante del gruppo può essere selezionato. Senza gruppo, si possono selezionare più pulsanti simultaneamente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>ButtonGroup</code> — gruppo pulsanti</li>
  <li>Il metodo <code>add()</code> — aggiungere al gruppo</li>
  <li>Creare pulsanti mutualmente esclusivi</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il gruppo assicura selezione mutualmente esclusiva, il che è necessario per il corretto funzionamento dei pulsanti radio.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea gruppo: <code>ButtonGroup group = new ButtonGroup();</code></li>
  <li>Aggiungi pulsanti: <code>group.add(radioButton1);</code><br><code>group.add(radioButton2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> ButtonGroup per raggruppare</li>
  <li><strong>✅ Eccellente:</strong> Aggiungere tutti i pulsanti radio al gruppo, usare per opzioni mutualmente esclusive</li>
  <li><strong>⚠️ Evita:</strong> Aggiungere a più gruppi — può essere inaspettato</li>
</ul>
<p><strong>Importante:</strong> <code>remove()</code> — rimuovere pulsante. <code>getButtonCount()</code> — ottenere conteggio. Usa per opzioni mutualmente esclusive.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>I pulsanti saranno in un gruppo. Solo un pulsante del gruppo può essere selezionato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (88, 'it', 'Pulsante radio maestro: aggiungi al gruppo',
        'Crea ButtonGroup, aggiungi due pulsanti radio tramite add()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (89, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Mnemonica per pulsante radio</h2>
<p class="intro">La mnemonica accelera il lavoro. Puoi attivare il pulsante radio tramite Alt+lettera, senza usare il mouse. Senza mnemonica, dovrai fare clic con il mouse.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setMnemonic()</code> — impostare mnemonica</li>
  <li>Sottolineare lettera nel testo</li>
  <li>Creare pulsanti radio accessibili</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La mnemonica migliora l''accessibilità e accelera il lavoro per utenti esperti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta mnemonica: <code>radioButton.setMnemonic(KeyEvent.VK_R);</code></li>
  <li>Aggiungi sottolineatura nel testo: <code>radioButton.setText("Rosso (&R)");</code></li>
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
<p>Nel testo del pulsante radio, la lettera sarà sottolineata. Puoi attivare il pulsante radio tramite Alt+lettera.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (89, 'it', 'Pulsante radio maestro: aggiungi mnemonica',
        'Imposta mnemonica VK_R tramite setMnemonic(), aggiungi &R nel testo del pulsante radio')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (90, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Gestire cambio stato pulsante radio</h2>
<p class="intro">Gestire stato rende il pulsante radio interattivo. Puoi reagire alla selezione, aggiornare altri componenti. Senza gestione, la selezione non avrà effetto.</p>
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
  <li>Aggiungi ascoltatore: <code>radioButton.addItemListener(e -> {<br>
&nbsp;&nbsp;if (e.getStateChange() == ItemEvent.SELECTED) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Selezionato!");<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addItemListener()</code> per gestire</li>
  <li><strong>✅ Eccellente:</strong> Usare <code>getStateChange()</code> per verificare, verificare SELECTED per selezione, aggiornare altri componenti</li>
  <li><strong>⚠️ Evita:</strong> Ignorare stato</li>
</ul>
<p><strong>Importante:</strong> SELECTED — selezionato, DESELECTED — deselezionato. Usa per sincronizzazione.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando lo stato cambia, il gestore si attiverà. Puoi gestire la selezione e aggiornare altri componenti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (90, 'it', 'Pulsante radio maestro: gestisci cambio stato',
        'Aggiungi ItemListener, verifica getStateChange() == SELECTED, mostra messaggio')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (91, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Comando azione pulsante radio</h2>
<p class="intro">Il comando azione permette di identificare il pulsante radio. Puoi determinare quale pulsante radio è selezionato senza verificare la fonte. Senza comando, dovrai verificare la fonte.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setActionCommand()</code> — impostare comando</li>
  <li>Il metodo <code>getActionCommand()</code> — ottenere comando</li>
  <li>Identificare pulsante radio tramite comando</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il comando azione semplifica l''identificazione del pulsante radio nei gestori di eventi.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta comando: <code>radioButton.setActionCommand("OPZIONE1");</code></li>
  <li>Ottieni comando nel gestore: <code>radioButton.addActionListener(e -> {<br>
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
<p>Nel gestore, puoi ottenere il comando. Quando si seleziona, puoi determinare il comando.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (91, 'it', 'Pulsante radio maestro: imposta comando azione',
        'Imposta comando "OPZIONE1" tramite setActionCommand(), ottieni comando in ActionListener tramite getActionCommand()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (92, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 10: Font pulsante radio</h2>
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
<p>Impostare il font permette di migliorare l''aspetto visivo e leggibilità del testo nel pulsante radio.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea font: <code>Font font = new Font("Arial", Font.ITALIC, 12);</code></li>
  <li>Imposta font: <code>radioButton.setFont(font);</code></li>
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
<p>Il testo del pulsante radio sarà con il font impostato. Puoi migliorare l''aspetto visivo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (92, 'it', 'Pulsante radio maestro: imposta font',
        'Crea font new Font("Arial", Font.ITALIC, 12), imposta tramite setFont()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (93, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 11: Disegno bordo pulsante radio</h2>
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
<p>Gestire il disegno del bordo permette di migliorare l''aspetto visivo e design del pulsante radio.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta disegno: <code>radioButton.setBorderPainted(true);</code></li>
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
VALUES (93, 'it', 'Pulsante radio maestro: imposta disegno bordo', 'Imposta disegno true tramite setBorderPainted()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Italian)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
