-- Flyway migration V5: Lesson 46
-- This migration contains lesson, tasks, and documentation for lesson 46

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (406, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Rispondere a Clic Mouse con MouseListener</h2>
<p class="intro">MouseListener rende componenti interattivi. Puoi rispondere a clic, determinare posizione cursore, distinguere pulsanti sinistro e destro. Senza ascoltatore mouse, componente non può rispondere a azioni utente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Interfaccia <code>MouseListener</code> — gestore eventi mouse</li>
  <li>Metodo <code>addMouseListener()</code> — aggiungere ascoltatore</li>
  <li>Eventi: clic, premere, rilasciare, entrare, uscire</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>MouseListener è necessario per creare componenti interattivi.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea componente (es., JPanel): <code>JPanel panel = new JPanel();</code></li>
  <li>Aggiungi ascoltatore mouse: <code>panel.addMouseListener(new MouseAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void mouseClicked(MouseEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Clic in posizione: " + e.getX() + ", " + e.getY());<br>
&nbsp;&nbsp;}<br>
});</code></li>
  <li>Aggiungi a form: <code>add(panel);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>MouseAdapter</code> per semplificazione</li>
  <li><strong>✅ Ottimo:</strong> Lambda per azioni semplici (se supportato), classe separata per logica complessa</li>
  <li><strong>⚠️ Evita:</strong> Implementare tutti i metodi MouseListener — troppo codice</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando clicchi componente, azione si eseguirà. Se usato JLabel, messaggio con coordinate clic apparirà su schermo. Componente ora risponde a mouse.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (406, 'it', 'Ascoltatore Mouse Principiante: Rispondere a Clic Mouse',
        'Crea pannello, aggiungi MouseListener che mostra "Clic!" al clic, e aggiungi a form')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (407, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Creare Pulsanti Radio in Menu con JRadioButtonMenuItem</h2>
<p class="intro">JRadioButtonMenuItem permette selezionare una opzione da gruppo in menu. Dimensione carattere, tema, modalità visualizzazione — tutto questo richiede selezionare una opzione. Senza loro, dovrai creare dialoghi separati.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>JRadioButtonMenuItem</code> — pulsante radio in menu</li>
  <li>Creare gruppo di pulsanti radio in menu</li>
  <li>Aggiungere a menu</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>JRadioButtonMenuItem è necessario per selezionare una opzione da gruppo in menu.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea gruppo: <code>ButtonGroup group = new ButtonGroup();</code></li>
  <li>Crea elementi radio: <code>JRadioButtonMenuItem item1 = new JRadioButtonMenuItem("Piccolo");<br>
JRadioButtonMenuItem item2 = new JRadioButtonMenuItem("Medio");</code></li>
  <li>Aggiungi a gruppo e menu: <code>group.add(item1);<br>
group.add(item2);<br>
menu.add(item1);<br>
menu.add(item2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> ButtonGroup per raggruppare</li>
  <li><strong>✅ Ottimo:</strong> Impostare selezionato di default via <code>setSelected()</code>, aggiungere ActionListener per gestione</li>
  <li><strong>⚠️ Evita:</strong> Non usare gruppo — si possono selezionare più</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Pulsanti radio appariranno in menu. Puoi selezionare una opzione, altra si deselezionerà automaticamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (407, 'it', 'Elemento Radio Menu Principiante: Creare Pulsanti Radio in Menu',
        'Crea ButtonGroup, crea due JRadioButtonMenuItem, aggiungi a gruppo e menu')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (408, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Gestire Selezione in JRadioButtonMenuItem</h2>
<p class="intro">Gestire selezione rende elemento radio interattivo. Puoi aggiornare altri componenti, applicare impostazioni, eseguire azioni. Senza questo, selezione non avrà effetto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Gestire selezione via ActionListener</li>
  <li>Determinare elemento selezionato</li>
  <li>Rispondere a selezione</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire selezione è necessario per creare elemento radio interattivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi ascoltatore: <code>item.addActionListener(e -> {<br>
&nbsp;&nbsp;if (item.isSelected()) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Selezionato: " + item.getText());<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>isSelected()</code> per verificare</li>
  <li><strong>✅ Ottimo:</strong> Ottenere testo via <code>getText()</code>, aggiornare altri componenti, usare ItemListener per gestione più precisa</li>
  <li><strong>⚠️ Evita:</strong> Ignorare selezione — perdita di funzionalità</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando selezioni, gestore si attiverà. Puoi ottenere elemento selezionato e eseguire azioni.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (408, 'it', 'Elemento Radio Menu Maestro: Gestire Selezione',
        'Aggiungi ActionListener, verifica isSelected(), mostra testo elemento via getText()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (409, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Creare Dialogo Conferma con JOptionPane</h2>
<p class="intro">I dialoghi di conferma proteggono da azioni accidentali. Eliminare file, uscire da programma, resettare dati — tutto questo richiede conferma. Senza loro, utente può perdere dati accidentalmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>showConfirmDialog()</code> — dialogo conferma</li>
  <li>Costanti <code>YES_NO_OPTION</code>, <code>YES_NO_CANCEL_OPTION</code></li>
  <li>Gestire risultato conferma</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il dialogo conferma è necessario per proteggere da azioni accidentali.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Mostra dialogo conferma: <code>int result = JOptionPane.showConfirmDialog(<br>
&nbsp;&nbsp;frame,<br>
&nbsp;&nbsp;"Sei sicuro?",<br>
&nbsp;&nbsp;"Conferma",<br>
&nbsp;&nbsp;JOptionPane.YES_NO_OPTION<br>
);</code></li>
  <li>Gestisci risultato: <code>if (result == JOptionPane.YES_OPTION) {<br>
&nbsp;&nbsp;label.setText("Utente ha accettato!");<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> YES_NO_OPTION per scelta semplice</li>
  <li><strong>✅ Ottimo:</strong> Usare YES_NO_CANCEL_OPTION per tre opzioni, verificare risultato prima di eseguire azione</li>
  <li><strong>⚠️ Evita:</strong> Ignorare risultato — azione si eseguirà sempre</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Dialogo con domanda e pulsanti apparirà. Utente può scegliere "Sì", "No" o "Annulla". Risultato si può gestire.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (409, 'it', 'Dialogo Maestro: Creare Dialogo Conferma',
        'Mostra dialogo conferma con YES_NO_OPTION, gestisci risultato YES_OPTION')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (412, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Aggiungere JRadioButtonMenuItem a Gruppo</h2>
<p class="intro">Il gruppo rende elementi mutualmente esclusivi. Puoi selezionare solo un elemento da gruppo. Senza gruppo, puoi selezionare più.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>ButtonGroup</code> — gruppo pulsanti</li>
  <li>Metodo <code>add()</code> — aggiungere a gruppo</li>
  <li>Creare elementi mutualmente esclusivi</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il gruppo è necessario per creare elementi mutualmente esclusivi.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea gruppo: <code>ButtonGroup group = new ButtonGroup();</code></li>
  <li>Aggiungi elementi: <code>group.add(item1);<br>
group.add(item2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> ButtonGroup per raggruppare</li>
  <li><strong>✅ Ottimo:</strong> Aggiungere tutti gli elementi radio a gruppo, usare per opzioni mutualmente esclusive</li>
  <li><strong>⚠️ Evita:</strong> Aggiungere a più gruppi</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Elementi saranno in un gruppo. Puoi selezionare solo un elemento da gruppo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (412, 'it', 'Elemento Radio Menu Maestro: Aggiungere a Gruppo',
        'Crea ButtonGroup, aggiungi due elementi radio via add()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (410, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Creare Dialogo Input con JOptionPane</h2>
<p class="intro">Il dialogo input permette richiedere dati da utente. Nome, password, impostazioni — tutto questo si può richiedere via dialogo. Senza questo, dovrai creare formulari separati.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>showInputDialog()</code> — dialogo input</li>
  <li>Ottenere testo inserito</li>
  <li>Gestire cancellazione input</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il dialogo input è necessario per richiedere dati da utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Mostra dialogo input: <code>String input = JOptionPane.showInputDialog(<br>
&nbsp;&nbsp;frame,<br>
&nbsp;&nbsp;"Inserisci tuo nome:",<br>
&nbsp;&nbsp;"Input",<br>
&nbsp;&nbsp;JOptionPane.QUESTION_MESSAGE<br>
);</code></li>
  <li>Gestisci risultato: <code>if (input != null && !input.isEmpty()) {<br>
&nbsp;&nbsp;label.setText("Inserito: " + input);<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Verificare null — utente può aver cancellato</li>
  <li><strong>✅ Ottimo:</strong> Verificare stringa vuota, usare QUESTION_MESSAGE per domanda</li>
  <li><strong>⚠️ Evita:</strong> Ignorare null — può esserci errore</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Dialogo con campo input apparirà. Utente può inserire testo e premere OK o cancellare. Testo inserito si può ottenere.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (410, 'it', 'Dialogo Maestro: Creare Dialogo Input',
        'Mostra dialogo input con domanda "Inserisci tuo nome:", gestisci risultato, verifica null e vuoto')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (414, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Gestire Cambio Stato in JRadioButtonMenuItem</h2>
<p class="intro">Gestire stato rende elemento interattivo. Puoi rispondere a selezione, aggiornare altri componenti. Senza gestione, selezione non avrà effetto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Gestire cambiamenti via ItemListener</li>
  <li>Ottenere stato</li>
  <li>Rispondere a cambiamenti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire stato è necessario per creare elemento menu interattivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi ascoltatore: <code>item.addItemListener(e -> {<br>
&nbsp;&nbsp;if (e.getStateChange() == ItemEvent.SELECTED) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Selezionato!");<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addItemListener()</code> per gestire</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>getStateChange()</code> per verificare, verificare SELECTED per selezione, aggiornare altri componenti</li>
  <li><strong>⚠️ Evita:</strong> Ignorare stato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando cambia stato, gestore si attiverà. Puoi gestire selezione e aggiornare altri componenti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (414, 'it', 'Elemento Radio Menu Maestro: Gestire Cambio Stato',
        'Aggiungi ItemListener, verifica getStateChange() == SELECTED, mostra messaggio')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (411, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Creare Pulsanti Personalizzati in JOptionPane</h2>
<p class="intro">I pulsanti personalizzati rendono dialogo flessibile. Puoi creare pulsanti con nomi necessari, aggiungere opzioni aggiuntive. Senza questo, dovrai usare pulsanti standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Creare pulsanti personalizzati</li>
  <li>Metodo <code>showOptionDialog()</code> — dialogo con opzioni</li>
  <li>Configurare pulsanti dialogo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I pulsanti personalizzati sono necessari per creare dialogo flessibile con opzioni necessarie.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea array pulsanti: <code>String[] options = {"Sì", "No", "Annulla"};</code></li>
  <li>Mostra dialogo: <code>int result = JOptionPane.showOptionDialog(<br>
&nbsp;&nbsp;frame,<br>
&nbsp;&nbsp;"Scegli azione",<br>
&nbsp;&nbsp;"Domanda",<br>
&nbsp;&nbsp;JOptionPane.YES_NO_CANCEL_OPTION,<br>
&nbsp;&nbsp;JOptionPane.QUESTION_MESSAGE,<br>
&nbsp;&nbsp;null,<br>
&nbsp;&nbsp;options,<br>
&nbsp;&nbsp;options[0]<br>
);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>showOptionDialog()</code> per pulsanti personalizzati</li>
  <li><strong>✅ Ottimo:</strong> Creare nomi pulsanti chiari, specificare pulsante di default, gestire risultato per indice</li>
  <li><strong>⚠️ Evita:</strong> Troppi pulsanti — può essere sovraccarico</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Dialogo con pulsanti personalizzati apparirà. Pulsanti avranno nomi specificati. Puoi scegliere pulsante necessario.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (411, 'it', 'Dialogo Maestro: Creare Pulsanti Personalizzati',
        'Crea array stringhe con tre pulsanti, mostra dialogo via showOptionDialog() con questi pulsanti')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (416, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 11: Aggiungere Icona a JRadioButtonMenuItem</h2>
<p class="intro">L''icona migliora leggibilità. Puoi mostrare elemento visivo, migliorare comprensione di scopo elemento. Senza icona, elemento sarà solo con testo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setIcon()</code> — impostare icona</li>
  <li>Creare elementi con stile visivo</li>
  <li>Migliorare leggibilità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''icona è necessaria per migliorare leggibilità e stile visivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta icona: <code>item.setIcon(new ImageIcon("icon.png"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setIcon()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare ImageIcon per caricare, usare per stile visivo, usare icone chiare</li>
  <li><strong>⚠️ Evita:</strong> Icone troppo grandi</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Elemento menu avrà icona. Elemento avrà elemento visivo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (416, 'it', 'Elemento Radio Menu Maestro: Aggiungere Icona', 'Imposta icona via setIcon() con ImageIcon')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (413, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Creare Dialogo Input con JOptionPane</h2>
<p class="intro">Il dialogo input permette ottenere dati. Puoi richiedere nome, valore, testo. Senza dialogo input, dovrai creare dialogo personalizzato.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>showInputDialog()</code> — dialogo input</li>
  <li>Ottenere dati inseriti</li>
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
  <li>Mostra dialogo: <code>String input = JOptionPane.showInputDialog(frame, "Inserisci nome:");</code></li>
  <li>Gestisci risultato: <code>if (input != null) {<br>
&nbsp;&nbsp;label.setText("Nome: " + input);<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>showInputDialog()</code> per input</li>
  <li><strong>✅ Ottimo:</strong> Verificare null per cancellazione, usare valore iniziale, usare per input semplice</li>
  <li><strong>⚠️ Evita:</strong> Input troppo complesso — serve dialogo personalizzato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Dialogo input apparirà. Puoi inserire valore e ottenerlo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (413, 'it', 'Dialogo Maestro: Creare Dialogo Input',
        'Mostra dialogo input via showInputDialog() con messaggio "Inserisci nome:", verifica risultato per null')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (415, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 10: Creare Dialogo Conferma con JOptionPane</h2>
<p class="intro">Il dialogo conferma permette ottenere conferma. Puoi richiedere conferma azione, ottenere risposta. Senza dialogo, non puoi ottenere conferma.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>showConfirmDialog()</code> — dialogo conferma</li>
  <li>Ottenere risultato (YES, NO, CANCEL)</li>
  <li>Creare dialoghi interattivi</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il dialogo conferma è necessario per ottenere conferma azione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Mostra dialogo: <code>int result = JOptionPane.showConfirmDialog(frame, "Eliminare?", "Conferma", JOptionPane.YES_NO_OPTION);</code></li>
  <li>Gestisci risultato: <code>if (result == JOptionPane.YES_OPTION) {<br>
&nbsp;&nbsp;label.setText("Sì!");<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>showConfirmDialog()</code> per conferma</li>
  <li><strong>✅ Ottimo:</strong> Usare YES_NO_OPTION per sì/no, usare YES_NO_CANCEL_OPTION per sì/no/annulla, verificare risultato</li>
  <li><strong>⚠️ Evita:</strong> Ignorare risultato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Dialogo conferma apparirà. Puoi scegliere sì, no o annulla.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (415, 'it', 'Dialogo Maestro: Creare Dialogo Conferma',
        'Mostra dialogo conferma via showConfirmDialog() con YES_NO_OPTION, verifica risultato == YES_OPTION')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (417, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 12: Creare Dialogo Messaggio con JOptionPane</h2>
<p class="intro">Il dialogo messaggio permette informare utente. Puoi mostrare messaggio, avviso, errore. Senza dialogo, non puoi informare utente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>showMessageDialog()</code> — dialogo messaggio</li>
  <li>Tipi messaggio (ERROR, INFORMATION, WARNING, QUESTION, PLAIN)</li>
  <li>Creare dialoghi informativi</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il dialogo messaggio è necessario per informare utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Mostra dialogo: <code>JOptionPane.showMessageDialog(frame, "Messaggio", "Titolo", JOptionPane.INFORMATION_MESSAGE);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>showMessageDialog()</code> per mostrare</li>
  <li><strong>✅ Ottimo:</strong> Usare INFORMATION_MESSAGE per informazione, usare ERROR_MESSAGE per errore, usare WARNING_MESSAGE per avviso</li>
  <li><strong>⚠️ Evita:</strong> Tipo messaggio sbagliato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Dialogo messaggio apparirà. Puoi mostrare informazione, avviso o errore.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (417, 'it', 'Dialogo Maestro: Creare Dialogo Messaggio',
        'Mostra dialogo messaggio via showMessageDialog() con INFORMATION_MESSAGE')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (418, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 13: Impostare Larghezza Colonna in JTable</h2>
<p class="intro">La larghezza colonna migliora leggibilità. Puoi impostare larghezza necessaria, migliorare visualizzazione. Senza impostare, larghezza sarà automatica.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setPreferredWidth()</code> — impostare larghezza preferita</li>
  <li>Gestire larghezza colonne</li>
  <li>Migliorare leggibilità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La larghezza colonna è necessaria per migliorare leggibilità tabella.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni modello colonne: <code>TableColumnModel columnModel = table.getColumnModel();</code></li>
  <li>Ottieni colonna: <code>TableColumn column = columnModel.getColumn(0);</code></li>
  <li>Imposta larghezza: <code>column.setPreferredWidth(200);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setPreferredWidth()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>getColumnModel()</code> per ottenere, usare per migliorare leggibilità, migliorare visualizzazione</li>
  <li><strong>⚠️ Evita:</strong> Colonne troppo strette o larghe</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Colonna sarà larghezza necessaria. Puoi migliorare leggibilità.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (418, 'it', 'Tabella Maestro: Impostare Larghezza Colonna',
        'Ottieni modello colonne via getColumnModel(), ottieni colonna 0, imposta larghezza 200 via setPreferredWidth()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (419, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 14: Impostare Altezza Riga in JTable</h2>
<p class="intro">L''altezza riga migliora leggibilità. Puoi impostare altezza necessaria, migliorare visualizzazione. Senza impostare, altezza sarà automatica.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setRowHeight()</code> — impostare altezza riga</li>
  <li>Gestire altezza righe</li>
  <li>Migliorare leggibilità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''altezza riga è necessaria per migliorare leggibilità tabella.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta altezza: <code>table.setRowHeight(30);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setRowHeight()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare per migliorare leggibilità, migliorare visualizzazione, fare altezza ragionevole</li>
  <li><strong>⚠️ Evita:</strong> Altezza troppo piccola o grande</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Righe saranno altezza necessaria. Puoi migliorare leggibilità.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (419, 'it', 'Tabella Maestro: Impostare Altezza Riga', 'Imposta altezza riga 30 via setRowHeight()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (420, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 15: Impostare Modo Auto-Ridimensionamento in JTable</h2>
<p class="intro">Il modo auto-ridimensionamento determina comportamento. Puoi impostare come cambiano colonne quando cambia dimensione tabella, migliorare layout. Senza impostare, modo sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setAutoResizeMode()</code> — impostare modo</li>
  <li>Costanti <code>JTable.AUTO_RESIZE_ALL_COLUMNS</code>, <code>JTable.AUTO_RESIZE_OFF</code></li>
  <li>Gestire ridimensionamento automatico</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il modo auto-ridimensionamento è necessario per gestire comportamento colonne quando cambia dimensione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta modo: <code>table.setAutoResizeMode(JTable.AUTO_RESIZE_ALL_COLUMNS);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setAutoResizeMode()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare AUTO_RESIZE_ALL_COLUMNS per tutte, usare AUTO_RESIZE_OFF per disabilitare, migliorare layout</li>
  <li><strong>⚠️ Evita:</strong> Usare modo inappropriato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Colonne cambieranno automaticamente. Puoi migliorare layout.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (420, 'it', 'Tabella Maestro: Impostare Modo Auto-Ridimensionamento',
        'Imposta modo AUTO_RESIZE_ALL_COLUMNS via setAutoResizeMode()')
ON CONFLICT (task_id, language_code) DO NOTHING;
