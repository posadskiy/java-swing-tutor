-- Flyway migration V5: Lesson 35
-- This migration contains lesson, tasks, and documentation for lesson 35

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (291, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Aprire Dialogo di Selezione File</h2>
<p class="intro">JFileChooser — modo standard per lavorare con file. Aprire documento, salvare progetto, selezionare immagine — tutto questo richiede selezione file. Senza questo, utente non potrà lavorare con file.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>JFileChooser</code> — dialogo di selezione file</li>
  <li>Creare dialogo apri/salva file</li>
  <li>Ottenere file selezionato</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>JFileChooser è necessario per lavoro standard con file in applicazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea dialogo di selezione file: <code>JFileChooser fileChooser = new JFileChooser();</code></li>
  <li>Mostra dialogo apri: <code>int result = fileChooser.showOpenDialog(frame);</code></li>
  <li>Gestisci risultato: <code>if (result == JFileChooser.APPROVE_OPTION) {<br>
&nbsp;&nbsp;File selectedFile = fileChooser.getSelectedFile();<br>
&nbsp;&nbsp;label.setText("Selezionato: " + selectedFile.getName());<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Verificare risultato prima di usare file</li>
  <li><strong>✅ Ottimo:</strong> Impostare directory iniziale, aggiungere filtro file</li>
  <li><strong>⚠️ Evita:</strong> Ignorare risultato — può essere null</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà dialogo di selezione file. Questa è finestra standard di esploratore file. Puoi selezionare file e premere "Apri" o "Salva". Dopo selezione, otterrai oggetto File.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (291, 'it', 'Selezione File Principiante: Aprire Dialogo di Selezione File',
        'Crea JFileChooser, mostra dialogo apri e gestisci risultato')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (292, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Creare Dialogo Salva</h2>
<p class="intro">Il dialogo salva permette di scegliere posizione per file. Salvare documento, esportare dati, creare backup — tutto questo richiede scegliere posizione salvataggio. Senza questo, file sarà salvato in posizione imprevedibile.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>showSaveDialog()</code> — dialogo salva</li>
  <li>Gestire risultato salvataggio</li>
  <li>Ottenere file selezionato per salvare</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il dialogo salva è necessario per scegliere posizione e nome file quando si salva.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Mostra dialogo salva: <code>int result = fileChooser.showSaveDialog(frame);</code></li>
  <li>Gestisci risultato: <code>if (result == JFileChooser.APPROVE_OPTION) {<br>
&nbsp;&nbsp;File file = fileChooser.getSelectedFile();<br>
&nbsp;&nbsp;label.setText("Salva in: " + file.getPath());<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Verificare risultato prima di salvare</li>
  <li><strong>✅ Ottimo:</strong> Impostare nome file suggerito, verificare esistenza file prima di sovrascrivere</li>
  <li><strong>⚠️ Evita:</strong> Ignorare risultato — file non sarà salvato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà dialogo salva file. Puoi scegliere posizione e nome file. Dopo selezione, otterrai oggetto File per salvare.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (292, 'it', 'Selezione File Maestro: Creare Dialogo Salva',
        'Mostra dialogo salva, gestisci risultato e ottieni file selezionato')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (293, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Aggiungere Filtro File</h2>
<p class="intro">I filtri file semplificano selezione. Puoi mostrare solo immagini, solo documenti, solo file di testo. Senza filtri, utente dovrà cercare tipo di file necessario tra tutti.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>FileNameExtensionFilter</code> — filtro per estensione</li>
  <li>Metodo <code>setFileFilter()</code> — impostare filtro</li>
  <li>Creare filtri file</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I filtri file sono necessari per semplificare selezione di tipi di file necessari.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea filtro: <code>FileNameExtensionFilter filter = new FileNameExtensionFilter(<br>
&nbsp;&nbsp;"File di testo",<br>
&nbsp;&nbsp;"txt", "text"<br>
);</code></li>
  <li>Imposta filtro: <code>fileChooser.setFileFilter(filter);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> FileNameExtensionFilter per estensioni</li>
  <li><strong>✅ Ottimo:</strong> Aggiungere più estensioni a un filtro, aggiungere più filtri via <code>addChoosableFileFilter()</code>, usare <code>setAcceptAllFileFilterUsed(false)</code> per nascondere "Tutti i file"</li>
  <li><strong>⚠️ Evita:</strong> Troppi filtri — può essere complesso</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Nel dialogo saranno mostrati solo file con estensioni necessarie. Puoi selezionare tipo di file da elenco a discesa.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (293, 'it', 'Selezione File Maestro: Aggiungere Filtro File',
        'Crea FileNameExtensionFilter per "txt" e "text", imposta filtro in fileChooser')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (294, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Abilitare Selezione Multipla File</h2>
<p class="intro">La selezione multipla accelera lavoro. Puoi selezionare più file alla volta, senza aprire dialogo più volte. Senza questo, dovrai selezionare file uno per uno.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setMultiSelectionEnabled()</code> — abilitare selezione multipla</li>
  <li>Ottenere più file selezionati</li>
  <li>Gestire selezione multipla</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La selezione multipla è necessaria per accelerare lavoro con più file simultaneamente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Abilita selezione multipla: <code>fileChooser.setMultiSelectionEnabled(true);</code></li>
  <li>Gestisci risultato: <code>if (result == JFileChooser.APPROVE_OPTION) {<br>
&nbsp;&nbsp;File[] files = fileChooser.getSelectedFiles();<br>
&nbsp;&nbsp;for (File file : files) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Selezionato: " + file.getName());<br>
&nbsp;&nbsp;}<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMultiSelectionEnabled(true)</code></li>
  <li><strong>✅ Ottimo:</strong> Usare <code>getSelectedFiles()</code> per ottenere array, gestire tutti i file selezionati</li>
  <li><strong>⚠️ Evita:</strong> Selezione multipla dove serve singola</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Potrai selezionare più file. Con selezione multipla, puoi selezionare più file simultaneamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (294, 'it', 'Selezione File Maestro: Abilitare Selezione Multipla',
        'Abilita selezione multipla via setMultiSelectionEnabled(true), ottieni file via getSelectedFiles()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (295, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Aggiungere Filtro File (Esteso)</h2>
<p class="intro">Il filtro limita selezione. Puoi mostrare solo tipi di file necessari, semplificare selezione. Senza filtro, tutti i file saranno visibili.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>FileFilter</code> — filtro file</li>
  <li>Metodo <code>addChoosableFileFilter()</code> — aggiungere filtro</li>
  <li>Limitare selezione file</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I filtri sono necessari per limitare selezione di tipi di file necessari e semplificare navigazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea filtro: <code>FileFilter filter = new FileNameExtensionFilter("File di testo", "txt");</code></li>
  <li>Aggiungi filtro: <code>fileChooser.addChoosableFileFilter(filter);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> FileNameExtensionFilter per estensioni</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>addChoosableFileFilter()</code> per aggiungere, usare <code>setFileFilter()</code> per impostare predefinito, creare filtri personalizzati</li>
  <li><strong>⚠️ Evita:</strong> Troppi filtri — può essere sovraccarico</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Filtro apparirà in dialogo. Puoi selezionare tipo di file. Solo file necessari saranno visibili.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (295, 'it', 'Selezione File Maestro: Aggiungere Filtro',
        'Crea FileNameExtensionFilter per "txt", aggiungi via addChoosableFileFilter()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (296, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Impostare Directory Corrente</h2>
<p class="intro">La directory corrente determina cartella iniziale. Puoi aprire dialogo in cartella necessaria, migliorare navigazione. Senza impostazione, sarà cartella standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setCurrentDirectory()</code> — impostare directory</li>
  <li>Classe <code>File</code> — file/directory</li>
  <li>Migliorare esperienza utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Impostare directory corrente è necessario per migliorare navigazione e esperienza utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea directory: <code>File dir = new File("/path/to/directory");</code></li>
  <li>Imposta directory: <code>fileChooser.setCurrentDirectory(dir);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setCurrentDirectory()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare File per directory, usare per migliorare navigazione, adattare a contesto</li>
  <li><strong>⚠️ Evita:</strong> Impostare directory inesistente</li>
</ul>
<p><strong>Importante:</strong> Verificare esistenza directory.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Dialogo si aprirà in directory specificata. Puoi iniziare navigazione da cartella necessaria.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (296, 'it', 'Selezione File Maestro: Impostare Directory Corrente',
        'Crea File per directory, imposta via setCurrentDirectory()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (297, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Impostare Titolo Dialogo</h2>
<p class="intro">Il titolo rende dialogo informativo. Puoi specificare scopo dialogo, migliorare comprensione. Senza titolo, dialogo sarà senza nome.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setDialogTitle()</code> — impostare titolo</li>
  <li>Creare dialogo informativo</li>
  <li>Migliorare esperienza utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il titolo è necessario per informativeness dialogo e migliorare esperienza utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta titolo: <code>fileChooser.setDialogTitle("Scegli file");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setDialogTitle()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare titoli chiari, usare per informativeness, adattare a contesto</li>
  <li><strong>⚠️ Evita:</strong> Titoli troppo lunghi</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Dialogo avrà titolo. Il titolo sarà visibile in titolo finestra.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (297, 'it', 'Selezione File Maestro: Impostare Titolo Dialogo',
        'Imposta titolo "Scegli file" via setDialogTitle()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (298, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Aggiungere Ascoltatore Collegamenti</h2>
<p class="intro">L''ascoltatore collegamenti permette gestire clic. Puoi aprire collegamento, eseguire azione, migliorare funzionalità. Senza ascoltatore, collegamenti non funzioneranno.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Interfaccia <code>HyperlinkListener</code> — ascoltatore collegamenti</li>
  <li>Metodo <code>addHyperlinkListener()</code> — aggiungere ascoltatore</li>
  <li>Gestire clic su collegamenti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''ascoltatore collegamenti è necessario per gestire clic su collegamenti in JEditorPane.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi ascoltatore: <code>editorPane.addHyperlinkListener(e -> {<br>
&nbsp;&nbsp;if (e.getEventType() == HyperlinkEvent.EventType.ACTIVATED) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Collegamento: " + e.getURL());<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addHyperlinkListener()</code> per aggiungere</li>
  <li><strong>✅ Ottimo:</strong> Verificare EventType.ACTIVATED, usare <code>getURL()</code> per ottenere URL, gestire clic</li>
  <li><strong>⚠️ Evita:</strong> Ignorare eventi</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando si clicca collegamento, gestore si attiverà. Puoi gestire collegamento, aprire URL.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (298, 'it', 'Editor Maestro: Aggiungere Ascoltatore Collegamenti',
        'Aggiungi HyperlinkListener, verifica EventType.ACTIVATED, mostra URL via getURL()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (299, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Impostare Tipo Contenuto</h2>
<p class="intro">Il tipo contenuto determina formato. Puoi impostare HTML, RTF, testo semplice, migliorare visualizzazione. Senza tipo, contenuto sarà testo semplice.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setContentType()</code> — impostare tipo contenuto</li>
  <li>Tipi: text/html, text/plain, text/rtf</li>
  <li>Gestire formato contenuto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il tipo contenuto è necessario per visualizzazione corretta di contenuto formattato in JEditorPane.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta tipo: <code>editorPane.setContentType("text/html");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setContentType()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare "text/html" per HTML, usare "text/plain" per testo, usare "text/rtf" per RTF</li>
  <li><strong>⚠️ Evita:</strong> Usare tipo non supportato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Contenuto sarà visualizzato in formato specificato. Puoi usare HTML, RTF.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (299, 'it', 'Editor Maestro: Impostare Tipo Contenuto',
        'Imposta tipo contenuto "text/html" via setContentType()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (300, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 10: Creare Editor Solo Lettura</h2>
<p class="intro">Solo lettura protegge contenuto. Puoi vietare modifica, migliorare sicurezza. Senza protezione, contenuto può essere cambiato.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setEditable()</code> — impostare modificabilità</li>
  <li>Protezione da modifiche</li>
  <li>Migliorare sicurezza</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La modalità solo lettura è necessaria per proteggere contenuto da modifiche.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Disabilita modifica: <code>editorPane.setEditable(false);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setEditable(false)</code> per disabilitare</li>
  <li><strong>✅ Ottimo:</strong> Usare per protezione, migliorare sicurezza, usare per visualizzazione</li>
  <li><strong>⚠️ Evita:</strong> Disabilitare per campi modificabili</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Editor sarà solo lettura. Contenuto non può essere cambiato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (300, 'it', 'Editor Maestro: Rendere Solo Lettura', 'Disabilita modifica via setEditable(false)')
ON CONFLICT (task_id, language_code) DO NOTHING;
