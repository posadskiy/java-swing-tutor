-- Flyway migration V5: Lesson 26
-- This migration contains lesson, tasks, and documentation for lesson 26

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (212, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare Voce di Menu</h2>
<p class="intro">Le voci di menu eseguono azioni. Aprire file, salvare, uscire — queste sono voci di menu. Senza di esse, il menu è inutile. Le voci di menu sono comandi dell''applicazione.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>JMenuItem</code> — voce di menu</li>
  <li>Creare voce di menu</li>
  <li>Aggiungere gestore di azioni</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le voci di menu sono necessarie per eseguire comandi dell''applicazione e fornire accesso alle funzioni.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea voce di menu: <code>JMenuItem openItem = new JMenuItem("Apri");</code></li>
  <li>Aggiungi gestore: <code>JLabel label = new JLabel();<br>
openItem.addActionListener(e -> label.setText("Apri file"));<br>
add(label);</code></li>
  <li>Aggiungi al menu: <code>fileMenu.add(openItem);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Nomi chiari di voci</li>
  <li><strong>✅ Ottimo:</strong> Aggiungere icona: <code>new JMenuItem("Apri", icon);</code>, scorciatoia: <code>openItem.setAccelerator(KeyStroke.getKeyStroke("ctrl O"));</code></li>
  <li><strong>⚠️ Evita:</strong> Voce senza gestore — non succederà nulla</li>
</ul>
<p><strong>Importante:</strong> Mnemonico: <code>setMnemonic(KeyEvent.VK_O);</code> — lettera sottolineata.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà una voce "Apri" nel menu. Cliccando, verrà eseguita un''azione (ad esempio, verrà mostrato un messaggio). Se c''è una scorciatoia, puoi usarla invece di cliccare.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (212, 'it', 'Voce di Menu Principiante: Creare Azione nel Menu',
        'Crea voce di menu "Apri", aggiungi gestore e aggiungi al menu')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (213, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Posizione Divisore nel Pannello Diviso</h2>
<p class="intro">La posizione del divisore determina il rapporto iniziale dei pannelli. Puoi impostare divisione uguale o dare più spazio a un pannello. Senza configurazione, il divisore sarà al centro.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setDividerLocation()</code> — impostare posizione</li>
  <li>Configurare posizione iniziale del divisore</li>
  <li>Gestire divisione dei pannelli</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Configurare la posizione del divisore ti permette di controllare le proporzioni iniziali delle parti del pannello diviso.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta posizione in pixel: <code>splitPane.setDividerLocation(200);</code></li>
  <li>O imposta in percentuale: <code>splitPane.setDividerLocation(0.5);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setDividerLocation(int)</code> per pixel, <code>setDividerLocation(double)</code> per percentuale</li>
  <li><strong>✅ Ottimo:</strong> Impostare dopo aver aggiunto componenti, usare <code>resetToPreferredSizes()</code> per resettare</li>
  <li><strong>⚠️ Evita:</strong> Impostare prima di aggiungere componenti — può non funzionare</li>
</ul>
<p><strong>Importante:</strong> <code>getDividerLocation()</code> — ottenere posizione corrente. Impostare dopo <code>pack()</code> o <code>setVisible(true)</code>.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il divisore sarà alla posizione specificata. I pannelli saranno divisi nel rapporto necessario. Puoi trascinare il divisore.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (213, 'it', 'Pannello Diviso Maestro: Configurare Posizione Divisore',
        'Imposta posizione divisore 200 pixel tramite setDividerLocation(200)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (214, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Un Tocco nel Pannello Diviso</h2>
<p class="intro">Un tocco accelera il lavoro. Puoi espandere o collassare rapidamente il pannello con un clic. Senza questo, dovrai trascinare il divisore.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setOneTouchExpandable()</code> — abilitare un tocco</li>
  <li>Creare pulsanti di espansione rapida</li>
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
  <li><strong>✅ Usa:</strong> <code>setOneTouchExpandable(true)</code> per pulsanti</li>
  <li><strong>✅ Ottimo:</strong> Usare per accesso rapido, combinare con altre impostazioni</li>
  <li><strong>⚠️ Evita:</strong> Sempre abilitato — può non essere necessario</li>
</ul>
<p><strong>Importante:</strong> I pulsanti appaiono sul divisore. Un clic per espandere/collassare.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Appariranno pulsanti sul divisore. Puoi cliccare per espandere o collassare rapidamente il pannello.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (214, 'it', 'Pannello Diviso Maestro: Abilita Un Tocco',
        'Abilita un tocco tramite setOneTouchExpandable(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (215, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Posizione Divisore (Avanzato)</h2>
<p class="intro">La posizione del divisore determina le dimensioni dei pannelli. Puoi impostare posizione iniziale, cambiare rapporto dei pannelli. Senza configurazione, il divisore sarà al centro.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setDividerLocation()</code> — impostare posizione</li>
  <li>Impostare posizione in pixel o percentuale</li>
  <li>Controllare posizionamento divisore</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire la posizione del divisore ti permette di controllare le dimensioni iniziali delle parti del pannello diviso.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta posizione in pixel: <code>splitPane.setDividerLocation(200);</code></li>
  <li>O in percentuale: <code>splitPane.setDividerLocation(0.3);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setDividerLocation(int)</code> per pixel, <code>setDividerLocation(double)</code> per percentuale</li>
  <li><strong>✅ Ottimo:</strong> Usare per posizione iniziale, usare per cambiare rapporto</li>
  <li><strong>⚠️ Evita:</strong> Impostare fuori dai limiti — può essere inaspettato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il divisore sarà alla posizione specificata. I pannelli saranno della dimensione necessaria. Puoi cambiare il rapporto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (215, 'it', 'Pannello Diviso Maestro: Imposta Posizione Divisore',
        'Imposta posizione divisore 200 pixel tramite setDividerLocation(200)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (216, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Layout Continuo nel Pannello Diviso</h2>
<p class="intro">Il layout continuo rende il cambio fluido. I pannelli cambieranno dimensione in tempo reale durante il trascinamento. Senza questo, il cambio sarà solo dopo il rilascio.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setContinuousLayout()</code> — layout continuo</li>
  <li>Cambi di dimensione fluidi</li>
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
  <li><strong>✅ Ottimo:</strong> Usare per cambio fluido, migliorare esperienza utente</li>
  <li><strong>⚠️ Evita:</strong> Disabilitare per componenti lenti</li>
</ul>
<p><strong>Importante:</strong> <code>false</code> — disabilitare (cambio dopo rilascio).</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Le dimensioni dei pannelli cambieranno fluidamente. Trascinando, la dimensione cambierà in tempo reale.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (216, 'it', 'Pannello Diviso Maestro: Abilita Layout Continuo',
        'Abilita layout continuo tramite setContinuousLayout(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (217, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Peso di Ridimensionamento nel Pannello Diviso</h2>
<p class="intro">Il peso di ridimensionamento determina proporzioni. Puoi specificare come cambieranno i pannelli durante il ridimensionamento della finestra. Senza peso, le proporzioni saranno standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setResizeWeight()</code> — impostare peso</li>
  <li>Gestire proporzioni dei pannelli</li>
  <li>Creare layout bilanciati</li>
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
  <li><strong>✅ Ottimo:</strong> Usare 0.0-1.0 per peso. 0.0 — solo pannello sinistro/superiore, 1.0 — solo pannello destro/inferiore, 0.5 — proporzioni uguali. Adattare al contenuto</li>
  <li><strong>⚠️ Evita:</strong> Proporzioni troppo disuguali — può essere scomodo</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Le proporzioni dei pannelli saranno configurate. Durante il ridimensionamento, i pannelli cambieranno secondo il peso.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (217, 'it', 'Pannello Diviso Maestro: Configurare Peso di Ridimensionamento',
        'Imposta peso 0.5 tramite setResizeWeight(0.5)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (218, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Abilitare/Disabilitare Scheda</h2>
<p class="intro">Abilitare/disabilitare schede migliora la gestione. Puoi rendere la scheda non disponibile in base allo stato, migliorare logica. Senza questo, tutte le schede sono sempre disponibili.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setEnabledAt()</code> — abilitare/disabilitare scheda</li>
  <li>Gestire disponibilità schede</li>
  <li>Creare schede condizionali</li>
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
  <li>Abilita di nuovo: <code>tabbedPane.setEnabledAt(0, true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setEnabledAt()</code> per gestire</li>
  <li><strong>✅ Ottimo:</strong> Usare per schede condizionali, usare per migliorare logica, migliorare esperienza utente</li>
  <li><strong>⚠️ Evita:</strong> Disabilitare senza spiegazione</li>
</ul>
<p><strong>Importante:</strong> Spiegare ragione per disabilitare.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La scheda sarà abilitata o disabilitata. Puoi gestire la disponibilità delle schede.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (218, 'it', 'Scheda Maestro: Abilitare/Disabilitare Scheda',
        'Disabilita scheda 0 tramite setEnabledAt(0, false), poi abilita di nuovo tramite setEnabledAt(0, true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (219, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Mnemonico Scheda</h2>
<p class="intro">Il mnemonico migliora l''accessibilità. Puoi assegnare scorciatoia alla scheda, migliorare navigazione. Senza mnemonico, devi usare il mouse.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setMnemonicAt()</code> — impostare mnemonico</li>
  <li>Scorciatoie per schede</li>
  <li>Migliorare accessibilità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I mnemonici migliorano l''accessibilità e accelerano la navigazione per schede dalla tastiera.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta mnemonico: <code>tabbedPane.setMnemonicAt(0, KeyEvent.VK_T);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMnemonicAt()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>KeyEvent.VK_*</code> per tasti, usare per migliorare accessibilità, migliorare navigazione</li>
  <li><strong>⚠️ Evita:</strong> Duplicare mnemonici</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Nel testo della scheda, la lettera del mnemonico sarà sottolineata. Premendo Alt+tasto, la scheda si attiverà.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (219, 'it', 'Scheda Maestro: Imposta Mnemonico', 'Imposta mnemonico VK_T per scheda 0 tramite setMnemonicAt()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (220, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Posizionamento Schede</h2>
<p class="intro">Il posizionamento delle schede influenza il design. Puoi posizionare schede in alto, in basso, sinistra, destra, migliorare layout. Senza impostazione, il posizionamento sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setTabPlacement()</code> — impostare posizionamento</li>
  <li>Costanti <code>JTabbedPane.TOP</code>, <code>JTabbedPane.BOTTOM</code>, <code>JTabbedPane.LEFT</code>, <code>JTabbedPane.RIGHT</code></li>
  <li>Gestire posizionamento schede</li>
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
  <li><strong>✅ Usa:</strong> <code>setTabPlacement()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare TOP per in alto, BOTTOM per in basso, LEFT, RIGHT per lati</li>
  <li><strong>⚠️ Evita:</strong> Usare posizionamento inappropriato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Le schede saranno nella posizione specificata. Puoi migliorare il layout.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (220, 'it', 'Scheda Maestro: Imposta Posizionamento Schede',
        'Imposta posizionamento BOTTOM tramite setTabPlacement()')
ON CONFLICT (task_id, language_code) DO NOTHING;
