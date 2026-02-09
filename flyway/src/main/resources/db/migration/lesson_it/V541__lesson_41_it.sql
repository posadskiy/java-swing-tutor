-- Flyway migration V5: Lesson 41
-- This migration contains lesson, tasks, and documentation for lesson 41

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (345, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Allineare Componenti in Riga con BoxLayout</h2>
<p class="intro">BoxLayout è perfetto per layout lineari semplici. Barre strumenti, liste pulsanti, menu verticali — tutto questo richiede BoxLayout. È più semplice di GridBagLayout, ma più flessibile di FlowLayout.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>BoxLayout</code> — layout lineare</li>
  <li>Costanti <code>X_AXIS</code> e <code>Y_AXIS</code> — direzione</li>
  <li>Creare layout verticale/orizzontale</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>BoxLayout è necessario per creare layout lineari semplici.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta gestore: <code>setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));</code></li>
  <li>Aggiungi componenti: <code>add(button1);<br>
add(button2);<br>
add(button3);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Y_AXIS per layout verticale</li>
  <li><strong>✅ Ottimo:</strong> Usare X_AXIS per layout orizzontale, aggiungere Box.createGlue() per allungamento</li>
  <li><strong>⚠️ Evita:</strong> Troppi componenti — può non entrare</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componenti si allineeranno in riga. Verticalmente o orizzontalmente — come configuri.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (345, 'it', 'BoxLayout Principiante: Allineare Componenti in Riga',
        'Imposta BoxLayout con Y_AXIS e aggiungi tre pulsanti')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (346, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Aggiungere Elemento Allungabile in BoxLayout</h2>
<p class="intro">Gli elementi allungabili rendono layout flessibile. Puoi premere componenti ai bordi, creare spazi tra loro. Senza questo, componenti saranno posizionati strettamente insieme.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>Box.createGlue()</code> — creare elemento allungabile</li>
  <li>Metodo <code>Box.createRigidArea()</code> — creare spazio fisso</li>
  <li>Creare spazi in BoxLayout</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gli elementi allungabili sono necessari per creare layout flessibile.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi componente: <code>add(button1);</code></li>
  <li>Aggiungi elemento allungabile: <code>add(Box.createGlue());</code></li>
  <li>Aggiungi altro componente: <code>add(button2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createGlue()</code> per spazio allungabile</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>createRigidArea(Dimension)</code> per spazio fisso, usare <code>createHorizontalStrut(int)</code> per spazio orizzontale, usare <code>createVerticalStrut(int)</code> per spazio verticale</li>
  <li><strong>⚠️ Evita:</strong> Troppi spazi — può essere eccessivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Spazio allungabile apparirà tra componenti. Quando cambia dimensione finestra, spazio si allungherà. Componenti saranno premuti ai bordi.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (346, 'it', 'BoxLayout Maestro: Aggiungere Elemento Allungabile',
        'Aggiungi pulsante, aggiungi createGlue(), aggiungi altro pulsante')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (348, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Aggiungere Spazi in GridLayout</h2>
<p class="intro">Gli spazi rendono griglia ordinata. Componenti non saranno premuti tra loro, ci sarà separazione visiva. Senza spazi, griglia sembrerà sovraccarica.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setHgap()</code> — spazio orizzontale</li>
  <li>Metodo <code>setVgap()</code> — spazio verticale</li>
  <li>Configurare spazi in griglia</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gli spazi sono necessari per creare griglia ordinata con separazione visiva.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea gestore: <code>GridLayout layout = new GridLayout(2, 3);</code></li>
  <li>Imposta spazi: <code>layout.setHgap(10);<br>
layout.setVgap(10);</code></li>
  <li>Imposta gestore: <code>setLayout(layout);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setHgap()</code> per spazi orizzontali, <code>setVgap()</code> per spazi verticali</li>
  <li><strong>✅ Ottimo:</strong> Usare stessi spazi per uniformità, specificare spazi in costruttore</li>
  <li><strong>⚠️ Evita:</strong> Spazi troppo grandi — può essere eccessivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Spazi appariranno tra componenti. Componenti non saranno premuti tra loro. Griglia sembrerà ordinata.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (348, 'it', 'GridLayout Maestro: Aggiungere Spazi',
        'Crea GridLayout (2,3), imposta spazi orizzontale e verticale a 10')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (347, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Allineare Componenti in BoxLayout</h2>
<p class="intro">Allineare componenti rende interfaccia ordinata. Componenti saranno allineati uguali, interfaccia sembrerà professionale. Senza allineamento, componenti saranno posizionati caoticamente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodi <code>setAlignmentX()</code> e <code>setAlignmentY()</code> — allineamento</li>
  <li>Costanti allineamento</li>
  <li>Configurare allineamento componenti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Allineare componenti è necessario per creare interfaccia ordinata.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Allinea per X: <code>button.setAlignmentX(Component.CENTER_ALIGNMENT);</code></li>
  <li>Allinea per Y: <code>button.setAlignmentY(Component.CENTER_ALIGNMENT);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> CENTER_ALIGNMENT per centrare</li>
  <li><strong>✅ Ottimo:</strong> Usare LEFT_ALIGNMENT per allineamento sinistra, usare RIGHT_ALIGNMENT per allineamento destra, usare stesso allineamento per tutti i componenti</li>
  <li><strong>⚠️ Evita:</strong> Diverso allineamento per componenti — può essere disordinato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componenti saranno allineati. Tutti i componenti avranno stesso allineamento. Interfaccia sembrerà ordinata.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (347, 'it', 'BoxLayout Maestro: Allineare Componenti',
        'Imposta setAlignmentX(CENTER_ALIGNMENT) e setAlignmentY(CENTER_ALIGNMENT) per pulsante')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (349, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Configurare Righe e Colonne Dinamiche in GridLayout</h2>
<p class="intro">Le dimensioni dinamiche rendono griglia adattiva. Puoi specificare numero di righe o colonne, e altro sarà calcolato automaticamente. Senza questo, devi specificare entrambe le dimensioni.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Usare 0 per calcolo automatico</li>
  <li>Determinazione dinamica dimensione griglia</li>
  <li>Creare layout adattivi</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le dimensioni dinamiche sono necessarie per creare layout adattivi.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea con colonne automatiche: <code>GridLayout layout = new GridLayout(3, 0);</code></li>
  <li>O con righe automatiche: <code>GridLayout layout = new GridLayout(0, 4);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> 0 per calcolo automatico</li>
  <li><strong>✅ Ottimo:</strong> Specificare righe, colonne saranno calcolate, specificare colonne, righe saranno calcolate, usare per layout adattivi</li>
  <li><strong>⚠️ Evita:</strong> Entrambe le dimensioni 0 — può essere imprevedibile</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Griglia sarà adattiva. Numero di righe o colonne sarà calcolato automaticamente per numero di componenti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (349, 'it', 'GridLayout Maestro: Configurare Righe e Colonne Dinamiche',
        'Crea GridLayout con 3 righe e 0 colonne (calcolo automatico)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (352, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Aggiungere Colla in BoxLayout</h2>
<p class="intro">La colla allunga spazio. Puoi aggiungere spazio allungabile tra componenti, migliorare layout. Senza colla, componenti saranno stretti insieme.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>Box.createHorizontalGlue()</code> — colla orizzontale</li>
  <li>Metodo <code>Box.createVerticalGlue()</code> — colla verticale</li>
  <li>Allungare spazio</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La colla è necessaria per creare spazio allungabile tra componenti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea colla: <code>Component glue = Box.createHorizontalGlue();</code></li>
  <li>Aggiungi colla: <code>container.add(glue);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createHorizontalGlue()</code> per orizzontale</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>createVerticalGlue()</code> per verticale, usare per allungamento, migliorare layout</li>
  <li><strong>⚠️ Evita:</strong> Troppa colla</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Spazio allungabile apparirà tra componenti. Puoi migliorare layout.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (352, 'it', 'BoxLayout Maestro: Aggiungere Colla',
        'Crea colla orizzontale via Box.createHorizontalGlue(), aggiungi a contenitore')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (350, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Abilitare Selezione Multipla in JFileChooser</h2>
<p class="intro">La selezione multipla accelera lavoro. Puoi selezionare più file alla volta, migliorare prestazioni. Senza selezione multipla, devi selezionare uno per uno.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setMultiSelectionEnabled()</code> — abilitare selezione multipla</li>
  <li>Selezionare più file</li>
  <li>Migliorare funzionalità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La selezione multipla è necessaria per accelerare lavoro con più file.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Abilita selezione multipla: <code>fileChooser.setMultiSelectionEnabled(true);</code></li>
  <li>Ottieni file selezionati: <code>File[] files = fileChooser.getSelectedFiles();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMultiSelectionEnabled(true)</code> per abilitare</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>getSelectedFiles()</code> per ottenere, usare per migliorare funzionalità, migliorare prestazioni</li>
  <li><strong>⚠️ Evita:</strong> Abilitare senza necessità</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Potrai selezionare più file. Puoi selezionare più file simultaneamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (350, 'it', 'Selezione File Maestro: Abilitare Selezione Multipla',
        'Abilita selezione multipla via setMultiSelectionEnabled(true), ottieni file via getSelectedFiles()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (353, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Aggiungere Montante in BoxLayout</h2>
<p class="intro">Il montante crea distanza fissa. Puoi aggiungere spazio fisso tra componenti, migliorare layout. Senza montante, componenti saranno stretti insieme.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>Box.createHorizontalStrut()</code> — montante orizzontale</li>
  <li>Metodo <code>Box.createVerticalStrut()</code> — montante verticale</li>
  <li>Distanza fissa tra componenti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il montante è necessario per creare distanza fissa tra componenti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea montante: <code>Component strut = Box.createHorizontalStrut(20);</code></li>
  <li>Aggiungi montante: <code>container.add(strut);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createHorizontalStrut()</code> per orizzontale</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>createVerticalStrut()</code> per verticale, usare per distanza fissa, migliorare layout</li>
  <li><strong>⚠️ Evita:</strong> Montanti troppo grandi</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Distanza fissa apparirà tra componenti. Puoi migliorare layout.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (353, 'it', 'BoxLayout Maestro: Aggiungere Montante',
        'Crea montante orizzontale 20 via Box.createHorizontalStrut(20), aggiungi a contenitore')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (351, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Aggiungere Filtro File in JFileChooser</h2>
<p class="intro">Il filtro file migliora selezione. Puoi mostrare solo tipi di file necessari, migliorare esperienza utente. Senza filtro, tutti i file saranno mostrati.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>FileNameExtensionFilter</code> — filtro estensioni</li>
  <li>Metodo <code>addChoosableFileFilter()</code> — aggiungere filtro</li>
  <li>Filtrare file per tipo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il filtro file è necessario per migliorare selezione di tipi di file necessari.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea filtro: <code>FileNameExtensionFilter filter = new FileNameExtensionFilter("Immagini", "jpg", "png", "gif");</code></li>
  <li>Aggiungi filtro: <code>fileChooser.addChoosableFileFilter(filter);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> FileNameExtensionFilter per filtro</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>addChoosableFileFilter()</code> per aggiungere, usare per filtrare, migliorare esperienza utente</li>
  <li><strong>⚠️ Evita:</strong> Filtri troppo rigorosi</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Filtro sarà in dialogo selezione file. Puoi selezionare tipo di file per visualizzazione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (351, 'it', 'Selezione File Maestro: Aggiungere Filtro File',
        'Crea FileNameExtensionFilter per "jpg", "png", aggiungi via addChoosableFileFilter()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (355, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 11: Aggiungere Area Rigida in BoxLayout</h2>
<p class="intro">L''area rigida crea spazio fisso. Puoi aggiungere area fissa tra componenti, migliorare layout. Senza area, componenti saranno stretti insieme.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>Box.createRigidArea()</code> — creare area rigida</li>
  <li>Area fissa tra componenti</li>
  <li>Migliorare layout</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''area rigida è necessaria per creare spazio fisso tra componenti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea area: <code>Component area = Box.createRigidArea(new Dimension(20, 20));</code></li>
  <li>Aggiungi area: <code>container.add(area);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>createRigidArea()</code> per creare</li>
  <li><strong>✅ Ottimo:</strong> Usare Dimension per dimensione, usare per spazio fisso, migliorare layout</li>
  <li><strong>⚠️ Evita:</strong> Aree troppo grandi</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Area fissa apparirà tra componenti. Puoi migliorare layout.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (355, 'it', 'BoxLayout Maestro: Aggiungere Area Rigida',
        'Crea area rigida 20x20 via Box.createRigidArea(new Dimension(20, 20)), aggiungi a contenitore')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (354, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 10: Impostare Directory Corrente in JFileChooser</h2>
<p class="intro">La directory corrente determina posizione iniziale. Puoi impostare directory iniziale, migliorare navigazione. Senza impostazione, directory sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setCurrentDirectory()</code> — impostare directory corrente</li>
  <li>Gestire directory iniziale</li>
  <li>Migliorare esperienza utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Impostare directory corrente è necessario per migliorare navigazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea file: <code>File dir = new File("/path/to/directory");</code></li>
  <li>Imposta directory: <code>fileChooser.setCurrentDirectory(dir);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setCurrentDirectory()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare File per directory, usare per migliorare navigazione, migliorare esperienza utente</li>
  <li><strong>⚠️ Evita:</strong> Usare directory inesistente</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Dialogo si aprirà in directory specificata. Puoi migliorare navigazione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (354, 'it', 'Selezione File Maestro: Impostare Directory Corrente',
        'Crea File per directory, imposta via setCurrentDirectory()')
ON CONFLICT (task_id, language_code) DO NOTHING;
