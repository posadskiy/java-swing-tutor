-- Flyway migration V5: Lesson 40
-- This migration contains lesson, tasks, and documentation for lesson 40

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (335, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare Griglia Flessibile con GridBagLayout</h2>
<p class="intro">GridBagLayout — gestore layout più potente. Moduli complessi, interfacce adattive, componenti di diverse dimensioni — tutto questo richiede GridBagLayout. Senza questo, moduli complessi sembreranno disordinati.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>GridBagLayout</code> — griglia flessibile</li>
  <li>Classe <code>GridBagConstraints</code> — vincoli per componenti</li>
  <li>Creare layout complesso</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>GridBagLayout è necessario per creare layout complessi e flessibili.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta gestore: <code>setLayout(new GridBagLayout());</code></li>
  <li>Crea vincoli: <code>GridBagConstraints gbc = new GridBagConstraints();</code></li>
  <li>Configura vincoli e aggiungi componente: <code>gbc.gridx = 0;<br>
gbc.gridy = 0;<br>
gbc.fill = GridBagConstraints.HORIZONTAL;<br>
add(button, gbc);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Costanti per fill: HORIZONTAL, VERTICAL, BOTH, NONE</li>
  <li><strong>✅ Ottimo:</strong> Configurare weightx e weighty per allungamento, usare insets per spazi</li>
  <li><strong>⚠️ Evita:</strong> Layout troppo complesso — difficile da mantenere</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componenti saranno posizionati in griglia flessibile. Ogni componente può occupare diverse celle e allungarsi.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (335, 'it', 'GridBagLayout Principiante: Creare Griglia Flessibile',
        'Imposta GridBagLayout, crea vincoli, aggiungi pulsante in posizione (0,0) con fill=HORIZONTAL')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (336, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Configurare Allungamento in GridBagLayout</h2>
<p class="intro">Configurare allungamento rende interfaccia adattiva. Quando cambia dimensione finestra, componenti si allungheranno proporzionalmente. Senza questo, interfaccia sembrerà disordinata in diverse dimensioni.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Proprietà <code>weightx</code> e <code>weighty</code> — priorità allungamento</li>
  <li>Configurare allungamento componenti</li>
  <li>Creare layout adattivo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Configurare allungamento è necessario per creare interfaccia adattiva.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Configura weightx: <code>gbc.weightx = 1.0;</code></li>
  <li>Configura weighty: <code>gbc.weighty = 1.0;</code></li>
  <li>Aggiungi componente: <code>add(button, gbc);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> weightx = 1.0 per allungamento orizzontale</li>
  <li><strong>✅ Ottimo:</strong> Usare weighty = 1.0 per allungamento verticale, usare 0.0 per componenti che non devono allungarsi</li>
  <li><strong>⚠️ Evita:</strong> Tutti i componenti con weight = 1.0 — saranno stessa dimensione</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componenti si allungheranno quando cambia dimensione finestra. Componenti con weight = 1.0 prenderanno tutto spazio disponibile.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (336, 'it', 'GridBagLayout Maestro: Configurare Allungamento',
        'Configura weightx = 1.0 e weighty = 1.0 per vincoli, aggiungi componente')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (338, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Configurare Allineamento in FlowLayout</h2>
<p class="intro">L''allineamento rende interfaccia ordinata. Componenti saranno allineati uguali, interfaccia sembrerà professionale. Senza allineamento, componenti saranno posizionati caoticamente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Costanti allineamento (LEFT, CENTER, RIGHT)</li>
  <li>Metodo <code>setAlignment()</code> — impostare allineamento</li>
  <li>Configurare allineamento componenti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''allineamento è necessario per creare interfaccia ordinata.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea gestore con allineamento: <code>FlowLayout layout = new FlowLayout(FlowLayout.CENTER);</code></li>
  <li>Imposta gestore: <code>setLayout(layout);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> CENTER per centrare</li>
  <li><strong>✅ Ottimo:</strong> Usare LEFT per allineamento sinistra, usare RIGHT per allineamento destra, usare LEADING/TRAILING per direzione testo</li>
  <li><strong>⚠️ Evita:</strong> Diverso allineamento per diversi componenti</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componenti saranno allineati. Tutti i componenti saranno allineati uguali. Interfaccia sembrerà ordinata.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (338, 'it', 'FlowLayout Maestro: Configurare Allineamento',
        'Crea FlowLayout con allineamento CENTER, imposta gestore')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (337, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Allungare Componente Attraverso Multiple Celle</h2>
<p class="intro">Allungare componenti attraverso multiple celle rende layout flessibile. Intestazioni, pulsanti grandi, aree testo — tutto questo può occupare multiple celle. Senza questo, componenti saranno limitati a una cella.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Proprietà <code>gridwidth</code> e <code>gridheight</code> — dimensione componente in celle</li>
  <li>Creare componenti occupando multiple celle</li>
  <li>Configurare dimensioni componenti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Allungare componenti attraverso multiple celle è necessario per creare layout flessibile.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Configura gridwidth: <code>gbc.gridwidth = 2;</code></li>
  <li>Configura gridheight: <code>gbc.gridheight = 2;</code></li>
  <li>Aggiungi componente: <code>add(button, gbc);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> gridwidth per allungamento orizzontale</li>
  <li><strong>✅ Ottimo:</strong> Usare gridheight per allungamento verticale, usare GridBagConstraints.REMAINDER per spazio rimanente, combinare gridwidth e gridheight per componenti grandi</li>
  <li><strong>⚠️ Evita:</strong> Componenti troppo grandi — può essere disordinato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componente occuperà multiple celle. Componente si allungherà attraverso numero specificato di celle.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (337, 'it', 'GridBagLayout Maestro: Allungare Componente Attraverso Multiple Celle',
        'Imposta gridwidth = 2 e gridheight = 2 per vincoli, aggiungi componente')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (339, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Configurare Spazi in FlowLayout</h2>
<p class="intro">Gli spazi rendono layout ordinato. Componenti non saranno premuti tra loro, ci sarà separazione visiva. Senza spazi, componenti saranno posizionati strettamente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setHgap()</code> — spazio orizzontale</li>
  <li>Metodo <code>setVgap()</code> — spazio verticale</li>
  <li>Configurare spazi in FlowLayout</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gli spazi sono necessari per creare layout ordinato con separazione visiva.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea gestore: <code>FlowLayout layout = new FlowLayout();</code></li>
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
<p>Spazi appariranno tra componenti. Componenti non saranno premuti tra loro. Layout sembrerà ordinato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (339, 'it', 'FlowLayout Maestro: Configurare Spazi',
        'Crea FlowLayout, imposta spazi orizzontale e verticale a 10')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (342, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Impostare Ancora in GridBagLayout</h2>
<p class="intro">L''ancora determina posizione in cella. Puoi ancorare componente a bordo cella, centrare, migliorare layout. Senza ancora, posizione sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Campo <code>anchor</code> in <code>GridBagConstraints</code> — ancora</li>
  <li>Posizionare componente in cella</li>
  <li>Migliorare layout</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''ancora è necessaria per posizionamento preciso di componente in cella.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta ancora: <code>constraints.anchor = GridBagConstraints.CENTER;</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> anchor per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare CENTER per centrare, usare NORTH, SOUTH, EAST, WEST, migliorare layout</li>
  <li><strong>⚠️ Evita:</strong> Usare ancora errata</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componente sarà posizionato per ancora. Puoi centrare, ancorare a bordi.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (342, 'it', 'GridBagLayout Maestro: Impostare Ancora',
        'Imposta ancora CENTER via constraints.anchor = GridBagConstraints.CENTER')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (340, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Creare Dialogo Input</h2>
<p class="intro">Il dialogo input permette ottenere dati. Puoi richiedere testo, numero, migliorare interattività. Senza dialogo, non puoi ottenere input.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>showInputDialog()</code> — dialogo input</li>
  <li>Ottenere input da utente</li>
  <li>Creare dialoghi interattivi</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il dialogo input è necessario per ottenere dati da utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea dialogo: <code>String input = JOptionPane.showInputDialog("Inserisci nome:");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>showInputDialog()</code> per creare</li>
  <li><strong>✅ Ottimo:</strong> Usare messaggi chiari, gestire null (cancellazione), usare per ottenere dati</li>
  <li><strong>⚠️ Evita:</strong> Ignorare cancellazione</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Dialogo input apparirà. Puoi inserire testo, ottenere risultato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (340, 'it', 'Dialogo Maestro: Creare Dialogo Input',
        'Crea dialogo input via showInputDialog("Inserisci nome:"), salva risultato')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (344, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 10: Impostare Riempimento in GridBagLayout</h2>
<p class="intro">Il riempimento determina allungamento. Puoi allungare componente orizzontalmente, verticalmente, entrambi assi, migliorare layout. Senza riempimento, componente sarà dimensione standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Campo <code>fill</code> in <code>GridBagConstraints</code> — riempimento</li>
  <li>Allungare componente in cella</li>
  <li>Migliorare layout</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il riempimento è necessario per gestire allungamento di componente in cella.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta riempimento: <code>constraints.fill = GridBagConstraints.BOTH;</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> fill per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare BOTH per entrambi assi, usare HORIZONTAL per orizzontale, usare VERTICAL per verticale</li>
  <li><strong>⚠️ Evita:</strong> Usare riempimento errato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componente si allungherà per riempimento. Puoi migliorare layout.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (344, 'it', 'GridBagLayout Maestro: Impostare Riempimento',
        'Imposta riempimento BOTH via constraints.fill = GridBagConstraints.BOTH')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (341, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Creare Dialogo Conferma</h2>
<p class="intro">Il dialogo conferma permette ottenere risposta. Puoi richiedere conferma azione, migliorare sicurezza. Senza dialogo, non puoi confermare azione.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>showConfirmDialog()</code> — dialogo conferma</li>
  <li>Ottenere risposta utente</li>
  <li>Creare dialoghi interattivi</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il dialogo conferma è necessario per ottenere conferma azione da utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea dialogo: <code>int result = JOptionPane.showConfirmDialog(null, "Confermare azione?", "Conferma", JOptionPane.YES_NO_OPTION);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>showConfirmDialog()</code> per creare</li>
  <li><strong>✅ Ottimo:</strong> Usare YES_NO_OPTION per scelta, gestire risultato, usare per conferme</li>
  <li><strong>⚠️ Evita:</strong> Ignorare risultato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Dialogo conferma apparirà. Puoi scegliere sì/no, ottenere risultato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (341, 'it', 'Dialogo Maestro: Creare Dialogo Conferma',
        'Crea dialogo conferma via showConfirmDialog() con YES_NO_OPTION, salva risultato')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (343, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Creare Dialogo Messaggio</h2>
<p class="intro">Il dialogo messaggio permette notificare utente. Puoi mostrare informazione, avviso, errore, migliorare comunicazione. Senza dialogo, non puoi notificare.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>showMessageDialog()</code> — dialogo messaggio</li>
  <li>Mostrare messaggi informativi</li>
  <li>Migliorare esperienza utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il dialogo messaggio è necessario per notificare utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea dialogo: <code>JOptionPane.showMessageDialog(null, "Operazione completata", "Informazione", JOptionPane.INFORMATION_MESSAGE);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>showMessageDialog()</code> per creare</li>
  <li><strong>✅ Ottimo:</strong> Usare INFORMATION_MESSAGE per informazione, usare WARNING_MESSAGE per avviso, usare ERROR_MESSAGE per errore</li>
  <li><strong>⚠️ Evita:</strong> Usare tipo inappropriato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Dialogo messaggio apparirà. Puoi notificare utente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (343, 'it', 'Dialogo Maestro: Creare Dialogo Messaggio',
        'Crea dialogo messaggio via showMessageDialog() con INFORMATION_MESSAGE')
ON CONFLICT (task_id, language_code) DO NOTHING;
