-- Flyway migration V5: Lesson 24
-- This migration contains lesson, tasks, and documentation for lesson 24

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (196, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare Barra dei Menu</h2>
<p class="intro">La barra dei menu è la navigazione dell''applicazione. File, Modifica, Visualizza, Aiuto — questi sono menu standard. Senza menu, l''utente non potrà trovare tutte le funzioni dell''applicazione.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>JMenuBar</code> — barra dei menu</li>
  <li>Creare barra dei menu</li>
  <li>Aggiungere menu alla barra</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La barra dei menu è necessaria per organizzare la navigazione e accedere alle funzioni dell''applicazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea barra dei menu: <code>JMenuBar menuBar = new JMenuBar();</code></li>
  <li>Crea menu: <code>JMenu fileMenu = new JMenu("File");</code></li>
  <li>Aggiungi menu alla barra: <code>menuBar.add(fileMenu);</code></li>
  <li>Imposta barra dei menu nella finestra: <code>frame.setJMenuBar(menuBar);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Creare barra dei menu, poi aggiungere menu</li>
  <li><strong>✅ Ottimo:</strong> Menu standard: File, Modifica, Visualizza, Aiuto</li>
  <li><strong>⚠️ Evita:</strong> Troppi menu — sovraccarica l''interfaccia</li>
</ul>
<p><strong>Importante:</strong> Puoi aggiungere più menu. I menu sono disposti orizzontalmente nella barra.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà una barra dei menu in alto nella finestra. Questo è un pannello orizzontale con nomi di menu. Cliccando su un menu, si aprirà un elenco a discesa di elementi.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (196, 'it', 'Barra dei Menu Principiante: Creare Menu Applicazione',
        'Crea una barra dei menu, aggiungi menu "File" e impostala nella finestra')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (197, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Politica di Scorrimento</h2>
<p class="intro">La politica di scorrimento determina quando mostrare le barre di scorrimento. Puoi mostrare sempre, nascondere quando non servono, o non mostrare mai. Senza configurazione, le barre appariranno quando servono.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setHorizontalScrollBarPolicy()</code> — politica orizzontale</li>
  <li>Metodo <code>setVerticalScrollBarPolicy()</code> — politica verticale</li>
  <li>Configurare visualizzazione barre di scorrimento</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La politica di scorrimento ti permette di controllare la visibilità delle barre di scorrimento e ottimizzare l''uso dello spazio.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta politica orizzontale: <code>scrollPane.setHorizontalScrollBarPolicy(ScrollPaneConstants.ALWAYS);</code></li>
  <li>Imposta politica verticale: <code>scrollPane.setVerticalScrollBarPolicy(ScrollPaneConstants.AS_NEEDED);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> AS_NEEDED per visualizzazione automatica</li>
  <li><strong>✅ Ottimo:</strong> Usare ALWAYS per visualizzazione costante, usare NEVER per nascondere, combinare diverse politiche</li>
  <li><strong>⚠️ Evita:</strong> ALWAYS quando non servono — occupa spazio</li>
</ul>
<p><strong>Importante:</strong> AS_NEEDED — mostrare quando serve, ALWAYS — mostrare sempre, NEVER — non mostrare mai.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Le barre di scorrimento saranno mostrate secondo la politica. Possono essere sempre visibili, apparire quando servono, o essere nascoste.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (197, 'it', 'Pannello Scorrevole Maestro: Configurare Politica di Scorrimento',
        'Imposta politica orizzontale ALWAYS, verticale AS_NEEDED')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (198, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Lavorare con Viewport</h2>
<p class="intro">Il viewport gestisce l''area visibile. Puoi scorrere alla posizione necessaria, impostare posizione iniziale. Senza viewport, non puoi gestire l''area visibile.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getViewport()</code> — ottenere viewport</li>
  <li>Metodo <code>setViewPosition()</code> — impostare posizione</li>
  <li>Gestire area visibile</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il viewport ti permette di gestire programmaticamente l''area visibile e la posizione di scorrimento.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni viewport: <code>JViewport viewport = scrollPane.getViewport();</code></li>
  <li>Imposta posizione: <code>viewport.setViewPosition(new Point(0, 100));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getViewport()</code> per ottenere, <code>setViewPosition()</code> per posizione</li>
  <li><strong>✅ Ottimo:</strong> Usare per scorrimento, usare per posizione iniziale</li>
  <li><strong>⚠️ Evita:</strong> Impostare fuori dai limiti — può essere inaspettato</li>
</ul>
<p><strong>Importante:</strong> <code>getViewPosition()</code> — ottenere posizione.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>L''area visibile verrà scrollata. Puoi impostare la posizione iniziale.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (198, 'it', 'Pannello Scorrevole Maestro: Lavorare con Viewport',
        'Ottieni viewport tramite getViewport(), imposta posizione (0, 100) tramite setViewPosition()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (199, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Scorrimento Orizzontale</h2>
<p class="intro">La politica di scorrimento determina la visibilità. Puoi mostrare sempre, mostrare quando serve, o non mostrare mai. Senza configurazione, ci sarà politica standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setHorizontalScrollBarPolicy()</code> — politica di scorrimento orizzontale</li>
  <li>Costanti di politica (ALWAYS, AS_NEEDED, NEVER)</li>
  <li>Gestire visibilità scorrimento</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Configurare lo scorrimento orizzontale ti permette di controllare la visualizzazione della barra di scorrimento in base al contenuto.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta politica: <code>scrollPane.setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> AS_NEEDED per quando serve</li>
  <li><strong>✅ Ottimo:</strong> Usare ALWAYS per sempre, usare NEVER per mai, adattare al contenuto</li>
  <li><strong>⚠️ Evita:</strong> ALWAYS per tutto — può essere eccessivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Lo scorrimento orizzontale sarà secondo la politica. Puoi gestire la visibilità dello scorrimento.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (199, 'it', 'Pannello Scorrevole Maestro: Configurare Scorrimento Orizzontale',
        'Imposta politica AS_NEEDED tramite setHorizontalScrollBarPolicy()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (200, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Bordo Viewport</h2>
<p class="intro">Il bordo del viewport crea separazione visiva. Puoi evidenziare area di visualizzazione, migliorare leggibilità. Senza bordo, l''area sarà senza cornice.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setViewportBorder()</code> — impostare bordo</li>
  <li>Creare separazione visiva</li>
  <li>Migliorare aspetto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il bordo del viewport aiuta a separare visivamente l''area di visualizzazione e migliorare la leggibilità.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea bordo: <code>Border border = BorderFactory.createLineBorder(Color.GRAY);</code></li>
  <li>Imposta bordo: <code>scrollPane.setViewportBorder(border);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> BorderFactory per creare</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>createLineBorder()</code> per linea, usare <code>createMatteBorder()</code> per opaco, usare per separazione visiva</li>
  <li><strong>⚠️ Evita:</strong> Bordo troppo spesso — può essere eccessivo</li>
</ul>
<p><strong>Importante:</strong> Rendi il bordo sottile.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il viewport avrà un bordo. L''area di visualizzazione sarà evidenziata con una cornice.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (200, 'it', 'Pannello Scorrevole Maestro: Aggiungere Bordo Viewport',
        'Crea bordo tramite BorderFactory.createLineBorder(), imposta tramite setViewportBorder()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (201, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Intestazione Colonna</h2>
<p class="intro">L''intestazione di colonna migliora l''informatività. Puoi mostrare intestazioni per tabelle, migliorare comprensione. Senza intestazione, la tabella sarà senza etichette.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setColumnHeaderView()</code> — impostare intestazione colonna</li>
  <li>Intestazione per tabelle</li>
  <li>Migliorare informatività</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''intestazione di colonna è necessaria per migliorare l''informatività delle tabelle e visualizzazione strutturata dei dati.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea intestazione: <code>JLabel header = new JLabel("Intestazione");</code></li>
  <li>Imposta intestazione: <code>scrollPane.setColumnHeaderView(header);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setColumnHeaderView()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare per tabelle, combinare con <code>setRowHeaderView()</code>, migliorare informatività</li>
  <li><strong>⚠️ Evita:</strong> Intestazione senza contenuto</li>
</ul>
<p><strong>Importante:</strong> Rendi le intestazioni chiare.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un''intestazione di colonna sopra il contenuto scorrevole. Puoi usare per tabelle.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (201, 'it', 'Pannello Scorrevole Maestro: Aggiungere Intestazione Colonna',
        'Crea JLabel "Intestazione", imposta tramite setColumnHeaderView()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (202, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Intestazione Riga</h2>
<p class="intro">L''intestazione di riga migliora l''informatività. Puoi mostrare intestazioni per tabelle, migliorare comprensione. Senza intestazione, la tabella sarà senza etichette.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setRowHeaderView()</code> — impostare intestazione riga</li>
  <li>Intestazione per tabelle</li>
  <li>Migliorare informatività</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''intestazione di riga è necessaria per migliorare l''informatività delle tabelle e visualizzazione strutturata dei dati.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea intestazione: <code>JLabel header = new JLabel("Intestazione");</code></li>
  <li>Imposta intestazione: <code>scrollPane.setRowHeaderView(header);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setRowHeaderView()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare per tabelle, combinare con <code>setColumnHeaderView()</code>, migliorare informatività</li>
  <li><strong>⚠️ Evita:</strong> Intestazione senza contenuto</li>
</ul>
<p><strong>Importante:</strong> Rendi le intestazioni chiare.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un''intestazione di riga a sinistra del contenuto scorrevole. Puoi usare per tabelle.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (202, 'it', 'Pannello Scorrevole Maestro: Aggiungere Intestazione Riga',
        'Crea JLabel "Intestazione", imposta tramite setRowHeaderView()')
ON CONFLICT (task_id, language_code) DO NOTHING;
