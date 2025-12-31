-- Flyway migration V5: Lesson 29
-- This migration contains lesson, tasks, and documentation for lesson 29

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

-- Task 1: Creating JPopupMenu
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (238, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare Menu Contestuale</h2>
<p class="intro">I menu popup forniscono accesso rapido alle funzioni. Copia, incolla, elimina, proprietà — tutto questo è conveniente nel menu contestuale. Senza di esso, devi cercare funzioni nel menu principale.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>JPopupMenu</code> — menu popup</li>
  <li>Creare menu contestuale</li>
  <li>Mostrare menu in posizione specifica</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I menu contestuali sono necessari per accesso rapido alle funzioni a seconda del contesto.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea menu popup: <code>JPopupMenu popup = new JPopupMenu();</code></li>
  <li>Aggiungi elementi menu: <code>popup.add(new JMenuItem("Copia"));</code> e <code>popup.add(new JMenuItem("Incolla"));</code></li>
  <li>Mostra menu: <code>popup.show(component, x, y);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Per azioni contestuali</li>
  <li><strong>✅ Ottimo:</strong> Mostrare al clic destro, usare coordinate del cursore, aggiungere separatori per raggruppare</li>
  <li><strong>⚠️ Evita:</strong> Troppi elementi — il menu sarà sovraccaricato</li>
</ul>
<p><strong>Importante:</strong> Usare MouseListener per mostrare al clic destro.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un menu popup. Il menu sarà nella posizione specificata. Puoi selezionare elemento dal menu.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (238, 'it', 'Menu Popup Principiante: Creare Menu Contestuale',
        'Crea JPopupMenu, aggiungi due elementi menu ("Copia", "Incolla"), mostra menu tramite show()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 2: Menu Items
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (239, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Aggiungere Vari Elementi al Menu</h2>
<p class="intro">Vari elementi rendono il menu funzionale. Puoi aggiungere elementi regolari, caselle, pulsanti radio. Senza varietà, il menu sarà limitato.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Aggiungere vari tipi di elementi</li>
  <li>JMenuItem, JCheckBoxMenuItem, JRadioButtonMenuItem</li>
  <li>Separatori per raggruppare</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La varietà di tipi di elementi permette di creare menu più funzionali e convenienti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi elemento regolare: <code>popup.add(new JMenuItem("Copia"));</code></li>
  <li>Aggiungi separatore: <code>popup.addSeparator();</code></li>
  <li>Aggiungi casella: <code>popup.add(new JCheckBoxMenuItem("Mostra pannello"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Diversi tipi di elementi</li>
  <li><strong>✅ Ottimo:</strong> Raggruppare elementi correlati con separatori, usare JCheckBoxMenuItem per opzioni, usare JRadioButtonMenuItem per selezione</li>
  <li><strong>⚠️ Evita:</strong> Troppi elementi — il menu sarà lungo</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Appariranno vari elementi nel menu. Puoi aggiungere elementi regolari, caselle, separatori.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (239, 'it', 'Menu Popup Maestro: Aggiungere Elementi Menu',
        'Crea JPopupMenu, aggiungi JMenuItem, separatore e JCheckBoxMenuItem')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 3: Show Location
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (240, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Mostrare Menu in Posizione Necessaria</h2>
<p class="intro">Il posizionamento rende il menu conveniente. Il menu appare dove è il cursore, o in luogo necessario. Senza posizionamento adeguato, il menu può apparire non dove previsto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>show(Component, int x, int y)</code> — mostrare in posizione</li>
  <li>Usare coordinate del cursore</li>
  <li>Mostrare relativo al componente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il posizionamento adeguato è necessario per la convenienza di usare menu contestuale.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni coordinate del cursore: <code>int x = e.getX();</code> e <code>int y = e.getY();</code></li>
  <li>Mostra menu: <code>popup.show(component, x, y);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Coordinate del cursore</li>
  <li><strong>✅ Ottimo:</strong> Mostrare al clic destro, usare getX() e getY() da MouseEvent, mostrare relativo al componente</li>
  <li><strong>⚠️ Evita:</strong> Mostrare in posizione fissa — può essere scomodo</li>
</ul>
<p><strong>Importante:</strong> Coordinate relative al componente. Il menu si posiziona automaticamente.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il menu apparirà nella posizione del cursore. Il menu sarà dove è stato il clic.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (240, 'it', 'Menu Popup Maestro: Mostrare Menu in Posizione Necessaria',
        'Crea JPopupMenu, aggiungi MouseListener, al clic destro mostra menu in posizione del cursore tramite show()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 4: Invoker
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (241, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Ottenere Sorgente del Menu</h2>
<p class="intro">La sorgente determina il contesto. Puoi scoprire quale componente ha invocato il menu, e adattare elementi del menu. Senza sorgente, non puoi determinare il contesto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getInvoker()</code> — ottenere sorgente</li>
  <li>Componente che ha invocato il menu</li>
  <li>Usare sorgente per contesto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Ottenere sorgente è necessario per adattare il menu a seconda del contesto.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni sorgente: <code>Component invoker = popup.getInvoker();</code></li>
  <li>Usa sorgente: <code>if (invoker instanceof JPanel) {<br>
&nbsp;&nbsp;// Adatta menu per pannello<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getInvoker()</code> per ottenere sorgente</li>
  <li><strong>✅ Ottimo:</strong> Adattare menu a seconda della sorgente, usare per azioni contestuali, verificare tipo di sorgente</li>
  <li><strong>⚠️ Evita:</strong> Ignorare sorgente — il menu sarà uguale ovunque</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Puoi ottenere componente che ha invocato il menu. Puoi adattare il menu a seconda della sorgente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (241, 'it', 'Menu Popup Maestro: Scoprire Sorgente del Menu',
        'Crea JPopupMenu, mostralo, ottieni sorgente tramite getInvoker() e mostra tipo in console')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 5: Border
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (242, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Aggiungere Bordo al Menu</h2>
<p class="intro">Il bordo crea separazione visiva. Puoi evidenziare il menu, creare cornice, migliorare leggibilità. Senza bordo, il menu può fondersi con lo sfondo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setBorder(Border)</code> — impostare bordo</li>
  <li>Creare separazione visiva</li>
  <li>Migliorare aspetto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il bordo migliora la percezione visiva e la leggibilità del menu.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea bordo: <code>Border border = BorderFactory.createLineBorder(Color.GRAY);</code></li>
  <li>Imposta bordo: <code>popup.setBorder(border);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> BorderFactory per creare</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>createLineBorder()</code> per linea, usare <code>createRaisedBevelBorder()</code> per sollevato, usare per separazione visiva</li>
  <li><strong>⚠️ Evita:</strong> Bordo troppo spesso — può essere eccessivo</li>
</ul>
<p><strong>Importante:</strong> Rendi il bordo sottile.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il menu avrà un bordo. Il menu sarà evidenziato con cornice.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (242, 'it', 'Menu Popup Maestro: Aggiungere Bordo',
        'Crea JPopupMenu, crea bordo tramite BorderFactory.createLineBorder(), imposta tramite setBorder()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 6: Listeners
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (243, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Tracciare Eventi del Menu</h2>
<p class="intro">Gli ascoltatori permettono di reagire agli eventi. Puoi tracciare quando il menu viene mostrato o chiuso, eseguire azioni. Senza ascoltatori, non puoi tracciare eventi.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Ascoltatore <code>PopupMenuListener</code> — tracciare eventi del menu</li>
  <li>Eventi: mostrare, cancellare, chiudere</li>
  <li>Reagire a eventi del menu</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Tracciare eventi è necessario per reagire alle azioni dell''utente con il menu.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi ascoltatore: <code>popup.addPopupMenuListener(new PopupMenuListener() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void popupMenuWillBecomeVisible(PopupMenuEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Il menu sarà mostrato");<br>
&nbsp;&nbsp;}<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void popupMenuWillBecomeInvisible(PopupMenuEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Il menu sarà nascosto");<br>
&nbsp;&nbsp;}<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void popupMenuCanceled(PopupMenuEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Menu cancellato");<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> PopupMenuListener per tracciare</li>
  <li><strong>✅ Ottimo:</strong> Reagire a mostrare menu, reagire a chiudere menu, reagire a cancellare menu</li>
  <li><strong>⚠️ Evita:</strong> Ascoltatore senza azioni — inutile</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando si mostra o chiude il menu, verrà eseguita un''azione. Se hai usato JLabel, appariranno messaggi sullo schermo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (243, 'it', 'Menu Popup Maestro: Tracciare Eventi del Menu',
        'Crea JPopupMenu, aggiungi PopupMenuListener, mostra messaggio in console quando il menu viene mostrato')
ON CONFLICT (task_id, language_code) DO NOTHING;
