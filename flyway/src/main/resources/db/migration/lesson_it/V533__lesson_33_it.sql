-- Flyway migration V5: Lesson 33
-- This migration contains lesson, tasks, and documentation for lesson 33

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (278, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare Editor Avanzato</h2>
<p class="intro">JTextPane permette applicare stili al testo. Grassetto, corsivo, colore, dimensione font — tutto questo può essere applicato a diverse parti del testo. Senza di esso, non puoi creare editor di testo ricco.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>JTextPane</code> — editor avanzato</li>
  <li>Classe <code>StyledDocument</code> — documento con stili</li>
  <li>Applicare stili al testo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>JTextPane è necessario per creare editor di testo con supporto formattazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea editor: <code>JTextPane textPane = new JTextPane();</code></li>
  <li>Ottieni documento: <code>StyledDocument doc = textPane.getStyledDocument();</code></li>
  <li>Crea stile e applica: <code>Style style = textPane.addStyle("bold", null);</code>, <code>StyleConstants.setBold(style, true);</code>, <code>doc.insertString(0, "Testo grassetto", style);</code></li>
  <li>Aggiungi al modulo: <code>add(textPane);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> StyleConstants per impostare proprietà stile</li>
  <li><strong>✅ Ottimo:</strong> Applicare stili al testo selezionato, combinare più stili</li>
  <li><strong>⚠️ Evita:</strong> Troppi stili — difficile da gestire</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un editor con supporto stili. Puoi applicare grassetto, corsivo, colore al testo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (278, 'it', 'JTextPane Principiante: Creare Editor Avanzato',
        'Crea JTextPane, crea stile "bold", imposta font grassetto, inserisci testo con stile e aggiungi al modulo')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (279, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Selezionare e Stilizzare Testo</h2>
<p class="intro">Applicare stili al testo selezionato rende l''editor funzionale. Puoi selezionare testo e renderlo grassetto, corsivo, cambiare colore. Senza questo, dovrai applicare stili a tutto il testo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setCharacterAttributes()</code> — applicare stili</li>
  <li>Ottenere testo selezionato</li>
  <li>Applicare stili a selezione</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Applicare stili al testo selezionato è necessario per creare editor di testo funzionali.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni selezione: <code>int start = textPane.getSelectionStart();</code> e <code>int end = textPane.getSelectionEnd();</code></li>
  <li>Crea stile: <code>Style style = textPane.addStyle("bold", null);</code> e <code>StyleConstants.setBold(style, true);</code></li>
  <li>Applica stile: <code>StyledDocument doc = textPane.getStyledDocument();</code> e <code>doc.setCharacterAttributes(start, end - start, style, false);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Verificare selezione prima di applicare</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>setCharacterAttributes()</code> per applicare stili, combinare più stili</li>
  <li><strong>⚠️ Evita:</strong> Applicare stili senza verificare selezione — può essere errore</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo selezionato sarà stilizzato. Puoi selezionare testo e applicare grassetto, corsivo, colore.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (279, 'it', 'JTextPane Maestro: Selezionare e Stilizzare Testo',
        'Ottieni inizio e fine selezione, crea stile "bold", applica stile al testo selezionato')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (280, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Configurare Font</h2>
<p class="intro">Configurare font rende il testo leggibile. Puoi impostare dimensione, stile, famiglia font. Senza configurazione, verrà usato font standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setFont()</code> — impostare font</li>
  <li>Configurare font tramite stili</li>
  <li>Creare testo formattato</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Configurare font è necessario per migliorare leggibilità e rappresentazione visiva del testo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta font: <code>textPane.setFont(new Font("Arial", Font.BOLD, 14));</code></li>
  <li>O tramite stile: <code>Style style = textPane.addStyle("bold", null);</code>, <code>StyleConstants.setFontFamily(style, "Arial");</code>, <code>StyleConstants.setFontSize(style, 14);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setFont()</code> per tutto il testo</li>
  <li><strong>✅ Ottimo:</strong> Usare stili per parti del testo, combinare diversi font, usare StyleConstants per configurazione</li>
  <li><strong>⚠️ Evita:</strong> Troppi font diversi — può essere disordinato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo sarà mostrato con font specificato. Puoi impostare dimensione, stile, famiglia.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (280, 'it', 'JTextPane Maestro: Configurare Font',
        'Imposta font tramite setFont() con Arial, BOLD, dimensione 14')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (281, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Inserire Stringa</h2>
<p class="intro">Inserire stringa permette aggiungere testo. Puoi inserire testo in posizione necessaria, con formattazione. Senza inserimento, dovrai sostituire tutto il testo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>insertString()</code> — inserire stringa</li>
  <li>Inserire testo in posizione</li>
  <li>Creare testo formattato</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Inserire stringa è necessario per aggiunta programmatica di testo in posizione necessaria.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni documento: <code>StyledDocument doc = textPane.getStyledDocument();</code></li>
  <li>Inserisci stringa: <code>doc.insertString(0, "Testo", null);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>insertString()</code> per inserire</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>getStyledDocument()</code> per ottenere, usare stili per formattazione, usare posizione per inserimento preciso</li>
  <li><strong>⚠️ Evita:</strong> Inserire oltre i limiti — può essere errore</li>
</ul>
<p><strong>Importante:</strong> Verificare posizione prima di inserimento. Gestire BadLocationException.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo sarà inserito in posizione specificata. Puoi inserire testo con formattazione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (281, 'it', 'JTextPane Maestro: Inserire Stringa',
        'Ottieni documento tramite getStyledDocument(), inserisci stringa in posizione 0 tramite insertString()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (282, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Applicare Stile</h2>
<p class="intro">Lo stile crea formattazione. Puoi applicare grassetto, corsivo, colore, dimensione al testo. Senza stile, il testo sarà semplice.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>Style</code> — stile testo</li>
  <li>Metodo <code>setCharacterAttributes()</code> — applicare stile</li>
  <li>Creare testo formattato</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gli stili sono necessari per creare testo formattato con vari effetti visivi.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni documento: <code>StyledDocument doc = textPane.getStyledDocument();</code></li>
  <li>Crea stile: <code>Style style = doc.addStyle("bold", null);</code> e <code>StyleConstants.setBold(style, true);</code></li>
  <li>Applica stile: <code>doc.setCharacterAttributes(0, 5, style, false);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addStyle()</code> per creare</li>
  <li><strong>✅ Ottimo:</strong> Usare StyleConstants per configurazione, usare <code>setCharacterAttributes()</code> per applicare, combinare diversi stili</li>
  <li><strong>⚠️ Evita:</strong> Troppi stili — può essere complesso</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo sarà formattato con stile. Puoi applicare grassetto, corsivo, colore.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (282, 'it', 'JTextPane Maestro: Applicare Stile',
        'Ottieni documento, crea stile tramite addStyle(), imposta grassetto tramite StyleConstants.setBold(), applica tramite setCharacterAttributes()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (283, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Ottenere Testo</h2>
<p class="intro">Ottenere testo permette lavorare con contenuto. Puoi estrarre testo, processarlo, salvarlo. Senza ottenere, non puoi lavorare con contenuto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getText()</code> — ottenere testo</li>
  <li>Estrarre contenuto testo</li>
  <li>Lavorare con contenuto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Ottenere testo è necessario per lavorare con contenuto dell''editor (elaborazione, salvataggio).</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni testo: <code>String text = textPane.getText();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getText()</code> per ottenere</li>
  <li><strong>✅ Ottimo:</strong> Usare per elaborazione, usare per salvataggio, processare testo ottenuto</li>
  <li><strong>⚠️ Evita:</strong> Ignorare testo ottenuto</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Puoi ottenere testo. Puoi estrarre e processare contenuto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (283, 'it', 'JTextPane Maestro: Ottenere Testo', 'Ottieni testo tramite getText(), mostralo')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (284, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Determinare Pulsante Mouse</h2>
<p class="intro">Determinare pulsante migliora funzionalità. Puoi gestire pulsanti sinistro, destro, centrale in modo diverso, migliorare interattività. Senza determinazione, tutti i pulsanti sono uguali.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getButton()</code> — ottenere pulsante</li>
  <li>Costanti <code>MouseEvent.BUTTON1</code>, <code>BUTTON2</code>, <code>BUTTON3</code></li>
  <li>Gestire diversi pulsanti mouse</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Determinare pulsante è necessario per creare interfacce interattive con reazione diversa a diversi pulsanti mouse.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Determina pulsante: <code>component.addMouseListener(new MouseAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void mouseClicked(MouseEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;if (e.getButton() == MouseEvent.BUTTON1) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Pulsante sinistro");<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getButton()</code> per ottenere</li>
  <li><strong>✅ Ottimo:</strong> Usare BUTTON1, BUTTON2, BUTTON3, gestire diversi pulsanti, migliorare interattività</li>
  <li><strong>⚠️ Evita:</strong> Ignorare pulsanti</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Puoi determinare quale pulsante è premuto. Puoi gestire pulsanti sinistro, destro, centrale in modo diverso.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (284, 'it', 'MouseListener Maestro: Determinare Pulsante Mouse',
        'Aggiungi MouseListener, verifica getButton() == BUTTON1, mostra "Pulsante sinistro"')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (285, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Ottenere Coordinate Mouse</h2>
<p class="intro">Le coordinate mouse sono importanti per posizionamento. Puoi ottenere posizione del clic, gestire per coordinate, migliorare funzionalità. Senza coordinate, non puoi determinare posizione.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getX()</code> — ottenere coordinata X</li>
  <li>Metodo <code>getY()</code> — ottenere coordinata Y</li>
  <li>Ottenere posizione mouse</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le coordinate mouse sono necessarie per posizionamento elementi e gestione eventi per posizione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni coordinate: <code>component.addMouseListener(new MouseAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void mouseClicked(MouseEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;int x = e.getX();<br>
&nbsp;&nbsp;&nbsp;&nbsp;int y = e.getY();<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Coordinate: " + x + ", " + y);<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getX()</code> per coordinata X</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>getY()</code> per coordinata Y, usare per posizionamento, migliorare funzionalità</li>
  <li><strong>⚠️ Evita:</strong> Ignorare coordinate</li>
</ul>
<p><strong>Importante:</strong> Considerare coordinate relative.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Puoi ottenere coordinate del clic. Puoi gestire per posizione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (285, 'it', 'MouseListener Maestro: Ottenere Coordinate Mouse',
        'Aggiungi MouseListener, sovrascrivi mouseClicked(), ottieni X e Y tramite getX(), getY(), mostra')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (286, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Ottenere Conteggio Clic</h2>
<p class="intro">Il conteggio clic è importante per gestione. Puoi gestire clic singolo, doppio clic, migliorare funzionalità. Senza ottenere, non puoi distinguere clic.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getClickCount()</code> — ottenere conteggio clic</li>
  <li>Gestire clic singoli e doppi</li>
  <li>Migliorare funzionalità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Ottenere conteggio clic è necessario per distinguere clic singoli e doppi.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni conteggio: <code>component.addMouseListener(new MouseAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void mouseClicked(MouseEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;int count = e.getClickCount();<br>
&nbsp;&nbsp;&nbsp;&nbsp;if (count == 2) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Doppio clic");<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getClickCount()</code> per ottenere</li>
  <li><strong>✅ Ottimo:</strong> Usare per gestire doppi clic, usare per migliorare funzionalità, migliorare esperienza utente</li>
  <li><strong>⚠️ Evita:</strong> Ignorare conteggio</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Puoi ottenere conteggio clic. Puoi gestire doppio clic.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (286, 'it', 'MouseListener Maestro: Ottenere Conteggio Clic',
        'Aggiungi MouseListener, sovrascrivi mouseClicked(), ottieni conteggio tramite getClickCount(), verifica per 2')
ON CONFLICT (task_id, language_code) DO NOTHING;
