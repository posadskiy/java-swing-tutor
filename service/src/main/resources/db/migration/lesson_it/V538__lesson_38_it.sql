-- Flyway migration V5: Lesson 38
-- This migration contains lesson, tasks, and documentation for lesson 38

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (317, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Posizionare Componenti in Riga con FlowLayout</h2>
<p class="intro">FlowLayout — layout più semplice. Componenti si allineano in riga e si avvolgono automaticamente. Perfetto per barre strumenti, pulsanti, moduli semplici. Questo è layout predefinito per JPanel.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>FlowLayout</code> — gestore layout in riga</li>
  <li>Creare FlowLayout</li>
  <li>Disposizione automatica componenti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>FlowLayout è necessario per layout semplice in riga di componenti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta FlowLayout: <code>setLayout(new FlowLayout());</code></li>
  <li>Aggiungi componenti: <code>add(new JButton("Pulsante 1"));</code><br>
<code>add(new JButton("Pulsante 2"));</code><br>
<code>add(new JButton("Pulsante 3"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Per pannelli semplici</li>
  <li><strong>✅ Ottimo:</strong> Configurare allineamento, configurare spazi</li>
  <li><strong>⚠️ Evita:</strong> Per interfacce complesse meglio usare altri layout</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componenti si allineeranno in riga. Saranno posizionati uno dopo l''altro da sinistra a destra. Se non entrano — si avvolgeranno a nuova riga.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (317, 'it', 'FlowLayout Principiante: Posizionare Componenti in Riga',
        'Imposta FlowLayout e aggiungi tre pulsanti')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (318, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Aggiungere Acceleratore a Voce Menu</h2>
<p class="intro">Gli acceleratori accelerano lavoro. Puoi eseguire azione senza aprire menu, che è molto veloce. Senza di essi, dovrai sempre aprire menu.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setAccelerator()</code> — impostare acceleratore</li>
  <li>Classe <code>KeyStroke</code> — combinazione tasti</li>
  <li>Creare tasti rapidi per voci menu</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gli acceleratori sono necessari per accelerare lavoro con menu.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea combinazione tasti: <code>KeyStroke stroke = KeyStroke.getKeyStroke(KeyEvent.VK_S, InputEvent.CTRL_DOWN_MASK);</code></li>
  <li>Imposta acceleratore: <code>menuItem.setAccelerator(stroke);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setAccelerator()</code> per tasto rapido</li>
  <li><strong>✅ Ottimo:</strong> Usare combinazioni standard (Ctrl+S, Ctrl+C, Ctrl+V), mostrare acceleratore in testo menu</li>
  <li><strong>⚠️ Evita:</strong> Usare combinazioni non standard — utente non ricorderà</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Voce menu mostrerà etichetta con combinazione tasti. Puoi premere Ctrl+tasto per eseguire azione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (318, 'it', 'Voce Menu Maestro: Aggiungere Acceleratore',
        'Crea KeyStroke per Ctrl+S via getKeyStroke(), imposta acceleratore via setAccelerator()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (319, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Abilitare e Disabilitare Voce Menu</h2>
<p class="intro">Abilitare/disabilitare voci rende menu contestuale. Puoi disabilitare comandi non disponibili, abilitare quando necessario. Senza questo, utente può tentare eseguire comando non disponibile.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setEnabled()</code> — abilitare/disabilitare</li>
  <li>Gestire disponibilità voci menu</li>
  <li>Cambio dinamico stato</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire disponibilità voci menu è necessario per creare interfaccia contestuale.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Disabilita voce: <code>menuItem.setEnabled(false);</code></li>
  <li>O abilita: <code>menuItem.setEnabled(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setEnabled(false)</code> per disabilitare</li>
  <li><strong>✅ Ottimo:</strong> Cambiare stato dinamicamente, disabilitare comandi non disponibili, abilitare quando cambia stato</li>
  <li><strong>⚠️ Evita:</strong> Sempre disabilitato — può essere poco chiaro</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Voce menu diventerà non disponibile. Voce disabilitata sarà grigia e inattiva. Puoi abilitare quando necessario.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (319, 'it', 'Voce Menu Maestro: Abilitare e Disabilitare Voce',
        'Disabilita voce via setEnabled(false), poi abilita via setEnabled(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (320, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Aggiungere Suggerimento a Voce Menu</h2>
<p class="intro">Il suggerimento fornisce informazioni aggiuntive. Puoi mostrare descrizione comando, tasti rapidi. Senza suggerimento, utente non vedrà informazioni aggiuntive.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setToolTipText()</code> — impostare suggerimento</li>
  <li>Creare voci menu informative</li>
  <li>Migliorare esperienza utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il suggerimento è necessario per fornire informazioni aggiuntive su voce menu.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta suggerimento: <code>menuItem.setToolTipText("Salva documento");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setToolTipText()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare suggerimenti chiari, usare per descrizione, usare per tasti rapidi</li>
  <li><strong>⚠️ Evita:</strong> Suggerimenti troppo lunghi</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Suggerimento apparirà al passaggio del mouse. Puoi mostrare descrizione comando.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (320, 'it', 'Voce Menu Maestro: Aggiungere Suggerimento',
        'Imposta suggerimento "Salva documento" via setToolTipText()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (324, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Aggiungere Suggerimento a JRadioButtonMenuItem</h2>
<p class="intro">Il suggerimento migliora informativeness. Puoi aggiungere descrizione voce menu, migliorare comprensione. Senza suggerimento, utente può non capire scopo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setToolTipText()</code> — impostare suggerimento</li>
  <li>Migliorare informativeness</li>
  <li>Creare interfaccia chiara</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il suggerimento è necessario per migliorare informativeness di voce menu.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta suggerimento: <code>radioButtonMenuItem.setToolTipText("Seleziona tema");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setToolTipText()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare testi chiari, usare per migliorare informativeness, migliorare comprensione</li>
  <li><strong>⚠️ Evita:</strong> Suggerimenti troppo lunghi</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Suggerimento apparirà al passaggio del mouse. Puoi migliorare informativeness.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (324, 'it', 'Voce Menu Radio Maestro: Aggiungere Suggerimento',
        'Imposta suggerimento "Seleziona tema" via setToolTipText()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (321, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Aggiungere Acceleratore a Voce Menu (Esteso)</h2>
<p class="intro">L''acceleratore accelera lavoro. Puoi attivare voce menu via combinazione tasti, senza aprire menu. Senza acceleratore, dovrai aprire menu.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setAccelerator()</code> — impostare acceleratore</li>
  <li>Classe <code>KeyStroke</code> — combinazione tasti</li>
  <li>Creare tasti rapidi</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gli acceleratori sono necessari per accelerare lavoro con menu.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea combinazione: <code>KeyStroke keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_S, InputEvent.CTRL_DOWN_MASK);</code></li>
  <li>Imposta acceleratore: <code>menuItem.setAccelerator(keyStroke);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setAccelerator()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>KeyStroke.getKeyStroke()</code> per creare, usare CTRL, ALT, SHIFT, usare combinazioni standard</li>
  <li><strong>⚠️ Evita:</strong> Duplicare combinazioni</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Combinazione tasti apparirà in menu. Puoi attivare voce via combinazione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (321, 'it', 'Voce Menu Maestro: Aggiungere Acceleratore',
        'Crea KeyStroke per Ctrl+S via getKeyStroke(), imposta via setAccelerator()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (322, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Aggiungere Icona a Voce Menu</h2>
<p class="intro">L''icona migliora leggibilità. Puoi mostrare elemento visivo, migliorare comprensione di scopo voce. Senza icona, voce sarà solo con testo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setIcon()</code> — impostare icona</li>
  <li>Creare voci visualmente stilizzate</li>
  <li>Migliorare leggibilità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''icona è necessaria per migliorare leggibilità e stile visivo di voci menu.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta icona: <code>menuItem.setIcon(new ImageIcon("icon.png"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setIcon()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare ImageIcon per caricare, usare per stile visivo, usare icone chiare</li>
  <li><strong>⚠️ Evita:</strong> Icone troppo grandi — può essere brutto</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Voce menu avrà icona. Voce avrà elemento visivo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (322, 'it', 'Voce Menu Maestro: Aggiungere Icona', 'Imposta icona via setIcon() con ImageIcon')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (323, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Impostare Comando Azione per JRadioButtonMenuItem</h2>
<p class="intro">Il comando azione permette identificare voce menu. Puoi determinare quale voce è selezionata senza verificare sorgente. Senza comando, dovrai verificare sorgente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setActionCommand()</code> — impostare comando</li>
  <li>Metodo <code>getActionCommand()</code> — ottenere comando</li>
  <li>Identificare voce menu via comando</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il comando azione è necessario per identificare voce menu in gestore.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta comando: <code>radioButtonMenuItem.setActionCommand("RADIO");</code></li>
  <li>Ottieni comando in gestore: <code>radioButtonMenuItem.addActionListener(e -> {<br>
&nbsp;&nbsp;String cmd = e.getActionCommand();<br>
&nbsp;&nbsp;label.setText("Comando: " + cmd);<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setActionCommand()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>getActionCommand()</code> per ottenere, usare comandi chiari, usare per identificazione</li>
  <li><strong>⚠️ Evita:</strong> Duplicare comandi</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Potrai ottenere comando in gestore. Quando si seleziona, puoi determinare comando.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (323, 'it', 'Menu Radio Maestro: Impostare Comando Azione',
        'Imposta comando "RADIO" via setActionCommand(), ottieni comando in ActionListener via getActionCommand()')
ON CONFLICT (task_id, language_code) DO NOTHING;
