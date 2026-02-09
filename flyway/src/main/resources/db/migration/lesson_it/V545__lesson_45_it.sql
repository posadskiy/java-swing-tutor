-- Flyway migration V5: Lesson 45
-- This migration contains lesson, tasks, and documentation for lesson 45

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (397, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare Editor HTML con JEditorPane</h2>
<p class="intro">JEditorPane permette mostrare testo formattato. HTML, RTF, testo semplice — tutto questo può essere mostrato in un componente. Senza questo, dovrai usare JTextArea regolare senza formattazione.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>JEditorPane</code> — editor testo formattato</li>
  <li>Metodo <code>setContentType()</code> — impostare tipo contenuto</li>
  <li>Mostrare HTML e RTF</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>JEditorPane è necessario per mostrare testo formattato.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea editor: <code>JEditorPane editor = new JEditorPane();</code></li>
  <li>Imposta tipo contenuto: <code>editor.setContentType("text/html");</code></li>
  <li>Imposta testo: <code>editor.setText("&lt;html&gt;&lt;h1&gt;Ciao!&lt;/h1&gt;&lt;/html&gt;");</code></li>
  <li>Aggiungi a form: <code>add(editor);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Impostare tipo contenuto prima di impostare testo</li>
  <li><strong>✅ Ottimo:</strong> Usare "text/html" per HTML, usare "text/rtf" per RTF, usare "text/plain" per testo semplice</li>
  <li><strong>⚠️ Evita:</strong> Non impostare tipo — può non funzionare</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Editor con testo formattato apparirà. HTML sarà mostrato con formattazione. Puoi modificare testo direttamente in editor.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (397, 'it', 'JEditorPane Principiante: Creare Editor HTML',
        'Crea JEditorPane, imposta tipo "text/html", imposta testo HTML e aggiungi a form')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (398, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Caricare HTML da URL in JEditorPane</h2>
<p class="intro">Caricare HTML da URL permette mostrare contenuto web. Aiuto, documentazione, notizie — tutto questo può essere caricato da internet. Senza questo, dovrai memorizzare tutto il contenuto localmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setPage()</code> — caricare pagina da URL</li>
  <li>Classe <code>URL</code> — indirizzo risorsa</li>
  <li>Gestire errori di caricamento</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Caricare HTML da URL è necessario per mostrare contenuto web.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta tipo contenuto: <code>editor.setContentType("text/html");</code></li>
  <li>Carica pagina: <code>try {<br>
&nbsp;&nbsp;editor.setPage(new URL("https://example.com"));<br>
} catch (IOException e) {<br>
&nbsp;&nbsp;label.setText("Errore caricamento: " + e.getMessage());<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Gestire IOException quando carichi</li>
  <li><strong>✅ Ottimo:</strong> Mostrare indicatore caricamento, usare <code>setPage()</code> per caricare</li>
  <li><strong>⚠️ Evita:</strong> Ignorare errori — utente non saprà del problema</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>HTML sarà caricato da URL e mostrato. Pagina web apparirà in editor. Puoi vedere contenuto da internet.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (398, 'it', 'JEditorPane Maestro: Caricare HTML da URL',
        'Imposta tipo "text/html", carica pagina da URL via setPage(), gestisci IOException')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (399, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Gestire Collegamenti in JEditorPane</h2>
<p class="intro">Gestire collegamenti rende editor interattivo. Puoi navigare collegamenti, aprire nuove pagine, eseguire azioni. Senza questo, collegamenti saranno inattivi.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Interfaccia <code>HyperlinkListener</code> — gestione collegamenti</li>
  <li>Gestire clic su collegamenti</li>
  <li>Navigare collegamenti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire collegamenti è necessario per creare editor interattivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi ascoltatore: <code>editor.addHyperlinkListener(e -> {<br>
&nbsp;&nbsp;if (e.getEventType() == HyperlinkEvent.EventType.ACTIVATED) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;try {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;editor.setPage(e.getURL());<br>
&nbsp;&nbsp;&nbsp;&nbsp;} catch (IOException ex) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ex.printStackTrace();<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Verificare tipo evento ACTIVATED</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>getURL()</code> per ottenere collegamento, caricare nuova pagina via <code>setPage()</code>, gestire IOException quando carichi</li>
  <li><strong>⚠️ Evita:</strong> Ignorare errori — utente non saprà del problema</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Collegamenti diventeranno cliccabili. Quando clicchi collegamento, nuova pagina si caricherà. Puoi navigare collegamenti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (399, 'it', 'JEditorPane Maestro: Gestire Collegamenti',
        'Aggiungi HyperlinkListener, verifica ACTIVATED, ottieni URL via getURL(), carica pagina via setPage()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (400, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Impostare Tipo Contenuto in JEditorPane</h2>
<p class="intro">Il tipo contenuto determina formato. Puoi mostrare HTML, testo semplice, RTF. Senza tipo, contenuto sarà interpretato scorrettamente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setContentType()</code> — impostare tipo</li>
  <li>Tipi contenuto (text/html, text/plain)</li>
  <li>Creare contenuto formattato</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il tipo contenuto è necessario per interpretazione corretta di contenuto.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta tipo: <code>editor.setContentType("text/html");</code></li>
  <li>Imposta testo: <code>editor.setText("&lt;html&gt;&lt;b&gt;Testo&lt;/b&gt;&lt;/html&gt;");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setContentType()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare "text/html" per HTML, usare "text/plain" per testo, usare "text/rtf" per RTF</li>
  <li><strong>⚠️ Evita:</strong> Tipo sbagliato — può esserci errore</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Contenuto sarà formattato secondo tipo. HTML sarà mostrato come HTML.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (400, 'it', 'JEditorPane Maestro: Impostare Tipo Contenuto',
        'Imposta tipo "text/html" via setContentType(), imposta testo HTML')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (401, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Gestire Collegamenti in JEditorPane</h2>
<p class="intro">Gestire collegamenti rende contenuto interattivo. Puoi gestire clic su collegamento, aprire URL, eseguire azione. Senza gestione, collegamenti non funzioneranno.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Interfaccia <code>HyperlinkListener</code> — gestore collegamenti</li>
  <li>Gestire clic su collegamenti</li>
  <li>Creare contenuto interattivo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire collegamenti è necessario per creare contenuto interattivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi ascoltatore: <code>editor.addHyperlinkListener(e -> {<br>
&nbsp;&nbsp;if (e.getEventType() == HyperlinkEvent.EventType.ACTIVATED) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Collegamento: " + e.getURL());<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addHyperlinkListener()</code> per gestire</li>
  <li><strong>✅ Ottimo:</strong> Verificare EventType.ACTIVATED per clic, usare <code>getURL()</code> per ottenere URL, aprire URL o eseguire azione</li>
  <li><strong>⚠️ Evita:</strong> Ignorare collegamenti</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando clicchi collegamento, gestore si attiverà. Puoi gestire clic e aprire URL.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (401, 'it', 'JEditorPane Maestro: Gestire Collegamenti',
        'Aggiungi HyperlinkListener, verifica EventType.ACTIVATED, ottieni URL via getURL()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (403, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Rimuovere Ascoltatore in ActionListener</h2>
<p class="intro">Rimuovere ascoltatore permette gestire eventi. Puoi disabilitare temporaneamente gestione, migliorare logica. Senza rimozione, ascoltatore funzionerà sempre.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>removeActionListener()</code> — rimuovere ascoltatore</li>
  <li>Gestione dinamica ascoltatori</li>
  <li>Migliorare gestione eventi</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Rimuovere ascoltatore è necessario per gestione dinamica eventi.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Salva ascoltatore: <code>JLabel label = new JLabel();<br>
ActionListener listener = e -> label.setText("Azione");<br>
add(label);</code></li>
  <li>Aggiungi ascoltatore: <code>button.addActionListener(listener);</code></li>
  <li>Rimuovi ascoltatore: <code>button.removeActionListener(listener);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>removeActionListener()</code> per rimuovere</li>
  <li><strong>✅ Ottimo:</strong> Salvare riferimento ad ascoltatore, usare per gestione dinamica, migliorare logica</li>
  <li><strong>⚠️ Evita:</strong> Rimuovere senza salvare riferimento</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Ascoltatore sarà rimosso. Gestione eventi cesserà.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (403, 'it', 'ActionListener Maestro: Rimuovere Ascoltatore',
        'Crea ActionListener, aggiungi via addActionListener(), rimuovi via removeActionListener()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (402, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Impostare Testo in JEditorPane</h2>
<p class="intro">Il testo crea contenuto. Puoi impostare HTML o testo semplice, creare contenuto informativo. Senza testo, componente sarà vuoto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setText()</code> — impostare testo</li>
  <li>Creare contenuto testuale</li>
  <li>Migliorare visualizzazione</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Impostare testo è necessario per creare contenuto in componente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta testo: <code>editor.setText("&lt;html&gt;&lt;h1&gt;Titolo&lt;/h1&gt;&lt;/html&gt;");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setText()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare HTML per formattazione, usare testo semplice, adattare a tipo contenuto</li>
  <li><strong>⚠️ Evita:</strong> HTML senza formato corretto</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Testo apparirà in componente. Testo sarà formattato secondo tipo contenuto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (402, 'it', 'JEditorPane Maestro: Impostare Testo', 'Imposta testo HTML via setText()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (404, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Aggiungere Multipli Ascoltatori in ActionListener</h2>
<p class="intro">Multipli ascoltatori permettono gestire evento in modi multipli. Puoi aggiungere diversi gestori, migliorare funzionalità. Senza multipli ascoltatori, solo un gestore.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Multipli ascoltatori</li>
  <li>Aggiungere diversi gestori</li>
  <li>Migliorare funzionalità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Multipli ascoltatori sono necessari per gestire evento in modi multipli.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi primo ascoltatore: <code>JLabel label = new JLabel();<br>
button.addActionListener(e -> label.setText("Primo"));<br>
add(label);</code></li>
  <li>Aggiungi secondo ascoltatore: <code>button.addActionListener(e -> label.setText("Secondo"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addActionListener()</code> più volte</li>
  <li><strong>✅ Ottimo:</strong> Usare per gestione multipla, migliorare funzionalità, separare logica</li>
  <li><strong>⚠️ Evita:</strong> Troppi ascoltatori</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando avviene azione, tutti gli ascoltatori si attiveranno. Puoi gestire evento in modi multipli.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (404, 'it', 'ActionListener Maestro: Aggiungere Multipli Ascoltatori',
        'Aggiungi due ActionListener via addActionListener(), ognuno mostra suo testo')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (405, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Ottenere Comando Azione in ActionListener</h2>
<p class="intro">Il comando azione permette identificare sorgente. Puoi determinare quale componente ha attivato evento, senza verificare sorgente. Senza comando, dovrai verificare sorgente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getActionCommand()</code> — ottenere comando</li>
  <li>Identificare sorgente evento</li>
  <li>Migliorare gestione eventi</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il comando azione è necessario per identificare sorgente evento.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni comando: <code>button.addActionListener(e -> {<br>
&nbsp;&nbsp;String cmd = e.getActionCommand();<br>
&nbsp;&nbsp;label.setText("Comando: " + cmd);<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getActionCommand()</code> per ottenere</li>
  <li><strong>✅ Ottimo:</strong> Usare per identificazione, usare comandi chiari, migliorare gestione</li>
  <li><strong>⚠️ Evita:</strong> Ignorare comando</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Potrai ottenere comando azione. Puoi identificare sorgente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (405, 'it', 'ActionListener Maestro: Ottenere Comando Azione',
        'Aggiungi ActionListener, ottieni comando via getActionCommand() in actionPerformed()')
ON CONFLICT (task_id, language_code) DO NOTHING;
