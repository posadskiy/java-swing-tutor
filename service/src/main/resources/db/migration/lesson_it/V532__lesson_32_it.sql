-- Flyway migration V5: Lesson 32
-- This migration contains lesson, tasks, and documentation for lesson 32

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (269, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Mostrare Informazioni all''Utente</h2>
<p class="intro">I dialoghi informano l''utente su informazioni importanti. "File salvato", "Errore di caricamento", "Sei sicuro?" — tutto questo sono dialoghi. Senza di essi, l''utente non sa cosa sta succedendo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>JOptionPane</code> — finestre di dialogo</li>
  <li>Metodo <code>showMessageDialog()</code> — mostrare messaggio</li>
  <li>Tipi di messaggio: informazione, avviso, errore, domanda</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I dialoghi sono necessari per informare l''utente su eventi importanti e stati dell''applicazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Mostra messaggio informativo: <code>JOptionPane.showMessageDialog(frame, "File salvato con successo!", "Informazione", JOptionPane.INFORMATION_MESSAGE);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>INFORMATION_MESSAGE</code> per informazione</li>
  <li><strong>✅ Ottimo:</strong> <code>WARNING_MESSAGE</code> per avvisi, <code>ERROR_MESSAGE</code> per errori, <code>QUESTION_MESSAGE</code> per domande</li>
</ul>
<p><strong>Importante:</strong> Genitore: <code>frame</code> o <code>null</code> (si centra sullo schermo). Puoi usare HTML nel messaggio per formattazione. Il dialogo blocca esecuzione fino a chiusura (modale).</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà una finestra di dialogo con messaggio. Questa è una finestra con icona (informazione, avviso, errore) e pulsante OK. L''utente deve chiudere il dialogo per continuare.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (269, 'it', 'Dialogo Messaggio: Mostrare Informazioni all''Utente',
        'Mostra finestra di dialogo informativa con messaggio "Operazione completata con successo!"')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (270, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Richiedere Conferma</h2>
<p class="intro">La conferma protegge da errori. Eliminare file, uscire senza salvare, operazioni pericolose — tutto questo richiede conferma. Questo previene azioni accidentali.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>showConfirmDialog()</code> — dialogo di conferma</li>
  <li>Opzioni di risposta: YES, NO, CANCEL</li>
  <li>Gestire risultato dialogo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La conferma è necessaria per prevenire azioni accidentali e proteggere da errori.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Mostra dialogo di conferma: <code>int result = JOptionPane.showConfirmDialog(frame, "Sei sicuro?", "Conferma", JOptionPane.YES_NO_OPTION);</code></li>
  <li>Gestisci risultato: <code>if (result == JOptionPane.YES_OPTION) {<br>
&nbsp;&nbsp;label.setText("Utente ha accettato");<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>YES_NO_OPTION</code> per scelta semplice</li>
  <li><strong>✅ Ottimo:</strong> <code>YES_NO_CANCEL_OPTION</code> per tre opzioni, gestire tutti i risultati possibili</li>
  <li><strong>⚠️ Evita:</strong> Ignorare risultato — l''azione si eseguirà sempre</li>
</ul>
<p><strong>Importante:</strong> Sempre verificare risultato prima di eseguire azione. Usa per operazioni pericolose (eliminazione, uscita senza salvare).</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un dialogo con domanda e pulsanti. Questa è una finestra con domanda e pulsanti (Sì/No o Sì/No/Annulla). L''utente sceglie opzione, e ottieni risultato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (270, 'it', 'Dialogo Conferma: Chiedere Permesso',
        'Mostra dialogo di conferma con domanda "Sei sicuro?" e gestisci risultato')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (271, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Aggiungere Scorciatoia al Menu</h2>
<p class="intro">Le scorciatoie accelerano il lavoro. Puoi aprire menu senza mouse, il che è conveniente per utenti esperti. Senza di esse, dovrai usare sempre il mouse.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setMnemonic()</code> — impostare mnemonica</li>
  <li>Scorciatoie per menu</li>
  <li>Migliorare accessibilità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le scorciatoie sono necessarie per migliorare accessibilità e accelerare lavoro con l''applicazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta mnemonica: <code>menu.setMnemonic(KeyEvent.VK_F);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMnemonic()</code> per scorciatoia</li>
  <li><strong>✅ Ottimo:</strong> Usare prima lettera del nome menu, sottolineare lettera nel testo</li>
  <li><strong>⚠️ Evita:</strong> Usare lettere rare — l''utente non ricorderà</li>
</ul>
<p><strong>Importante:</strong> Alt + mnemonica apre menu. La lettera è automaticamente sottolineata. Evitare conflitti con altre scorciatoie.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Nel nome del menu, la lettera sarà sottolineata. Puoi premere Alt+lettera per aprire menu.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (271, 'it', 'Menu Maestro: Aggiungere Scorciatoia', 'Imposta mnemonica VK_F tramite setMnemonic()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (272, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Aggiungere Separatore al Menu</h2>
<p class="intro">I separatori raggruppano voci menu. Puoi separare comandi correlati, creare gruppi visivi. Senza separatori, tutte le voci saranno in un gruppo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>addSeparator()</code> — aggiungere separatore</li>
  <li>Creare separazione visiva</li>
  <li>Raggruppare voci menu</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I separatori sono necessari per raggruppamento visivo di voci menu e migliorare organizzazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi voci: <code>menu.add(new JMenuItem("Apri"));</code> e <code>menu.add(new JMenuItem("Salva"));</code></li>
  <li>Aggiungi separatore: <code>menu.addSeparator();</code></li>
  <li>Aggiungi più voci: <code>menu.add(new JMenuItem("Esci"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addSeparator()</code> per separazione</li>
  <li><strong>✅ Ottimo:</strong> Raggruppare comandi correlati, separare diverse categorie</li>
  <li><strong>⚠️ Evita:</strong> Troppi separatori — può essere sovraccaricato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un separatore nel menu. La linea orizzontale separerà voci menu. Puoi creare gruppi visivi.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (272, 'it', 'Menu Maestro: Aggiungere Separatore',
        'Aggiungi due voci menu, aggiungi separatore tramite addSeparator(), aggiungi altra voce')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (273, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Aggiungere Mnemonica al Menu</h2>
<p class="intro">La mnemonica accelera il lavoro. Puoi attivare menu tramite Alt+lettera, senza usare mouse. Senza mnemonica, dovrai cliccare con mouse.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setMnemonic()</code> — impostare mnemonica</li>
  <li>Sottolineare lettera nel testo</li>
  <li>Creare menu accessibili</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La mnemonica è necessaria per migliorare accessibilità e accelerare lavoro con menu.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta mnemonica: <code>menu.setMnemonic(KeyEvent.VK_F);</code></li>
  <li>Aggiungi sottolineatura nel testo: <code>menu.setText("File (&F)");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMnemonic()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare KeyEvent.VK_* per tasti, mostrare mnemonica nel testo tramite &, usare prima lettera di parola</li>
  <li><strong>⚠️ Evita:</strong> Duplicare mnemoniche</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Nel testo del menu, la lettera sarà sottolineata. Puoi attivare menu tramite Alt+lettera.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (273, 'it', 'Menu Maestro: Aggiungere Mnemonica',
        'Imposta mnemonica VK_F tramite setMnemonic(), aggiungi &F nel testo menu')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (277, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Aggiungere Suggerimento a Voce Menu con Casella</h2>
<p class="intro">Il suggerimento migliora l''informatività. Puoi aggiungere descrizione della voce menu, migliorare comprensione. Senza suggerimento, l''utente può non capire lo scopo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setToolTipText()</code> — impostare suggerimento</li>
  <li>Migliorare informatività</li>
  <li>Creare interfaccia comprensibile</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I suggerimenti sono necessari per migliorare informatività e comprensione degli scopi degli elementi dell''interfaccia.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta suggerimento: <code>checkBoxMenuItem.setToolTipText("Mostra griglia");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setToolTipText()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare testi chiari, usare per migliorare informatività, migliorare comprensione</li>
  <li><strong>⚠️ Evita:</strong> Suggerimenti troppo lunghi</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Passando il mouse, apparirà un suggerimento. Puoi migliorare l''informatività.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (277, 'it', 'Voce Menu con Casella Maestro: Aggiungere Suggerimento',
        'Imposta suggerimento "Mostra griglia" tramite setToolTipText()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (274, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Aggiungere Separatore al Menu (Esteso)</h2>
<p class="intro">Il separatore crea separazione visiva. Puoi separare gruppi di voci menu, migliorare organizzazione. Senza separatore, le voci si mescoleranno.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>addSeparator()</code> — aggiungere separatore</li>
  <li>Creare separazione visiva</li>
  <li>Migliorare organizzazione menu</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I separatori sono necessari per organizzazione visiva di voci menu.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi voci: <code>menu.add(menuItem1);</code> e <code>menu.add(menuItem2);</code></li>
  <li>Aggiungi separatore: <code>menu.addSeparator();</code></li>
  <li>Aggiungi più voci: <code>menu.add(menuItem3);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addSeparator()</code> per separazione</li>
  <li><strong>✅ Ottimo:</strong> Separare gruppi di voci, usare per organizzazione, combinare con altri elementi</li>
  <li><strong>⚠️ Evita:</strong> Troppi separatori</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un separatore tra voci. I gruppi di voci saranno visivamente separati.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (274, 'it', 'Menu Maestro: Aggiungere Separatore',
        'Aggiungi due voci menu, aggiungi separatore tramite addSeparator(), aggiungi altra voce')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (275, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Configurare Ritardo Apertura Menu</h2>
<p class="intro">Il ritardo determina velocità di apertura. Puoi configurare quanto velocemente il menu si aprirà al passaggio del mouse, migliorare esperienza utente. Senza configurazione, il ritardo sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setDelay()</code> — impostare ritardo</li>
  <li>Gestire velocità di apertura</li>
  <li>Migliorare esperienza utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Configurare ritardo è necessario per ottimizzare esperienza utente quando si lavora con menu.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta ritardo: <code>menu.setDelay(200);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setDelay()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare valori ragionevoli, adattare a necessità, migliorare esperienza utente</li>
  <li><strong>⚠️ Evita:</strong> Ritardo troppo piccolo — può essere fastidioso</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il ritardo di apertura del menu cambierà. Il menu si aprirà con ritardo specificato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (275, 'it', 'Menu Maestro: Configurare Ritardo', 'Imposta ritardo 200 tramite setDelay(200)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (276, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Impostare Comando Azione per Voce Menu con Casella</h2>
<p class="intro">Il comando azione permette identificare voce menu. Puoi determinare quale voce è selezionata senza verificare sorgente. Senza comando, dovrai verificare sorgente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setActionCommand()</code> — impostare comando</li>
  <li>Metodo <code>getActionCommand()</code> — ottenere comando</li>
  <li>Identificare voce menu tramite comando</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I comandi azione sono necessari per identificare voci menu nei gestori di eventi.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta comando: <code>checkBoxMenuItem.setActionCommand("CHECK");</code></li>
  <li>Ottieni comando nel gestore: <code>checkBoxMenuItem.addActionListener(e -> {<br>
&nbsp;&nbsp;String cmd = e.getActionCommand();<br>
&nbsp;&nbsp;label.setText("Comando: " + cmd);<br>
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
<p>Nel gestore, puoi ottenere comando. Selezionando, puoi determinare comando.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (276, 'it', 'Menu con Casella Maestro: Impostare Comando Azione',
        'Imposta comando "CHECK" tramite setActionCommand(), ottieni comando in ActionListener tramite getActionCommand()')
ON CONFLICT (task_id, language_code) DO NOTHING;
