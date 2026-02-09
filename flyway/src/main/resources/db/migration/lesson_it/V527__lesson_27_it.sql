-- Flyway migration V5: Lesson 27
-- This migration contains lesson, tasks, and documentation for lesson 27

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (221, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare Casella di Controllo nel Menu</h2>
<p class="intro">Le caselle di controllo nel menu permettono di alternare opzioni. "Mostra barra degli strumenti", "Abilita avvio automatico", "Tema scuro" — tutto questo è conveniente farlo attraverso caselle nel menu. Lo stato dell''opzione è visibile.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>JCheckBoxMenuItem</code> — casella di controllo nel menu</li>
  <li>Creare casella di controllo nel menu</li>
  <li>Gestire stato della casella</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le caselle di controllo nel menu sono necessarie per alternare opzioni con stato visibile.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea casella nel menu: <code>JCheckBoxMenuItem showToolbar = new JCheckBoxMenuItem("Mostra barra degli strumenti");</code></li>
  <li>Imposta stato (opzionale): <code>showToolbar.setSelected(true);</code></li>
  <li>Aggiungi al menu: <code>viewMenu.add(showToolbar);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Nomi chiari che riflettono l''azione</li>
  <li><strong>✅ Ottimo:</strong> Impostare stato iniziale, aggiungere gestore per reagire al cambio</li>
  <li><strong>⚠️ Evita:</strong> Casella senza gestore — lo stato non influenza l''applicazione</li>
</ul>
<p><strong>Importante:</strong> Verificare: <code>isSelected()</code> — restituisce true se selezionata. Gestore: <code>addItemListener(listener);</code> — per reagire al cambio.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà una casella di controllo nel menu. Questa è una voce di menu con un quadrato. Se selezionata — il segno di spunta è visibile. Cliccando, lo stato cambia.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (221, 'it', 'Casella di Menu Principiante: Creare Alternatore nel Menu',
        'Crea casella nel menu "Mostra pannello", selezionala e aggiungila al menu')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (222, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Selezionare Scheda Attiva</h2>
<p class="intro">Il cambio programmatico di schede permette di gestire la navigazione. Puoi cambiare alla scheda necessaria dopo un''azione, mostrare informazioni necessarie. Senza questo, l''utente deve cambiare manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setSelectedIndex()</code> — selezione per indice</li>
  <li>Metodo <code>setSelectedComponent()</code> — selezione per componente</li>
  <li>Cambio programmatico di schede</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il cambio programmatico è necessario per gestire la navigazione e mostrare automaticamente le informazioni necessarie.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Seleziona per indice: <code>tabbedPane.setSelectedIndex(1);</code></li>
  <li>O seleziona per componente: <code>tabbedPane.setSelectedComponent(panel);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setSelectedIndex()</code> per selezionare per indice, <code>setSelectedComponent()</code> per selezionare per componente</li>
  <li><strong>✅ Ottimo:</strong> Verificare validità dell''indice prima di selezionare, usare <code>ChangeListener</code> per tracciare cambi</li>
  <li><strong>⚠️ Evita:</strong> Selezionare indice inesistente — può essere errore</li>
</ul>
<p><strong>Importante:</strong> <code>getSelectedIndex()</code> — ottenere indice scheda selezionata. <code>getSelectedComponent()</code> — ottenere componente selezionato.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La scheda attiva cambierà programmaticamente. Puoi cambiare alla scheda necessaria senza clic dell''utente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (222, 'it', 'Schede Maestro: Selezionare Scheda Attiva',
        'Seleziona scheda con indice 1 tramite setSelectedIndex(1)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (223, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Posizionamento Schede</h2>
<p class="intro">Il posizionamento delle schede influenza l''interfaccia. Puoi posizionare schede in alto (standard), in basso, sinistra, destra. Senza configurazione, le schede saranno in alto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setTabPlacement()</code> — impostare posizionamento</li>
  <li>Costanti di posizionamento schede</li>
  <li>Configurare aspetto delle schede</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Scegliere il posizionamento ti permette di adattare l''interfaccia a diversi tipi di applicazioni e migliorare il layout.</p>
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
  <li><strong>✅ Usa:</strong> TOP per in alto (standard), BOTTOM per in basso, LEFT per sinistra, RIGHT per destra</li>
  <li><strong>⚠️ Evita:</strong> Cambiare frequentemente il posizionamento — può essere inaspettato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Le schede saranno nella posizione specificata. Possono essere in alto, in basso, sinistra o destra.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (223, 'it', 'Schede Maestro: Configurare Posizionamento Schede',
        'Imposta posizionamento BOTTOM tramite setTabPlacement()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (224, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Suggerimento per Scheda</h2>
<p class="intro">Il suggerimento fornisce informazioni aggiuntive. Puoi mostrare descrizione della scheda, informazioni aggiuntive. Senza suggerimento, l''utente non vedrà informazioni aggiuntive.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setToolTipTextAt()</code> — impostare suggerimento</li>
  <li>Creare schede informative</li>
  <li>Migliorare esperienza utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I suggerimenti migliorano l''esperienza utente fornendo informazioni aggiuntive sulle schede.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi scheda: <code>tabbedPane.addTab("Scheda", component);</code></li>
  <li>Imposta suggerimento: <code>tabbedPane.setToolTipTextAt(0, "Descrizione scheda");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setToolTipTextAt()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare suggerimenti chiari, usare per descrizione, usare per informazioni aggiuntive</li>
  <li><strong>⚠️ Evita:</strong> Suggerimenti troppo lunghi — può essere scomodo</li>
</ul>
<p><strong>Importante:</strong> Rendi i suggerimenti brevi.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Passando il mouse, apparirà un suggerimento. Puoi mostrare descrizione della scheda.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (224, 'it', 'Schede Maestro: Aggiungere Suggerimento',
        'Aggiungi scheda, imposta suggerimento "Descrizione" tramite setToolTipTextAt(0, "Descrizione")')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (225, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Abilitare/Disabilitare Scheda</h2>
<p class="intro">Abilitare/disabilitare scheda gestisce la disponibilità. Puoi disabilitare temporaneamente la scheda, renderla non disponibile. Senza gestione, tutte le schede sono sempre disponibili.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setEnabledAt()</code> — abilitare/disabilitare scheda</li>
  <li>Gestire disponibilità schede</li>
  <li>Creare interfacce dinamiche</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire disponibilità ti permette di mostrare stati delle schede e migliorare la logica dell''interfaccia.</p>
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
  <li><strong>✅ Ottimo:</strong> Disabilitare schede temporaneamente non disponibili, abilitare quando necessario, usare per interfacce dinamiche</li>
  <li><strong>⚠️ Evita:</strong> Disabilitare senza ragione</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La scheda sarà abilitata o disabilitata. Puoi gestire la disponibilità delle schede.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (225, 'it', 'Schede Maestro: Abilitare/Disabilitare Scheda',
        'Disabilita scheda 0 tramite setEnabledAt(0, false), poi abilita tramite setEnabledAt(0, true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (226, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Ottenere Indice Scheda</h2>
<p class="intro">L''indice della scheda permette di gestire le schede. Puoi trovare posizione della scheda, cambiare a quella necessaria. Senza indice, non puoi gestire le schede.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>indexOfTab()</code> — ottenere indice</li>
  <li>Metodo <code>getSelectedIndex()</code> — ottenere indice selezionato</li>
  <li>Lavorare con indici delle schede</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Lavorare con indici è necessario per la gestione programmatica delle schede e navigazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni indice: <code>int index = tabbedPane.indexOfTab("Scheda");</code></li>
  <li>O ottieni selezionato: <code>int selected = tabbedPane.getSelectedIndex();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>indexOfTab()</code> per ottenere, <code>getSelectedIndex()</code> per selezionato</li>
  <li><strong>✅ Ottimo:</strong> Usare per navigazione, usare per gestione</li>
  <li><strong>⚠️ Evita:</strong> Ignorare indici</li>
</ul>
<p><strong>Importante:</strong> Verificare esistenza dell''indice.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Potrai ottenere l''indice della scheda. Puoi usare per navigazione e gestione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (226, 'it', 'Schede Maestro: Ottenere Indice Scheda',
        'Ottieni indice tramite indexOfTab("Scheda"), ottieni selezionato tramite getSelectedIndex()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (227, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Separatore nella Barra degli Strumenti</h2>
<p class="intro">Il separatore migliora l''organizzazione. Puoi raggruppare strumenti, migliorare leggibilità. Senza separatore, tutti gli strumenti saranno insieme.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>addSeparator()</code> — aggiungere separatore</li>
  <li>Raggruppare strumenti</li>
  <li>Migliorare organizzazione</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I separatori aiutano a raggruppare visivamente strumenti e migliorano la leggibilità della barra.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi separatore: <code>toolBar.addSeparator();</code></li>
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
<p>Apparirà un separatore tra strumenti. Puoi raggruppare strumenti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (227, 'it', 'Barra degli Strumenti Maestro: Aggiungere Separatore', 'Aggiungi separatore tramite addSeparator()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (228, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Spaziatura nella Barra degli Strumenti</h2>
<p class="intro">La spaziatura migliora l''aspetto visivo. Puoi aggiungere distanza tra strumenti, migliorare leggibilità. Senza spaziatura, gli strumenti saranno vicini.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>addSeparator()</code> — aggiungere separatore per spaziatura</li>
  <li>Migliorare aspetto visivo</li>
  <li>Creare barra ordinata</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La spaziatura migliora la percezione visiva e la leggibilità della barra degli strumenti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi separatori: <code>toolBar.addSeparator();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addSeparator()</code> per spaziatura</li>
  <li><strong>✅ Ottimo:</strong> Usare per raggruppare, migliorare aspetto visivo, migliorare leggibilità</li>
  <li><strong>⚠️ Evita:</strong> Troppi separatori</li>
</ul>
<p><strong>Importante:</strong> Fai gruppi logici. Non abusare.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Ci sarà spaziatura tra strumenti. Puoi raggruppare strumenti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (228, 'it', 'Barra degli Strumenti Maestro: Imposta Spaziatura',
        'Aggiungi separatore tramite addSeparator() per creare spaziatura')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (229, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Orientamento Barra degli Strumenti</h2>
<p class="intro">L''orientamento determina la direzione. Puoi posizionare la barra orizzontalmente o verticalmente, migliorare layout. Senza impostazione, l''orientamento sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setOrientation()</code> — impostare orientamento</li>
  <li>Costanti <code>SwingConstants.HORIZONTAL</code>, <code>SwingConstants.VERTICAL</code></li>
  <li>Gestire direzione della barra</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Scegliere l''orientamento ti permette di adattare la barra degli strumenti a diversi layout dell''interfaccia.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta orientamento: <code>toolBar.setOrientation(SwingConstants.VERTICAL);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setOrientation()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare HORIZONTAL per orizzontale, VERTICAL per verticale, migliorare layout</li>
  <li><strong>⚠️ Evita:</strong> Usare orientamento inappropriato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La barra degli strumenti sarà nell''orientamento specificato. Puoi migliorare il layout.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (229, 'it', 'Barra degli Strumenti Maestro: Imposta Orientamento',
        'Imposta orientamento VERTICAL tramite setOrientation()')
ON CONFLICT (task_id, language_code) DO NOTHING;
