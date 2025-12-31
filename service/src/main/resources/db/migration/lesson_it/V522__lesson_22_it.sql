-- Flyway migration V5: Lesson 22
-- This migration contains lesson, tasks, and documentation for lesson 22

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (183, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare Interfaccia con Schede</h2>
<p class="intro">JTabbedPane organizza contenuti. Puoi dividere l''interfaccia in schede, raggruppare contenuti correlati, risparmiare spazio. Senza schede, tutto sarà in un solo posto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>JTabbedPane</code> — pannello con schede</li>
  <li>Creare schede</li>
  <li>Aggiungere componenti alle schede</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le schede sono necessarie per organizzare contenuti e risparmiare spazio nell''interfaccia.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea pannello con schede: <code>JTabbedPane tabbedPane = new JTabbedPane();</code></li>
  <li>Aggiungi schede: <code>tabbedPane.addTab("Scheda 1", new JPanel());</code> e <code>tabbedPane.addTab("Scheda 2", new JPanel());</code></li>
  <li>Aggiungi al form: <code>add(tabbedPane);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addTab()</code> per aggiungere schede</li>
  <li><strong>✅ Ottimo:</strong> Usare nomi chiari di schede, raggruppare contenuti correlati</li>
  <li><strong>⚠️ Evita:</strong> Troppe schede — sovraccarica l''interfaccia</li>
</ul>
<p><strong>Importante:</strong> <code>addTab(String title, Icon icon, Component component)</code> — con icona. <code>insertTab(String title, Icon icon, Component component, String tip, int index)</code> — inserire scheda. <code>removeTabAt(int index)</code> — rimuovere scheda. <code>setSelectedIndex(int index)</code> — selezionare scheda.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un pannello con schede. Queste sono schede in alto, puoi cambiare tra esse. Il contenuto di ogni scheda viene mostrato quando selezionato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (183, 'it', 'Schede Principiante: Creare Interfaccia con Schede',
        'Crea un pannello con schede, aggiungi due schede "Scheda 1" e "Scheda 2" e aggiungilo al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (184, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Posizionamento delle Schede</h2>
<p class="intro">Il posizionamento influenza l''aspetto dell''interfaccia. In alto — standard, in basso — alternativo, sinistra/destra — per interfacce verticali. Puoi scegliere il posizionamento appropriato.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setTabPlacement(int)</code> — impostare posizionamento</li>
  <li>Costanti <code>TOP</code>, <code>BOTTOM</code>, <code>LEFT</code>, <code>RIGHT</code></li>
  <li>Posizionare schede in luoghi diversi</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Scegliere il posizionamento ti permette di adattare l''interfaccia a diversi tipi di applicazioni.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta posizionamento: <code>tabbedPane.setTabPlacement(JTabbedPane.BOTTOM);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> TOP per in alto (predefinito), BOTTOM per in basso, LEFT per sinistra, RIGHT per destra</li>
  <li><strong>⚠️ Evita:</strong> Usare posizionamento inappropriato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Le schede saranno posizionate nella posizione specificata. In alto, in basso, sinistra o destra. Puoi scegliere il posizionamento appropriato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (184, 'it', 'Schede Maestro: Imposta Posizionamento delle Schede',
        'Crea un pannello con schede, imposta posizionamento in basso tramite setTabPlacement(JTabbedPane.BOTTOM)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (185, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Selezione della Scheda</h2>
<p class="intro">La selezione della scheda permette cambio programmatico. Puoi aprire la scheda necessaria all''avvio, cambiare dopo azione, migliorare esperienza utente. Senza gestione, la selezione sarà solo manuale.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setSelectedIndex(int)</code> — selezionare scheda per indice</li>
  <li>Metodo <code>setSelectedComponent(Component)</code> — selezionare scheda per componente</li>
  <li>Gestire scheda selezionata</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La selezione programmatica della scheda ti permette di controllare il contenuto mostrato e migliorare l''esperienza utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Seleziona scheda per indice: <code>tabbedPane.setSelectedIndex(1);</code></li>
  <li>O per componente: <code>tabbedPane.setSelectedComponent(component);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setSelectedIndex()</code> per selezionare, <code>setSelectedComponent()</code> per selezionare</li>
  <li><strong>✅ Ottimo:</strong> Selezionare scheda all''avvio, cambiare dopo azione</li>
  <li><strong>⚠️ Evita:</strong> Selezionare scheda inesistente</li>
</ul>
<p><strong>Importante:</strong> <code>getSelectedIndex()</code> — ottenere indice scheda selezionata. <code>getSelectedComponent()</code> — ottenere componente selezionato.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La scheda selezionata diventerà attiva. Il contenuto di questa scheda verrà mostrato. Puoi cambiare programmaticamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (185, 'it', 'Schede Maestro: Selezionare Scheda',
        'Crea un pannello con schede, aggiungi due schede, seleziona seconda tramite setSelectedIndex(1)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (186, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Icona sulla Scheda</h2>
<p class="intro">L''icona migliora l''aspetto visivo. Puoi aggiungere un''icona alla scheda, renderla più riconoscibile, migliorare la navigazione. Senza icona, la scheda sarà solo con testo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setIconAt(int, Icon)</code> — impostare icona</li>
  <li>Metodo <code>addTab(String, Icon, Component)</code> — aggiungere con icona</li>
  <li>Migliorare aspetto visivo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le icone migliorano la percezione visiva e la navigazione attraverso le schede.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi scheda con icona: <code>tabbedPane.addTab("Scheda", icon, component);</code></li>
  <li>O imposta icona per esistente: <code>tabbedPane.setIconAt(0, icon);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addTab()</code> con icona, <code>setIconAt()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare icone chiare, migliorare navigazione</li>
  <li><strong>⚠️ Evita:</strong> Usare icone troppo grandi</li>
</ul>
<p><strong>Importante:</strong> <code>getIconAt(int index)</code> — ottenere icona.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un''icona sulla scheda. Puoi migliorare l''aspetto visivo e la navigazione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (186, 'it', 'Schede Maestro: Aggiungere Icona alla Scheda',
        'Crea un pannello con schede, aggiungi scheda con icona tramite addTab("Scheda", icon, component)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (187, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Suggerimento sulla Scheda</h2>
<p class="intro">Il suggerimento aiuta l''utente. Puoi mostrare informazioni aggiuntive, spiegare lo scopo della scheda, migliorare la comprensione. Senza suggerimento, l''utente può non capire lo scopo della scheda.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setToolTipTextAt(int, String)</code> — impostare suggerimento</li>
  <li>Mostrare informazioni al passaggio del mouse</li>
  <li>Migliorare esperienza utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I suggerimenti migliorano la comprensione dell''interfaccia e aiutano l''utente a orientarsi.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta suggerimento: <code>tabbedPane.setToolTipTextAt(0, "Questa è la prima scheda");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setToolTipTextAt()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare suggerimenti informativi, spiegare scopo scheda, usare per aiutare utente</li>
  <li><strong>⚠️ Evita:</strong> Usare suggerimenti troppo lunghi</li>
</ul>
<p><strong>Importante:</strong> <code>getToolTipTextAt(int index)</code> — ottenere suggerimento.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Passando il mouse sulla scheda, apparirà un suggerimento. Questo è un suggerimento popup con informazioni. Puoi migliorare l''esperienza utente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (187, 'it', 'Schede Maestro: Aggiungere Suggerimento alla Scheda',
        'Crea un pannello con schede, aggiungi scheda, imposta suggerimento "Prima scheda" tramite setToolTipTextAt(0, "Prima scheda")')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (188, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Abilitare/Disabilitare Scheda</h2>
<p class="intro">Abilitare/disabilitare gestisce la disponibilità. Puoi disabilitare scheda quando non è disponibile, mostrare stato, migliorare esperienza utente. Senza gestione, tutte le schede sono sempre disponibili.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setEnabledAt(int, boolean)</code> — abilitare/disabilitare</li>
  <li>Gestire disponibilità scheda</li>
  <li>Migliorare esperienza utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire disponibilità ti permette di mostrare stati delle schede e migliorare l''esperienza utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Disabilita scheda: <code>tabbedPane.setEnabledAt(0, false);</code></li>
  <li>O abilita: <code>tabbedPane.setEnabledAt(0, true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setEnabledAt()</code> per gestire</li>
  <li><strong>✅ Ottimo:</strong> Disabilitare schede non disponibili, mostrare stato, migliorare esperienza utente</li>
  <li><strong>⚠️ Evita:</strong> Disabilitare senza spiegazione</li>
</ul>
<p><strong>Importante:</strong> <code>isEnabledAt(int index)</code> — verificare disponibilità.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La scheda diventerà non disponibile o disponibile. La scheda non disponibile sarà grigia e inattiva. Puoi gestire la disponibilità.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (188, 'it', 'Schede Maestro: Abilitare/Disabilitare Scheda',
        'Crea un pannello con schede, aggiungi scheda, disabilitala tramite setEnabledAt(0, false)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (189, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Gestione Cambio Scheda</h2>
<p class="intro">La gestione dei cambi permette di reagire al cambio. Puoi aggiornare altri componenti, caricare dati, eseguire azioni al cambio. Senza gestione, non puoi reagire ai cambi.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Interfaccia <code>ChangeListener</code> — ascoltatore di cambi</li>
  <li>Metodo <code>addChangeListener()</code> — aggiungere ascoltatore</li>
  <li>Reagire al cambio di schede</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La gestione dei cambi ti permette di sincronizzare l''interfaccia e reagire alle azioni dell''utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi ascoltatore: <code>tabbedPane.addChangeListener(e -> {<br>
&nbsp;&nbsp;int index = tabbedPane.getSelectedIndex();<br>
&nbsp;&nbsp;label.setText("Scheda selezionata: " + index);<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addChangeListener()</code> per gestire</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>getSelectedIndex()</code> per ottenere indice, aggiornare altri componenti, caricare dati al cambio</li>
  <li><strong>⚠️ Evita:</strong> Ignorare cambi</li>
</ul>
<p><strong>Importante:</strong> <code>getSelectedComponent()</code> — ottenere componente selezionato.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Cambiando schede, il gestore si attiverà. Puoi gestire il cambio e aggiornare altri componenti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (189, 'it', 'Schede Maestro: Gestire Cambio Scheda',
        'Crea un pannello con schede, aggiungi ChangeListener, ottieni indice scheda selezionata tramite getSelectedIndex(), mostralo')
ON CONFLICT (task_id, language_code) DO NOTHING;
