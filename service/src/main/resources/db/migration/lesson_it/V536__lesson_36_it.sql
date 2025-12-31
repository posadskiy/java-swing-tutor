-- Flyway migration V5: Lesson 36
-- This migration contains lesson, tasks, and documentation for lesson 36

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (301, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Aprire Tavolozza Colori</h2>
<p class="intro">JColorChooser permette di scegliere qualsiasi colore. Impostazioni tema, selezione colore sfondo, personalizzazione interfaccia — tutto questo richiede selezione colore. Senza questo, utente è limitato a colori preimpostati.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>JColorChooser</code> — dialogo selezione colore</li>
  <li>Creare dialogo selezione colore</li>
  <li>Ottenere colore selezionato</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>JColorChooser è necessario per selezione colore in applicazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Mostra dialogo selezione colore: <code>Color color = JColorChooser.showDialog(frame, "Scegli colore", Color.WHITE);</code></li>
  <li>Usa colore selezionato: <code>if (color != null) {<br>
&nbsp;&nbsp;panel.setBackground(color);<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Verificare per null — utente può aver annullato</li>
  <li><strong>✅ Ottimo:</strong> Specificare colore iniziale — lo mostrerà all''apertura, usare colore selezionato per impostazioni componenti</li>
  <li><strong>⚠️ Evita:</strong> Ignorare null — può essere errore</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà dialogo selezione colore. Questa è finestra con tavolozza colori. Puoi selezionare colore da spettro, schede o inserire valori RGB. Dopo selezione, otterrai oggetto Color.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (301, 'it', 'Selezione Colore Principiante: Aprire Tavolozza Colori',
        'Mostra dialogo selezione colore con colore iniziale WHITE e usa colore selezionato')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (302, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Creare Dialogo Personalizzato Selezione Colore</h2>
<p class="intro">Il dialogo personalizzato permette configurare selezione colore. Puoi aggiungere pulsanti aggiuntivi, cambiare titolo, aggiungere gestori. Senza questo, dovrai usare dialogo standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Creare <code>JColorChooser</code> come componente</li>
  <li>Metodo <code>createDialog()</code> — creare dialogo</li>
  <li>Configurare dialogo selezione colore</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il dialogo personalizzato è necessario per configurazione estesa selezione colore.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea selettore colore: <code>JColorChooser colorChooser = new JColorChooser(Color.WHITE);</code></li>
  <li>Crea dialogo: <code>JDialog dialog = JColorChooser.createDialog(<br>
&nbsp;&nbsp;frame,<br>
&nbsp;&nbsp;"Scegli colore",<br>
&nbsp;&nbsp;true,<br>
&nbsp;&nbsp;colorChooser,<br>
&nbsp;&nbsp;null,<br>
&nbsp;&nbsp;null<br>
);</code></li>
  <li>Mostra dialogo: <code>dialog.setVisible(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createDialog()</code> per creare dialogo</li>
  <li><strong>✅ Ottimo:</strong> Aggiungere gestori per pulsanti OK e Annulla, configurare colore iniziale</li>
  <li><strong>⚠️ Evita:</strong> Configurazione troppo complessa — può essere eccessivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà dialogo personalizzato selezione colore. Puoi configurarlo per tue esigenze, aggiungere gestori.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (302, 'it', 'Selezione Colore Maestro: Creare Dialogo Personalizzato',
        'Crea JColorChooser con colore iniziale WHITE, crea dialogo via createDialog, mostra dialogo')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (304, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Usare Tutte le Regioni BorderLayout</h2>
<p class="intro">Usare tutte le regioni crea interfaccia strutturata. Intestazione in alto, barra strumenti in basso, contenuto al centro — tutto questo richiede tutte le regioni. Senza questo, interfaccia sarà incompleta.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Tutte le regioni BorderLayout (NORTH, SOUTH, EAST, WEST, CENTER)</li>
  <li>Posizionare componenti in tutte le regioni</li>
  <li>Creare layout complesso</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Usare tutte le regioni è necessario per creare interfaccia strutturata.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta gestore: <code>setLayout(new BorderLayout());</code></li>
  <li>Aggiungi a tutte le regioni: <code>add(buttonNorth, BorderLayout.NORTH);<br>
add(buttonSouth, BorderLayout.SOUTH);<br>
add(buttonEast, BorderLayout.EAST);<br>
add(buttonWest, BorderLayout.WEST);<br>
add(panelCenter, BorderLayout.CENTER);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Tutte le regioni per struttura</li>
  <li><strong>✅ Ottimo:</strong> CENTER per contenuto principale, NORTH/SOUTH per intestazioni e pannelli, EAST/WEST per pannelli laterali</li>
  <li><strong>⚠️ Evita:</strong> Troppi componenti in una regione</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componenti saranno posizionati in tutte le regioni. Ogni componente prenderà sua regione. CENTER prenderà spazio rimanente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (304, 'it', 'BorderLayout Maestro: Usare Tutte le Regioni',
        'Imposta BorderLayout, aggiungi componenti a tutte le cinque regioni (NORTH, SOUTH, EAST, WEST, CENTER)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (303, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Configurare Modali Selezione Colore</h2>
<p class="intro">Configurare modali selezione rende tavolozza conveniente. Puoi mostrare solo schede necessarie, nascondere non necessarie. Senza questo, utente vedrà tutte le schede, anche se non sono necessarie.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setChooserPanels()</code> — configurare pannelli selezione</li>
  <li>Classe <code>ColorChooserComponentFactory</code> — fabbrica componenti</li>
  <li>Configurare modali selezione colore</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Configurare modali selezione è necessario per semplificare interfaccia selezione colore.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni pannelli predefiniti: <code>AbstractColorChooserPanel[] panels = ColorChooserComponentFactory.getDefaultChooserPanels();</code></li>
  <li>Imposta pannelli: <code>colorChooser.setChooserPanels(panels);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getDefaultChooserPanels()</code> per pannelli standard</li>
  <li><strong>✅ Ottimo:</strong> Creare pannelli selezione personalizzati, filtrare pannelli, lasciando solo necessari</li>
  <li><strong>⚠️ Evita:</strong> Rimuovere tutti i pannelli — utente non potrà selezionare colore</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Solo schede necessarie saranno in dialogo selezione colore. Puoi configurare quali modali selezione mostrare.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (303, 'it', 'Selezione Colore Maestro: Configurare Modali Selezione',
        'Ottieni pannelli standard via getDefaultChooserPanels(), impostali in colorChooser')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (306, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Aggiungere Spazi in BorderLayout</h2>
<p class="intro">Gli spazi rendono layout ordinato. Componenti non saranno premuti tra loro, ci sarà separazione visiva. Senza spazi, componenti saranno premuti ai bordi.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setHgap()</code> — spazio orizzontale</li>
  <li>Metodo <code>setVgap()</code> — spazio verticale</li>
  <li>Configurare spazi in BorderLayout</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gli spazi sono necessari per creare layout ordinato con separazione visiva di componenti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea gestore: <code>BorderLayout layout = new BorderLayout();</code></li>
  <li>Imposta spazi: <code>layout.setHgap(10);<br>
layout.setVgap(10);</code></li>
  <li>Imposta gestore: <code>setLayout(layout);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setHgap()</code> per spazi orizzontali, <code>setVgap()</code> per spazi verticali</li>
  <li><strong>✅ Ottimo:</strong> Usare stessi spazi, specificare spazi in costruttore</li>
  <li><strong>⚠️ Evita:</strong> Spazi troppo grandi — può essere eccessivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Spazi appariranno tra regioni. Componenti non saranno premuti tra loro. Layout sembrerà ordinato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (306, 'it', 'BorderLayout Maestro: Aggiungere Spazi',
        'Crea BorderLayout, imposta spazi orizzontale e verticale a 10')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (305, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Aggiungere Pannello Anteprima</h2>
<p class="intro">Il pannello anteprima mostra colore selezionato. Puoi vedere come colore sembrerà prima di applicare. Senza anteprima, dovrai applicare colore per vedere risultato.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setPreviewPanel()</code> — impostare pannello anteprima</li>
  <li>Creare pannello anteprima personalizzato</li>
  <li>Visualizzare colore selezionato</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il pannello anteprima è necessario per visualizzare colore selezionato prima di applicare.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea pannello: <code>JPanel previewPanel = new JPanel();<br>
previewPanel.setPreferredSize(new Dimension(100, 50));</code></li>
  <li>Imposta pannello: <code>colorChooser.setPreviewPanel(previewPanel);</code></li>
  <li>Aggiorna colore: <code>colorChooser.getSelectionModel().addChangeListener(e -> {<br>
&nbsp;&nbsp;previewPanel.setBackground(colorChooser.getColor());<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setPreviewPanel()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Aggiornare colore via ChangeListener, mostrare informazioni aggiuntive, usare pannello personalizzato</li>
  <li><strong>⚠️ Evita:</strong> Pannello troppo grande — può essere eccessivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Pannello anteprima apparirà in dialogo. Pannello mostrerà colore selezionato. Colore si aggiornerà quando si seleziona.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (305, 'it', 'Selezione Colore Maestro: Aggiungere Pannello Anteprima',
        'Crea JPanel per anteprima, imposta via setPreviewPanel(), aggiungi ChangeListener per aggiornamento colore')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (307, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Lavorare con Modello Selezione Colore</h2>
<p class="intro">Il modello permette gestire selezione. Puoi ottenere modello, impostare colore programmaticamente, tracciare cambiamenti. Senza modello, non puoi gestire selezione.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getSelectionModel()</code> — ottenere modello</li>
  <li>Lavorare con ColorSelectionModel</li>
  <li>Gestire selezione colore</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il modello è necessario per gestione programmatica selezione colore.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni modello: <code>ColorSelectionModel model = colorChooser.getSelectionModel();</code></li>
  <li>Imposta colore: <code>model.setSelectedColor(Color.RED);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getSelectionModel()</code> per ottenere</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>setSelectedColor()</code> per impostare, usare <code>getSelectedColor()</code> per ottenere, usare <code>addChangeListener()</code> per tracciare</li>
  <li><strong>⚠️ Evita:</strong> Ignorare modello</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Potrai gestire selezione via modello. Colore può essere impostato programmaticamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (307, 'it', 'Selezione Colore Maestro: Lavorare con Modello',
        'Ottieni modello via getSelectionModel(), imposta colore RED via setSelectedColor()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (308, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Ottenere Colore Selezione</h2>
<p class="intro">Ottenere colore permette usare selezione. Puoi ottenere colore selezionato, applicarlo a componenti. Senza ottenere colore, selezione non avrà effetto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getColor()</code> — ottenere colore</li>
  <li>Metodo <code>showDialog()</code> — mostrare dialogo</li>
  <li>Ottenere colore selezionato</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Ottenere colore è necessario per applicare colore selezionato a componenti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Mostra dialogo: <code>Color color = JColorChooser.showDialog(frame, "Scegli colore", Color.WHITE);</code></li>
  <li>Usa colore: <code>if (color != null) {<br>
&nbsp;&nbsp;component.setBackground(color);<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>showDialog()</code> per mostrare</li>
  <li><strong>✅ Ottimo:</strong> Verificare null per cancellazione, usare colore iniziale, applicare colore a componenti</li>
  <li><strong>⚠️ Evita:</strong> Ignorare null</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Dialogo selezione colore apparirà. Puoi selezionare colore e ottenerlo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (308, 'it', 'Selezione Colore Maestro: Ottenere Colore Selezione',
        'Mostra dialogo via showDialog() con colore iniziale WHITE, verifica risultato per null')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (309, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Configurare Modello Colore</h2>
<p class="intro">Il modello colore determina selezione. Puoi configurare come colore è selezionato, migliorare funzionalità. Senza configurazione, modello sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setColorSelectionModel()</code> — impostare modello</li>
  <li>Configurare selezione colore</li>
  <li>Migliorare funzionalità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Configurare modello colore è necessario per gestione estesa selezione colore.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea modello: <code>DefaultColorSelectionModel model = new DefaultColorSelectionModel();<br>
model.setSelectedColor(Color.RED);</code></li>
  <li>Imposta modello: <code>colorChooser.setColorSelectionModel(model);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setColorSelectionModel()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare DefaultColorSelectionModel, configurare colore iniziale, usare per migliorare funzionalità</li>
  <li><strong>⚠️ Evita:</strong> Modello errato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Modello colore sarà configurato. Puoi configurare selezione colore.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (309, 'it', 'Selezione Colore Maestro: Configurare Modello Colore',
        'Crea DefaultColorSelectionModel, imposta colore RED, imposta modello via setColorSelectionModel()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (310, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 10: Inserire Icona in JTextPane</h2>
<p class="intro">L''icona migliora aspetto visivo. Puoi inserire immagine in testo, migliorare formattazione. Senza icona, testo sarà solo testo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>insertIcon()</code> — inserire icona</li>
  <li>Inserire immagini in testo</li>
  <li>Migliorare aspetto visivo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Inserire icona è necessario per migliorare aspetto visivo di testo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea icona: <code>ImageIcon icon = new ImageIcon("icon.png");</code></li>
  <li>Inserisci icona: <code>textPane.insertIcon(icon);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>insertIcon()</code> per inserire</li>
  <li><strong>✅ Ottimo:</strong> Usare ImageIcon per creare, usare per migliorare aspetto, migliorare formattazione</li>
  <li><strong>⚠️ Evita:</strong> Icone troppo grandi</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Icona apparirà in testo. Puoi migliorare aspetto visivo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (310, 'it', 'Pannello Testo Maestro: Inserire Icona', 'Crea ImageIcon "icon.png", inserisci via insertIcon()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (311, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 11: Ottenere Documento con Stili</h2>
<p class="intro">Il documento con stili permette gestire stili. Puoi ottenere accesso a stili, cambiare formattazione, migliorare funzionalità. Senza accesso, non puoi gestire stili.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getStyledDocument()</code> — ottenere documento con stili</li>
  <li>Accesso a stili documento</li>
  <li>Migliorare funzionalità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''accesso a documento con stili è necessario per gestire stili e formattazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni documento: <code>StyledDocument doc = textPane.getStyledDocument();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getStyledDocument()</code> per ottenere</li>
  <li><strong>✅ Ottimo:</strong> Usare per gestire stili, usare per formattazione, migliorare funzionalità</li>
  <li><strong>⚠️ Evita:</strong> Cambiare senza necessità</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Potrai ottenere accesso a documento con stili. Puoi gestire stili, formattazione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (311, 'it', 'Pannello Testo Maestro: Ottenere Documento con Stili',
        'Ottieni documento con stili via getStyledDocument()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (312, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 12: Creare JTextPane Solo Lettura</h2>
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
  <li>Disabilita modifica: <code>textPane.setEditable(false);</code></li>
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
<p>Pannello testo sarà solo lettura. Contenuto non può essere cambiato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (312, 'it', 'Pannello Testo Maestro: Rendere Solo Lettura', 'Disabilita modifica via setEditable(false)')
ON CONFLICT (task_id, language_code) DO NOTHING;
