-- Flyway migration V5: Lesson 28
-- This migration contains lesson, tasks, and documentation for lesson 28

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

-- Task 1: Creating JRadioButtonMenuItem
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (230, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare Pulsante Radio nel Menu</h2>
<p class="intro">JRadioButtonMenuItem permette di selezionare un''opzione da un gruppo nel menu. Dimensione carattere, tema, modalità visualizzazione — tutto questo richiede di selezionare un''opzione. Senza di essi, dovrai creare dialoghi separati.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>JRadioButtonMenuItem</code> — pulsante radio nel menu</li>
  <li>Creare pulsanti radio nel menu</li>
  <li>Raggruppare con <code>ButtonGroup</code></li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I pulsanti radio nel menu sono necessari per selezionare un''opzione da un gruppo di opzioni mutualmente esclusive.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea gruppo: <code>ButtonGroup group = new ButtonGroup();</code></li>
  <li>Crea pulsanti radio: <code>JRadioButtonMenuItem item1 = new JRadioButtonMenuItem("Piccolo");</code> e <code>JRadioButtonMenuItem item2 = new JRadioButtonMenuItem("Medio");</code></li>
  <li>Aggiungi al gruppo: <code>group.add(item1);</code> e <code>group.add(item2);</code></li>
  <li>Aggiungi al menu: <code>menu.add(item1);</code> e <code>menu.add(item2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> ButtonGroup per raggruppare</li>
  <li><strong>✅ Ottimo:</strong> Creare nomi di opzioni chiari, selezionare un''opzione di default, aggiungere gestori per reagire alla selezione</li>
  <li><strong>⚠️ Evita:</strong> Pulsanti radio senza gruppo — si possono selezionare multipli</li>
</ul>
<p><strong>Importante:</strong> <code>setSelected(true)</code> — selezionare opzione. <code>isSelected()</code> — verificare se selezionata.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Appariranno pulsanti radio nel menu. Questi sono elementi di menu con cerchi. Puoi selezionare solo un''opzione dal gruppo. Selezionando un''altra, la precedente viene deselezionata.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (230, 'it', 'Pulsante Radio nel Menu Principiante: Creare Selezione Opzione nel Menu',
        'Crea ButtonGroup, crea due JRadioButtonMenuItem, aggiungi al gruppo e menu')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 2: Selected State
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (231, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Impostare Stato Selezionato</h2>
<p class="intro">Lo stato selezionato mostra la scelta corrente. L''utente vede quale opzione è attiva. Senza impostare stato, l''utente non sa la scelta corrente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setSelected(boolean)</code> — impostare stato selezionato</li>
  <li>Selezionare opzione di default</li>
  <li>Verificare stato tramite <code>isSelected()</code></li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Impostare stato selezionato è necessario per mostrare la scelta corrente all''utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea pulsante radio: <code>JRadioButtonMenuItem item = new JRadioButtonMenuItem("Medio");</code></li>
  <li>Imposta stato selezionato: <code>item.setSelected(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Selezionare un''opzione di default</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>setSelected(true)</code> per selezionare, verificare stato tramite <code>isSelected()</code></li>
  <li><strong>⚠️ Evita:</strong> Selezionare opzioni multiple nel gruppo — solo una sarà attiva</li>
</ul>
<p><strong>Importante:</strong> Nel gruppo solo una può essere selezionata.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Una delle opzioni sarà selezionata di default. Il cerchio sarà riempito.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (231, 'it', 'Pulsante Radio nel Menu Maestro: Imposta Stato Selezionato',
        'Crea JRadioButtonMenuItem, imposta stato selezionato tramite setSelected(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 3: ButtonGroup
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (232, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Creare Gruppo di Selezione</h2>
<p class="intro">ButtonGroup assicura selezione unica. Nel gruppo solo un''opzione può essere selezionata. Senza gruppo, puoi selezionare opzioni multiple simultaneamente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>ButtonGroup</code> — gruppo di esclusione mutua</li>
  <li>Aggiungere pulsanti radio al gruppo</li>
  <li>Assicurare selezione unica</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>ButtonGroup è necessario per assicurare selezione unica tra opzioni mutualmente esclusive.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea gruppo: <code>ButtonGroup group = new ButtonGroup();</code></li>
  <li>Crea pulsanti radio: <code>JRadioButtonMenuItem item1 = new JRadioButtonMenuItem("Piccolo");</code> e <code>JRadioButtonMenuItem item2 = new JRadioButtonMenuItem("Medio");</code></li>
  <li>Aggiungi al gruppo: <code>group.add(item1);</code> e <code>group.add(item2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> ButtonGroup per raggruppare</li>
  <li><strong>✅ Ottimo:</strong> Aggiungere tutte le opzioni a un gruppo, usare per opzioni mutualmente esclusive</li>
  <li><strong>⚠️ Evita:</strong> Pulsanti radio senza gruppo — si possono selezionare multipli</li>
</ul>
<p><strong>Importante:</strong> Puoi creare gruppi multipli per diversi insiemi di opzioni.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>I pulsanti radio saranno nel gruppo. Puoi selezionare solo un''opzione. Selezionando un''altra, la precedente viene deselezionata.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (232, 'it', 'Pulsante Radio nel Menu Maestro: Creare Gruppo di Selezione',
        'Crea ButtonGroup, crea tre JRadioButtonMenuItem, aggiungi tutti al gruppo e menu')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 4: Icon
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (233, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Aggiungere Icona a Pulsante Radio nel Menu</h2>
<p class="intro">Le icone migliorano la percezione visiva. Puoi riconoscere rapidamente l''opzione dall''icona. Senza icone, il menu sembra meno attraente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setIcon(Icon)</code> — impostare icona</li>
  <li>Classe <code>ImageIcon</code> — icona da immagine</li>
  <li>Miglioramento visivo del menu</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le icone migliorano la percezione visiva e aiutano a riconoscere rapidamente l''opzione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea icona: <code>ImageIcon icon = new ImageIcon("icon.png");</code></li>
  <li>Imposta icona: <code>item.setIcon(icon);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Icone chiare</li>
  <li><strong>✅ Ottimo:</strong> Usare ImageIcon per immagini, usare stessa dimensione icone, le icone devono riflettere lo scopo dell''opzione</li>
  <li><strong>⚠️ Evita:</strong> Icone troppo grandi — possono sovraccaricare il menu</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il pulsante radio avrà un''icona. L''icona sarà a sinistra del testo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (233, 'it', 'Pulsante Radio nel Menu Maestro: Aggiungere Icona',
        'Crea JRadioButtonMenuItem, crea ImageIcon e imposta tramite setIcon()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 5: Mnemonic
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (234, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Aggiungere Mnemonica a Pulsante Radio nel Menu</h2>
<p class="intro">La mnemonica accelera il lavoro. Puoi selezionare opzione premendo Alt + lettera. Senza mnemonica, devi usare il mouse.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setMnemonic(int)</code> — impostare mnemonica</li>
  <li>Costanti <code>KeyEvent.VK_*</code> — codici tasto</li>
  <li>Accesso rapido da tastiera</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le mnemoniche migliorano l''accessibilità e accelerano il lavoro da tastiera.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta mnemonica: <code>item.setMnemonic(KeyEvent.VK_M);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Prima lettera del nome</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>KeyEvent.VK_*</code> per codici, evitare conflitti con altre mnemoniche</li>
  <li><strong>⚠️ Evita:</strong> Mnemoniche duplicate — può essere conflitto</li>
</ul>
<p><strong>Importante:</strong> Attivata tramite Alt + lettera.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Nel nome, la lettera mnemonica sarà sottolineata. Puoi premere Alt + lettera per selezionare.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (234, 'it', 'Pulsante Radio nel Menu Maestro: Aggiungere Mnemonica',
        'Crea JRadioButtonMenuItem, imposta mnemonica KeyEvent.VK_M tramite setMnemonic()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 6: Enabled/Disabled
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (235, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Abilitare/Disabilitare Opzione</h2>
<p class="intro">Abilitare/disabilitare controlla la disponibilità. Puoi nascondere opzioni non disponibili o mostrarle grigie. Senza gestione, l''utente può tentare di selezionare opzione non disponibile.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setEnabled(boolean)</code> — abilitare/disabilitare</li>
  <li>Gestire disponibilità opzione</li>
  <li>Indicazione visiva di non disponibilità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire disponibilità ti permette di mostrare stati delle opzioni e controllare la selezione dell''utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Disabilita opzione: <code>item.setEnabled(false);</code></li>
  <li>O abilita: <code>item.setEnabled(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Disabilitare opzioni non disponibili</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>setEnabled(false)</code> per disabilitare, cambiare dinamicamente disponibilità, mostrare ragione di non disponibilità</li>
  <li><strong>⚠️ Evita:</strong> Disabilitare senza spiegazione — l''utente non capirà perché</li>
</ul>
<p><strong>Importante:</strong> L''opzione disabilitata è grigia e inattiva.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>L''opzione diventerà grigia e inattiva. Non potrai selezionare l''opzione disabilitata.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (235, 'it', 'Pulsante Radio nel Menu Maestro: Abilitare/Disabilitare Opzione',
        'Crea JRadioButtonMenuItem, disabilitalo tramite setEnabled(false)')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 7: Tooltip
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (236, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Aggiungere Suggerimento a Pulsante Radio nel Menu</h2>
<p class="intro">I suggerimenti aiutano l''utente. Puoi spiegare lo scopo dell''opzione, dare informazioni aggiuntive. Senza suggerimenti, l''utente può non capire lo scopo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setToolTipText(String)</code> — impostare suggerimento</li>
  <li>Aggiungere suggerimenti popup</li>
  <li>Migliorare esperienza utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I suggerimenti migliorano l''esperienza utente fornendo informazioni aggiuntive sulle opzioni.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta suggerimento: <code>item.setToolTipText("Selezionare dimensione carattere piccola");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Suggerimenti chiari</li>
  <li><strong>✅ Ottimo:</strong> Spiegare scopo dell''opzione, dare informazioni aggiuntive</li>
  <li><strong>⚠️ Evita:</strong> Suggerimenti troppo lunghi — possono essere scomodi</li>
</ul>
<p><strong>Importante:</strong> Rendi i suggerimenti brevi. Mostra al passaggio del mouse.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Passando il mouse, apparirà un suggerimento. Il suggerimento mostrerà informazioni aggiuntive.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (236, 'it', 'Pulsante Radio nel Menu Maestro: Aggiungere Suggerimento',
        'Crea JRadioButtonMenuItem, imposta suggerimento tramite setToolTipText()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 8: ActionListener
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (237, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Gestire Selezione Pulsante Radio nel Menu</h2>
<p class="intro">Gestire selezione rende il menu funzionale. Puoi applicare opzione selezionata, cambiare impostazioni, aggiornare interfaccia. Senza gestore, la selezione non avrà effetto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Interfaccia <code>ActionListener</code> — gestore di azioni</li>
  <li>Metodo <code>addActionListener()</code> — aggiungere ascoltatore</li>
  <li>Reagire a selezione opzione</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire selezione è necessario per applicare opzione selezionata e aggiornare interfaccia.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi ascoltatore: <code>item.addActionListener(e -> {<br>
&nbsp;&nbsp;label.setText("Opzione selezionata: " + item.getText());<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> ActionListener per gestire</li>
  <li><strong>✅ Ottimo:</strong> Usare espressioni lambda per azioni semplici, applicare opzione selezionata, aggiornare interfaccia alla selezione</li>
  <li><strong>⚠️ Evita:</strong> Gestore senza azione — la selezione non ha effetto</li>
</ul>
<p><strong>Importante:</strong> <code>getText()</code> — ottenere testo opzione. <code>isSelected()</code> — verificare se selezionata.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Selezionando opzione, verrà eseguita un''azione. Se hai usato JLabel, apparirà un messaggio sullo schermo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (237, 'it', 'Pulsante Radio nel Menu Maestro: Gestire Selezione',
        'Crea JRadioButtonMenuItem, aggiungi ActionListener che mostri testo opzione in console')
ON CONFLICT (task_id, language_code) DO NOTHING;
