-- Flyway migration V5: Lesson 39
-- This migration contains lesson, tasks, and documentation for lesson 39

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (325, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Posizionare Componenti in Griglia con GridLayout</h2>
<p class="intro">GridLayout crea griglia ordinata. Calcolatrice, tastiera, tabellone di gioco — tutto questo è conveniente fare in griglia. Tutte le celle stesso size, sembra professionale.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>GridLayout</code> — gestore layout in griglia</li>
  <li>Creare griglia (righe × colonne)</li>
  <li>Posizionamento uniforme componenti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>GridLayout è necessario per creare griglia ordinata con stesse celle.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta GridLayout: <code>setLayout(new GridLayout(2, 3));</code> // 2 righe, 3 colonne</li>
  <li>Aggiungi componenti: <code>add(new JButton("1"));</code><br>
<code>add(new JButton("2"));</code><br>
<code>add(new JButton("3"));</code><br>
// e così via...</li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Specificare righe e colonne: <code>new GridLayout(righe, colonne)</code></li>
  <li><strong>✅ Ottimo:</strong> Con spazi: <code>new GridLayout(2, 3, 5, 5)</code> — spazi 5px, zero righe o colonne — calcolato automaticamente</li>
  <li><strong>⚠️ Evita:</strong> Troppe righe/colonne — celle diventeranno piccole</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componenti saranno posizionati in griglia. Questa è tabella ordinata con stesse celle. Tutti i componenti saranno stesso size. Questo è perfetto per calcolatrici e tabelloni di gioco.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (325, 'it', 'GridLayout Principiante: Posizionare Componenti in Griglia',
        'Imposta GridLayout 2x3 (2 righe, 3 colonne) e aggiungi 6 pulsanti')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (328, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Creare Casella di Controllo in Menu</h2>
<p class="intro">JCheckBoxMenuItem permette abilitare/disabilitare opzioni in menu. Mostrare pannelli, abilitare modi, configurare parametri — tutto questo richiede caselle di controllo in menu. Senza di esse, dovrai creare dialoghi separati.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>JCheckBoxMenuItem</code> — casella di controllo in menu</li>
  <li>Creare caselle di controllo in menu</li>
  <li>Aggiungere a menu</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>JCheckBoxMenuItem è necessario per abilitare/disabilitare opzioni direttamente in menu.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea elemento casella: <code>JCheckBoxMenuItem item = new JCheckBoxMenuItem("Mostra pannello");</code></li>
  <li>Aggiungi a menu: <code>menu.add(item);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Nomi chiari</li>
  <li><strong>✅ Ottimo:</strong> Impostare stato iniziale via <code>setSelected()</code>, aggiungere ActionListener per gestire</li>
  <li><strong>⚠️ Evita:</strong> Troppe caselle di controllo — può essere sovraccarico</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Casella di controllo apparirà in menu. Puoi cliccare per abilitare/disabilitare. Segno di spunta apparirà o scomparirà.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (328, 'it', 'Voce Menu Casella Principiante: Creare Casella in Menu',
        'Crea JCheckBoxMenuItem con testo "Mostra pannello", aggiungi a menu')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (326, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Rilevare Clic Mouse</h2>
<p class="intro">Rilevare clic permette reagire a azioni utente. Clic singolo — selezione, doppio clic — apertura. Senza questo, non puoi gestire interazione con mouse.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>mouseClicked()</code> — gestire clic</li>
  <li>Metodo <code>getClickCount()</code> — conteggio clic</li>
  <li>Gestire clic singoli e doppi</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Rilevare clic è necessario per gestire interazione con mouse.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Sovrascrivi mouseClicked: <code>@Override<br>
public void mouseClicked(MouseEvent e) {<br>
&nbsp;&nbsp;if (e.getClickCount() == 1) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Clic singolo!");<br>
&nbsp;&nbsp;} else if (e.getClickCount() == 2) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Doppio clic!");<br>
&nbsp;&nbsp;}<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Verificare conteggio clic via <code>getClickCount()</code></li>
  <li><strong>✅ Ottimo:</strong> Gestire clic singoli separatamente da doppi, verificare pulsante mouse: <code>e.getButton() == MouseEvent.BUTTON1</code></li>
  <li><strong>⚠️ Evita:</strong> Gestire tutti i clic uguali — perdita di funzionalità</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando si clicca, gestore si attiverà. Puoi determinare clic singolo o doppio.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (326, 'it', 'Mouse Maestro: Rilevare Clic Mouse',
        'Sovrascrivi mouseClicked, verifica conteggio clic, gestisci clic singolo e doppio')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (329, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Gestire Cambio Stato JCheckBoxMenuItem</h2>
<p class="intro">Gestire cambiamenti rende elemento casella interattivo. Puoi aggiornare altri componenti, eseguire azioni, cambiare modi. Senza questo, casella sarà solo per visualizzazione.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Gestire cambio via ActionListener</li>
  <li>Verificare stato casella</li>
  <li>Reagire a cambio</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire cambiamenti è necessario per creare voce menu casella interattiva.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi ascoltatore: <code>item.addActionListener(e -> {<br>
&nbsp;&nbsp;if (item.isSelected()) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Abilitato!");<br>
&nbsp;&nbsp;} else {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Disabilitato!");<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>isSelected()</code> per verificare</li>
  <li><strong>✅ Ottimo:</strong> Aggiornare altri componenti, usare ItemListener per gestione più precisa</li>
  <li><strong>⚠️ Evita:</strong> Ignorare stato — perdita di funzionalità</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando cambia stato, gestore si attiverà. Puoi verificare stato e eseguire azioni.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (329, 'it', 'Voce Menu Casella Maestro: Gestire Cambio',
        'Aggiungi ActionListener, verifica isSelected(), mostra messaggio dipendendo da stato')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (327, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Gestire Trascinamento Mouse</h2>
<p class="intro">Gestire trascinamento permette creare elementi interattivi. Trascinare finestre, disegnare, spostare oggetti — tutto questo richiede gestire trascinamento. Senza questo, non puoi creare interfaccia interattiva.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Interfaccia <code>MouseMotionListener</code> — gestire movimento mouse</li>
  <li>Metodo <code>mouseDragged()</code> — gestire trascinamento</li>
  <li>Tracciare trascinamento</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire trascinamento è necessario per creare elementi interfaccia interattivi.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi MouseMotionListener: <code>component.addMouseMotionListener(new MouseMotionListener() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void mouseDragged(MouseEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;int x = e.getX();<br>
&nbsp;&nbsp;&nbsp;&nbsp;int y = e.getY();<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Trascinando: " + x + ", " + y);<br>
&nbsp;&nbsp;}<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void mouseMoved(MouseEvent e) {}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>mouseDragged()</code> per trascinamento</li>
  <li><strong>✅ Ottimo:</strong> Salvare posizione iniziale in <code>mousePressed()</code>, calcolare offset in <code>mouseDragged()</code>, aggiornare posizione componente quando si trascina</li>
  <li><strong>⚠️ Evita:</strong> Gestire senza verificare pulsante premuto — può essere inaspettato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando si trascina mouse, gestore si attiverà. Puoi tracciare movimento mouse con pulsante premuto. Puoi spostare componenti, disegnare.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (327, 'it', 'Mouse Maestro: Gestire Trascinamento',
        'Aggiungi MouseMotionListener, sovrascrivi mouseDragged(), ottieni coordinate e mostrale')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (330, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Lavorare con Modello Stato JCheckBoxMenuItem</h2>
<p class="intro">Il modello permette controllare stato. Puoi ottenere modello, cambiarlo programmaticamente. Senza modello, non puoi controllare stato.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getModel()</code> — ottenere modello</li>
  <li>Lavorare con ButtonModel</li>
  <li>Gestione programmatica stato</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il modello è necessario per gestione programmatica stato di voce menu casella.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni modello: <code>ButtonModel model = item.getModel();</code></li>
  <li>Imposta stato: <code>model.setSelected(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getModel()</code> per ottenere</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>setSelected()</code> per impostare, usare per gestione programmatica</li>
  <li><strong>⚠️ Evita:</strong> Cambiare modello direttamente</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Potrai gestire stato via modello. Stato può essere cambiato programmaticamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (330, 'it', 'Voce Menu Casella Maestro: Lavorare con Modello',
        'Ottieni modello via getModel(), imposta stato true via setSelected()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (334, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 10: Mostrare Menu Popup</h2>
<p class="intro">Mostrare menu permette mostrarlo. Puoi mostrare menu in posizione necessaria, migliorare accessibilità. Senza mostrare, menu non sarà visibile.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>show()</code> — mostrare menu</li>
  <li>Mostrare menu in posizione specificata</li>
  <li>Migliorare esperienza utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Mostrare menu è necessario per mostrare menu popup in posizione necessaria.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Mostra menu: <code>popupMenu.show(component, 100, 100);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>show()</code> per mostrare</li>
  <li><strong>✅ Ottimo:</strong> Usare coordinate per posizione, usare per migliorare accessibilità, migliorare esperienza utente</li>
  <li><strong>⚠️ Evita:</strong> Mostrare fuori schermo</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Menu popup apparirà in posizione specificata. Puoi migliorare accessibilità.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (334, 'it', 'Menu Popup Maestro: Mostrare Menu', 'Mostra menu via show(component, 100, 100)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (332, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Gestire Cambio Stato JCheckBoxMenuItem via ItemListener</h2>
<p class="intro">Gestire stato rende elemento interattivo. Puoi reagire a selezione, aggiornare altri componenti. Senza gestire, selezione non avrà effetto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Gestire cambiamenti via ItemListener</li>
  <li>Ottenere stato</li>
  <li>Reagire a cambiamenti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire stato è necessario per creare voce menu interattiva.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi ascoltatore: <code>item.addItemListener(e -> {<br>
&nbsp;&nbsp;boolean selected = item.isSelected();<br>
&nbsp;&nbsp;label.setText("Selezionato: " + selected);<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addItemListener()</code> per gestire</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>isSelected()</code> per verificare, usare <code>getStateChange()</code> per cambio, aggiornare altri componenti</li>
  <li><strong>⚠️ Evita:</strong> Ignorare stato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando cambia stato, gestore si attiverà. Puoi gestire selezione e aggiornare altri componenti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (332, 'it', 'Voce Menu Casella Maestro: Gestire Cambio Stato',
        'Aggiungi ItemListener, verifica isSelected(), mostra stato')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (331, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Aggiungere Icona a JCheckBoxMenuItem</h2>
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
<p>L''icona è necessaria per migliorare leggibilità e stile visivo di voce menu.</p>
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
<p>Voce menu avrà icona. Voce avrà elemento visivo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (331, 'it', 'Voce Menu Casella Maestro: Aggiungere Icona', 'Imposta icona via setIcon() con ImageIcon')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (333, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Impostare Bordo per JPopupMenu</h2>
<p class="intro">Il bordo migliora aspetto visivo. Puoi aggiungere cornice, migliorare design. Senza bordo, menu sarà senza cornice.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setBorder()</code> — impostare bordo</li>
  <li>Personalizzare bordo menu</li>
  <li>Migliorare aspetto visivo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il bordo è necessario per migliorare aspetto visivo di menu.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea bordo: <code>Border border = BorderFactory.createLineBorder(Color.BLACK, 2);</code></li>
  <li>Imposta bordo: <code>popupMenu.setBorder(border);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setBorder()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare BorderFactory per creare, usare <code>createLineBorder()</code> per linea, migliorare aspetto visivo</li>
  <li><strong>⚠️ Evita:</strong> Bordo troppo spesso</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Menu popup avrà bordo. Puoi migliorare aspetto visivo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (333, 'it', 'Menu Popup Maestro: Impostare Bordo',
        'Crea bordo via BorderFactory.createLineBorder(Color.BLACK, 2), imposta via setBorder()')
ON CONFLICT (task_id, language_code) DO NOTHING;
