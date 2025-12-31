-- Flyway migration V5: Lesson 30
-- This migration contains lesson, tasks, and documentation for lesson 30

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (244, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare Tabella di Dati</h2>
<p class="intro">Le tabelle mostrano dati strutturati. Elenchi di utenti, prodotti, ordini — tutto questo è conveniente mostrare in tabella. Le tabelle rendono i dati leggibili e organizzati.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>JTable</code> — tabella per mostrare dati</li>
  <li>Creare tabella con dati</li>
  <li>Mostrare dati in forma tabulare</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le tabelle sono necessarie per mostrare dati strutturati in formato conveniente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea dati: <code>String[] columns = {"Nome", "Età", "Città"};</code> e <code>Object[][] data = {{"Giovanni", 25, "Roma"}, {"Maria", 30, "Milano"}};</code></li>
  <li>Crea tabella: <code>JTable table = new JTable(data, columns);</code></li>
  <li>Avvolgi in JScrollPane: <code>JScrollPane scrollPane = new JScrollPane(table);</code></li>
  <li>Aggiungi al modulo: <code>add(scrollPane);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> JScrollPane per lo scorrimento</li>
  <li><strong>✅ Ottimo:</strong> Creare con array di dati e colonne, usare TableModel per dati complessi</li>
  <li><strong>⚠️ Evita:</strong> Senza JScrollPane — le tabelle grandi non scorrono</li>
</ul>
<p><strong>Importante:</strong> Sempre avvolgere in JScrollPane per lo scorrimento. Le celle possono essere modificate (abilitato di default).</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà una tabella con dati. Questa è una tabella con righe e colonne. I dati sono mostrati in celle. Puoi scorrere se ci sono molti dati.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (244, 'it', 'Tabella Principiante: Creare Tabella di Dati',
        'Crea tabella con colonne "Nome", "Età" e due righe di dati, avvolgi in JScrollPane e aggiungi al modulo')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (245, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Aggiungere Menu alla Finestra</h2>
<p class="intro">La barra del menu nella finestra crea il menu principale dell''applicazione. File, Modifica, Visualizza — tutti i comandi standard sono nel menu. Senza menu, i comandi saranno sparsi tra i pulsanti.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setJMenuBar()</code> — impostare barra del menu</li>
  <li>Aggiungere menu alla finestra</li>
  <li>Creare menu principale dell''applicazione</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La barra del menu è necessaria per creare il menu principale dell''applicazione e organizzare comandi.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea barra del menu: <code>JMenuBar menuBar = new JMenuBar();</code></li>
  <li>Aggiungi menu: <code>menuBar.add(fileMenu);</code></li>
  <li>Imposta nella finestra: <code>frame.setJMenuBar(menuBar);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setJMenuBar()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Aggiungere menu prima di impostare, usare nomi menu standard (File, Modifica, Visualizza)</li>
  <li><strong>⚠️ Evita:</strong> Troppi menu — può essere sovraccaricato</li>
</ul>
<p><strong>Importante:</strong> La barra del menu appare in alto nella finestra. Raggruppa comandi correlati.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La barra del menu apparirà in alto nella finestra. Puoi cliccare sul menu e vedere elementi.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (245, 'it', 'Barra del Menu Maestro: Aggiungere Menu alla Finestra',
        'Crea JMenuBar, aggiungi menu tramite add(), imposta nella finestra tramite setJMenuBar()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (246, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Aggiungere Menu di Aiuto</h2>
<p class="intro">Il menu di aiuto fornisce accesso all''aiuto. Aiuto, informazioni sul programma, scorciatoie — tutto questo è nel menu di aiuto. Senza di esso, l''utente non potrà ottenere aiuto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Creare menu di aiuto</li>
  <li>Aggiungere elementi di aiuto</li>
  <li>Posizionamento standard del menu di aiuto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il menu di aiuto è necessario per fornire accesso all''aiuto e informazioni sul programma.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea menu di aiuto: <code>JMenu helpMenu = new JMenu("Aiuto");</code></li>
  <li>Aggiungi elementi: <code>helpMenu.add(new JMenuItem("Contenuti"));</code> e <code>helpMenu.add(new JMenuItem("Informazioni"));</code></li>
  <li>Aggiungi alla barra del menu: <code>menuBar.add(helpMenu);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Nome standard "Aiuto"</li>
  <li><strong>✅ Ottimo:</strong> Posizionare menu di aiuto a destra, aggiungere elementi standard (Contenuti, Informazioni), usare <code>setHelpMenu()</code> per posizionamento automatico</li>
  <li><strong>⚠️ Evita:</strong> Posizionare in luogo non standard — può essere inaspettato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il menu di aiuto apparirà nella barra del menu. Il menu sarà a destra. Puoi aggiungere elementi di aiuto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (246, 'it', 'Barra del Menu Maestro: Aggiungere Menu di Aiuto',
        'Crea JMenu "Aiuto", aggiungi due elementi menu, aggiungi a menuBar')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (247, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Posizionare Menu di Aiuto a Destra</h2>
<p class="intro">Posizionare menu di aiuto a destra è standard. Gli utenti si aspettano di trovare il menu di aiuto a destra. Senza posizionamento standard, l''interfaccia sarà inaspettata.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Posizionamento standard del menu di aiuto</li>
  <li>Metodo <code>setHelpMenu()</code> — impostare menu di aiuto</li>
  <li>Creare interfaccia standard</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il posizionamento standard migliora il riconoscimento dell''interfaccia e soddisfa le aspettative degli utenti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea menu di aiuto: <code>JMenu helpMenu = new JMenu("Aiuto");</code></li>
  <li>Imposta come menu di aiuto: <code>menuBar.setHelpMenu(helpMenu);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setHelpMenu()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Posizionare menu di aiuto a destra, usare nome standard</li>
  <li><strong>⚠️ Evita:</strong> Posizionare in luogo non standard</li>
</ul>
<p><strong>Importante:</strong> Seguire standard dell''interfaccia.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il menu di aiuto sarà a destra. Il menu si posizionerà automaticamente in luogo standard.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (247, 'it', 'Barra del Menu Maestro: Posizionare Menu di Aiuto a Destra',
        'Crea JMenu "Aiuto", imposta tramite setHelpMenu()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (248, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Aggiungere Bordo alla Barra del Menu</h2>
<p class="intro">Il bordo crea separazione visiva. Puoi evidenziare la barra del menu, creare cornice, migliorare leggibilità. Senza bordo, la barra del menu si fonderà con lo sfondo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setBorder()</code> — impostare bordo</li>
  <li>Creare separazione visiva</li>
  <li>Migliorare aspetto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il bordo migliora la percezione visiva e la leggibilità della barra del menu.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea bordo: <code>Border border = BorderFactory.createMatteBorder(0, 0, 1, 0, Color.GRAY);</code></li>
  <li>Imposta bordo: <code>menuBar.setBorder(border);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> BorderFactory per creare</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>createMatteBorder()</code> per opaco, usare <code>createLineBorder()</code> per linea, usare per separazione visiva</li>
  <li><strong>⚠️ Evita:</strong> Bordo troppo spesso — può essere eccessivo</li>
</ul>
<p><strong>Importante:</strong> Rendi il bordo sottile.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La barra del menu avrà un bordo. La barra del menu sarà evidenziata con cornice.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (248, 'it', 'Barra del Menu Maestro: Aggiungere Bordo',
        'Crea bordo opaco tramite BorderFactory.createMatteBorder(), imposta tramite setBorder()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (249, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Aggiungere Menu di Aiuto (Esteso)</h2>
<p class="intro">Il menu di aiuto migliora l''accessibilità. Puoi fornire aiuto, assistere l''utente. Senza menu di aiuto, l''utente può essere perso.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Creare menu di aiuto</li>
  <li>Aggiungere elementi di aiuto</li>
  <li>Migliorare accessibilità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il menu di aiuto è necessario per fornire accesso all''aiuto e migliorare l''accessibilità dell''applicazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea menu: <code>JMenu helpMenu = new JMenu("Aiuto");</code></li>
  <li>Aggiungi elementi: <code>helpMenu.add(new JMenuItem("Informazioni"));</code> e <code>helpMenu.add(new JMenuItem("Aiuto"));</code></li>
  <li>Aggiungi alla barra del menu: <code>menuBar.add(helpMenu);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Creare menu di aiuto</li>
  <li><strong>✅ Ottimo:</strong> Aggiungere elementi utili, usare per accessibilità, posizionare a destra</li>
  <li><strong>⚠️ Evita:</strong> Menu di aiuto senza contenuto utile</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il menu di aiuto apparirà nella barra del menu. Puoi ottenere aiuto e assistenza.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (249, 'it', 'Barra del Menu Maestro: Aggiungere Menu di Aiuto',
        'Crea JMenu "Aiuto", aggiungi due elementi menu, aggiungi alla barra del menu')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (250, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Ottenere Menu Popup</h2>
<p class="intro">Il menu popup permette personalizzazione. Puoi accedere al menu, configurarlo, migliorare funzionalità. Senza accesso, non puoi personalizzare.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getPopupMenu()</code> — ottenere menu popup</li>
  <li>Accesso al menu popup</li>
  <li>Personalizzazione del menu</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''accesso al menu popup è necessario per personalizzazione e configurazione del menu.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni menu: <code>JPopupMenu popup = menu.getPopupMenu();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getPopupMenu()</code> per ottenere</li>
  <li><strong>✅ Ottimo:</strong> Usare per personalizzazione, usare per configurazione, migliorare funzionalità</li>
  <li><strong>⚠️ Evita:</strong> Cambiare senza necessità</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Puoi accedere al menu popup. Puoi personalizzare il menu.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (250, 'it', 'Menu Maestro: Ottenere Menu Popup', 'Ottieni menu popup tramite getPopupMenu()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (251, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Aggiungere Separatore al Menu</h2>
<p class="intro">Il separatore migliora l''organizzazione. Puoi raggruppare elementi del menu, migliorare leggibilità. Senza separatore, tutti gli elementi saranno insieme.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>addSeparator()</code> — aggiungere separatore</li>
  <li>Raggruppare elementi del menu</li>
  <li>Migliorare organizzazione</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I separatori aiutano a raggruppare visivamente elementi del menu e migliorano la leggibilità.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi separatore: <code>menu.addSeparator();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addSeparator()</code> per aggiungere</li>
  <li><strong>✅ Ottimo:</strong> Usare per raggruppare, usare per migliorare organizzazione, migliorare leggibilità</li>
  <li><strong>⚠️ Evita:</strong> Troppi separatori</li>
</ul>
<p><strong>Importante:</strong> Fai gruppi logici. Non abusare.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un separatore tra elementi del menu. Puoi raggruppare elementi.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (251, 'it', 'Menu Maestro: Aggiungere Separatore', 'Aggiungi separatore tramite addSeparator()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (252, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Impostare Ritardo del Menu</h2>
<p class="intro">Il ritardo influenza il tempo di apertura. Puoi impostare ritardo prima di aprire il menu, migliorare prestazioni. Senza impostazione, il ritardo sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setDelay()</code> — impostare ritardo</li>
  <li>Gestire tempo di apertura del menu</li>
  <li>Migliorare esperienza utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Configurare il ritardo permette di ottimizzare le prestazioni e migliorare l''esperienza utente.</p>
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
  <li><strong>✅ Ottimo:</strong> Usare valori ragionevoli (100-500 ms), usare per migliorare prestazioni, migliorare esperienza utente</li>
  <li><strong>⚠️ Evita:</strong> Ritardo troppo grande o piccolo</li>
</ul>
<p><strong>Importante:</strong> Rendi il ritardo confortevole.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il menu si aprirà con ritardo impostato. Puoi migliorare le prestazioni.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (252, 'it', 'Menu Maestro: Impostare Ritardo', 'Imposta ritardo 200 ms tramite setDelay()')
ON CONFLICT (task_id, language_code) DO NOTHING;
