-- Flyway migration V5: Lesson 25
-- This migration contains lesson, tasks, and documentation for lesson 25

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (203, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare Menu a Discesa</h2>
<p class="intro">I menu organizzano le funzioni dell''applicazione. File → Apri, Salva, Esci. Modifica → Copia, Incolla. Il menu rende le funzioni accessibili e organizzate.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>JMenu</code> — menu a discesa</li>
  <li>Creare menu</li>
  <li>Aggiungere voci di menu</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I menu sono necessari per organizzare le funzioni dell''applicazione e fornire accesso ai comandi.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea menu: <code>JMenu fileMenu = new JMenu("File");</code></li>
  <li>Crea voci di menu: <code>JMenuItem openItem = new JMenuItem("Apri");</code> e <code>JMenuItem saveItem = new JMenuItem("Salva");</code></li>
  <li>Aggiungi voci al menu: <code>fileMenu.add(openItem);</code> e <code>fileMenu.add(saveItem);</code></li>
  <li>Aggiungi menu alla barra dei menu: <code>menuBar.add(fileMenu);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Nomi chiari di menu e voci</li>
  <li><strong>✅ Ottimo:</strong> Aggiungere separatori: <code>fileMenu.addSeparator();</code>, aggiungere sottomenu per raggruppare</li>
  <li><strong>⚠️ Evita:</strong> Troppe voci — il menu diventerà lungo</li>
</ul>
<p><strong>Importante:</strong> Separatore: <code>menu.addSeparator();</code> — separazione visiva. Sottomenu: creare JMenu e aggiungere a altro menu. Mnemonico: <code>menu.setMnemonic(KeyEvent.VK_F);</code> — scorciatoia.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un menu "File" nella barra dei menu. Cliccando, si aprirà un elenco a discesa con voci. Puoi selezionare una voce per eseguire un''azione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (203, 'it', 'Menu Principiante: Creare Menu a Discesa',
        'Crea menu "File", aggiungi voce "Apri" e aggiungi menu alla barra dei menu')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (204, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Creare Finestra senza Cornice</h2>
<p class="intro">JWindow permette di creare una finestra senza cornice. Suggerimenti popup, notifiche, dialoghi personalizzati — tutto questo richiede una finestra senza cornice. Senza questo, dovrai usare JFrame con cornice.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>JWindow</code> — finestra senza cornice</li>
  <li>Creare finestre popup</li>
  <li>Aggiungere contenuto alla finestra</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le finestre senza cornice sono necessarie per suggerimenti popup, notifiche e dialoghi personalizzati.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea finestra: <code>JWindow window = new JWindow(frame);</code></li>
  <li>Aggiungi contenuto: <code>window.add(new JLabel("Finestra popup"));</code></li>
  <li>Mostra finestra: <code>window.setVisible(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Specificare finestra padre</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>pack()</code> per dimensione, usare <code>setLocation()</code> per posizione, usare per finestre popup</li>
  <li><strong>⚠️ Evita:</strong> Finestre troppo grandi — può essere scomodo</li>
</ul>
<p><strong>Importante:</strong> Senza cornice e barra del titolo.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà una finestra senza cornice. La finestra sarà senza barra del titolo e pulsanti. Puoi aggiungere qualsiasi contenuto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (204, 'it', 'Finestra Principiante: Creare Finestra senza Cornice',
        'Crea JWindow con padre frame, aggiungi JLabel, mostra finestra')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (205, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Finestra Sempre in Primo Piano</h2>
<p class="intro">La finestra in primo piano la rende sempre visibile. Suggerimenti popup, notifiche, messaggi importanti — tutto questo richiede finestra in primo piano. Senza questo, la finestra può essere nascosta da altre finestre.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setAlwaysOnTop()</code> — impostare in primo piano</li>
  <li>Creare finestre popup</li>
  <li>Configurare comportamento finestra</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La modalità "sempre in primo piano" è necessaria per notifiche importanti e suggerimenti popup.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta in primo piano: <code>window.setAlwaysOnTop(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setAlwaysOnTop(true)</code> per in primo piano</li>
  <li><strong>✅ Ottimo:</strong> Usare per notifiche importanti, usare per suggerimenti popup</li>
  <li><strong>⚠️ Evita:</strong> Sempre in primo piano per tutte le finestre — può interferire con il lavoro</li>
</ul>
<p><strong>Importante:</strong> Non abusare — può interferire.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La finestra sarà sempre in primo piano rispetto ad altre finestre. Anche se apri altre finestre, questa finestra rimarrà visibile.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (205, 'it', 'Finestra Maestro: Rendere Sempre in Primo Piano',
        'Imposta sempre in primo piano tramite setAlwaysOnTop(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (206, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Impostare Sfondo Finestra</h2>
<p class="intro">Lo sfondo rende la finestra visivamente attraente. Puoi evidenziare finestra, creare temi, migliorare leggibilità. Senza sfondo, la finestra sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setBackground()</code> — impostare sfondo</li>
  <li>Creare finestre colorate</li>
  <li>Configurare aspetto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Configurare lo sfondo ti permette di migliorare il design visivo e la leggibilità della finestra.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta sfondo: <code>window.setBackground(Color.LIGHT_GRAY);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setBackground()</code> per sfondo</li>
  <li><strong>✅ Ottimo:</strong> Usare colori standard, usare colori personalizzati</li>
  <li><strong>⚠️ Evita:</strong> Colori troppo brillanti — può essere scomodo</li>
</ul>
<p><strong>Importante:</strong> Usare colori smorzati. Considerare contrasto.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La finestra diventerà colorata. Lo sfondo della finestra sarà del colore specificato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (206, 'it', 'Finestra Maestro: Imposta Sfondo', 'Imposta sfondo LIGHT_GRAY tramite setBackground()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (207, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Finestra Sempre in Primo Piano (Avanzato)</h2>
<p class="intro">Sempre in primo piano rende la finestra visibile. La finestra sarà sempre in primo piano rispetto ad altre finestre, non sarà nascosta. Senza questo, la finestra può essere nascosta.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setAlwaysOnTop()</code> — sempre in primo piano</li>
  <li>Creare finestre fluttuanti</li>
  <li>Migliorare visibilità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La modalità "sempre in primo piano" è necessaria per finestre fluttuanti e notifiche.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta sempre in primo piano: <code>window.setAlwaysOnTop(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setAlwaysOnTop(true)</code> per sempre in primo piano</li>
  <li><strong>✅ Ottimo:</strong> Usare per finestre fluttuanti, usare per notifiche</li>
  <li><strong>⚠️ Evita:</strong> Sempre in primo piano per tutte le finestre — può essere invadente</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La finestra sarà sempre in primo piano rispetto ad altre finestre. La finestra non sarà nascosta.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (207, 'it', 'Finestra Maestro: Sempre in Primo Piano',
        'Imposta sempre in primo piano tramite setAlwaysOnTop(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (208, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Impostare Sfondo Finestra (Avanzato)</h2>
<p class="intro">Lo sfondo determina il colore della finestra. Puoi impostare il colore desiderato, migliorare design visivo. Senza configurazione, lo sfondo sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setBackground()</code> — impostare sfondo</li>
  <li>Creare finestra colorata</li>
  <li>Migliorare design visivo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Configurare lo sfondo ti permette di migliorare il design visivo e creare finestre tematiche.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta sfondo: <code>window.setBackground(Color.LIGHT_GRAY);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setBackground()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare Color per colore, usare per design visivo, combinare con altre impostazioni</li>
  <li><strong>⚠️ Evita:</strong> Colore troppo brillante — può essere scomodo</li>
</ul>
<p><strong>Importante:</strong> Usare colori ragionevoli.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Lo sfondo della finestra cambierà. La finestra avrà il colore specificato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (208, 'it', 'Finestra Maestro: Imposta Sfondo', 'Imposta sfondo LIGHT_GRAY tramite setBackground()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (209, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Un Tocco nel Pannello Diviso</h2>
<p class="intro">Un tocco accelera il cambio. Puoi espandere o collassare rapidamente il pannello con un clic, migliorare navigazione. Senza un tocco, devi trascinare il divisore.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setOneTouchExpandable()</code> — abilitare un tocco</li>
  <li>Pulsanti per espansione/collasso rapido</li>
  <li>Migliorare esperienza utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Un tocco migliora l''usabilità e accelera il lavoro con il pannello diviso.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Abilita un tocco: <code>splitPane.setOneTouchExpandable(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setOneTouchExpandable(true)</code> per abilitare</li>
  <li><strong>✅ Ottimo:</strong> Usare per cambio rapido, migliorare navigazione, usare per migliorare UX</li>
  <li><strong>⚠️ Evita:</strong> Disabilitare senza necessità</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Appariranno pulsanti per espansione/collasso rapido sul divisore. Puoi cambiare rapidamente tra pannelli.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (209, 'it', 'Divisore Maestro: Abilita Un Tocco', 'Abilita un tocco tramite setOneTouchExpandable(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (210, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Layout Continuo nel Pannello Diviso</h2>
<p class="intro">Il layout continuo migliora la fluidità. Trascinando il divisore, i componenti si aggiorneranno continuamente, migliorare effetto visivo. Senza layout continuo, l''aggiornamento sarà solo alla fine.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setContinuousLayout()</code> — abilitare layout continuo</li>
  <li>Ridimensionamento fluido</li>
  <li>Migliorare esperienza utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il layout continuo assicura un aggiornamento fluido dell''interfaccia durante il trascinamento del divisore.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Abilita layout continuo: <code>splitPane.setContinuousLayout(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setContinuousLayout(true)</code> per abilitare</li>
  <li><strong>✅ Ottimo:</strong> Usare per fluidità, migliorare effetto visivo, usare per migliorare UX</li>
  <li><strong>⚠️ Evita:</strong> Disabilitare senza necessità</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Trascinando il divisore, i componenti si aggiorneranno fluidamente. Puoi vedere i cambiamenti in tempo reale.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (210, 'it', 'Divisore Maestro: Abilita Layout Continuo',
        'Abilita layout continuo tramite setContinuousLayout(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (211, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Peso di Ridimensionamento nel Pannello Diviso</h2>
<p class="intro">Il peso di ridimensionamento determina proporzioni. Puoi impostare come viene distribuito lo spazio durante il ridimensionamento, migliorare layout. Senza peso, le proporzioni saranno standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setResizeWeight()</code> — impostare peso di ridimensionamento</li>
  <li>Gestire proporzioni durante il ridimensionamento</li>
  <li>Migliorare layout</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il peso di ridimensionamento ti permette di controllare come le parti del pannello diviso rispondono al ridimensionamento della finestra.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta peso: <code>splitPane.setResizeWeight(0.5);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setResizeWeight()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare 0.0-1.0 per peso. 0.0 — solo sinistra/sopra, 1.0 — solo destra/sotto, 0.5 — uniformemente</li>
  <li><strong>⚠️ Evita:</strong> Usare valori fuori dal range</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Durante il ridimensionamento, lo spazio sarà distribuito per peso. Puoi migliorare il layout.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (211, 'it', 'Divisore Maestro: Imposta Peso di Ridimensionamento', 'Imposta peso 0.5 tramite setResizeWeight()')
ON CONFLICT (task_id, language_code) DO NOTHING;
