-- Flyway migration V5: Lesson 44
-- This migration contains lesson, tasks, and documentation for lesson 44

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (383, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare Layout a Molla con SpringLayout</h2>
<p class="intro">SpringLayout permette creare layout flessibili. Componenti possono "attrarsi" tra loro attraverso molle. Questo dà controllo massimo su posizionamento.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>SpringLayout</code> — layout a molla</li>
  <li>Classe <code>Spring</code> — molla</li>
  <li>Creare connessioni a molla</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>SpringLayout è necessario per creare layout flessibili con controllo massimo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta gestore: <code>SpringLayout layout = new SpringLayout();<br>
setLayout(layout);</code></li>
  <li>Aggiungi componente: <code>add(button);</code></li>
  <li>Imposta connessioni a molla: <code>layout.putConstraint(SpringLayout.WEST, button, 10, SpringLayout.WEST, this);<br>
layout.putConstraint(SpringLayout.NORTH, button, 10, SpringLayout.NORTH, this);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>putConstraint()</code> per impostare connessioni</li>
  <li><strong>✅ Ottimo:</strong> Collegare componenti tra loro, usare <code>Spring.constant()</code> per valori fissi</li>
  <li><strong>⚠️ Evita:</strong> Troppe connessioni — difficile da gestire</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componenti saranno posizionati con connessioni a molla. Quando cambia dimensione finestra, componenti si "attrarranno" tra loro.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (383, 'it', 'SpringLayout Principiante: Creare Layout a Molla',
        'Imposta SpringLayout, aggiungi pulsante, imposta connessioni WEST e NORTH con spazio 10 da bordo contenitore')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (384, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Collegare Componenti Tra Loro in SpringLayout</h2>
<p class="intro">Collegare componenti crea layout flessibile. Componenti manterranno distanze tra loro quando cambia dimensione finestra. Senza questo, componenti possono "separarsi".</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Collegare componenti tra loro</li>
  <li>Creare connessioni a molla tra componenti</li>
  <li>Configurare distanze tra componenti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Collegare componenti è necessario per creare layout flessibile con preservazione distanze.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi componenti: <code>add(button1);<br>
add(button2);</code></li>
  <li>Collega componenti: <code>layout.putConstraint(SpringLayout.EAST, button1, 10, SpringLayout.WEST, button2);</code></li>
  <li>O collega verticalmente: <code>layout.putConstraint(SpringLayout.SOUTH, button1, 10, SpringLayout.NORTH, button2);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Collegare componenti via <code>putConstraint()</code></li>
  <li><strong>✅ Ottimo:</strong> Usare EAST-WEST per collegamento orizzontale, usare SOUTH-NORTH per collegamento verticale, collegare a contenitore per legame a bordi</li>
  <li><strong>⚠️ Evita:</strong> Troppe connessioni — difficile da gestire</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componenti saranno collegati tra loro. Quando cambia dimensione finestra, manterranno distanze.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (384, 'it', 'SpringLayout Maestro: Collegare Componenti Tra Loro',
        'Aggiungi due pulsanti, collega EAST di primo pulsante a WEST di secondo con spazio 10')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (386, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Determinare Conteggio Clic in MouseListener</h2>
<p class="intro">Il conteggio clic permette distinguere azioni. Clic singolo per selezione, doppio per aprire — tutto questo richiede determinare conteggio clic. Senza questo, non puoi distinguere tipi di clic.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getClickCount()</code> — conteggio clic</li>
  <li>Distinguere clic singolo e doppio</li>
  <li>Gestire diversi tipi di clic</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Determinare conteggio clic è necessario per distinguere tipi di azioni.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Gestisci clic: <code>component.addMouseListener(new MouseAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void mouseClicked(MouseEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;if (e.getClickCount() == 2) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Doppio clic!");<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getClickCount()</code> per verificare</li>
  <li><strong>✅ Ottimo:</strong> Gestire clic singolo (1), gestire clic doppio (2), gestire clic triplo (3)</li>
  <li><strong>⚠️ Evita:</strong> Ignorare conteggio — perdita di funzionalità</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Potrai distinguere tipi di clic. Su clic singolo si eseguirà un''azione, su doppio — altra.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (386, 'it', 'MouseListener Maestro: Determinare Conteggio Clic',
        'Aggiungi MouseListener, verifica getClickCount() == 2 per clic doppio, mostra messaggio')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (385, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Usare Aritmetica Molle in SpringLayout</h2>
<p class="intro">L''aritmetica molle permette creare layout complessi. Puoi calcolare distanze, creare dipendenze, fare interfacce adattive. Senza questo, dovrai usare solo valori fissi.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodi <code>Spring.sum()</code>, <code>Spring.max()</code>, <code>Spring.min()</code></li>
  <li>Operazioni aritmetiche con molle</li>
  <li>Creare connessioni a molla complesse</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''aritmetica molle è necessaria per creare layout complessi con distanze calcolate.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea molle: <code>Spring spring1 = Spring.constant(10);<br>
Spring spring2 = Spring.constant(20);</code></li>
  <li>Somma molle: <code>Spring sum = Spring.sum(spring1, spring2);</code></li>
  <li>Usa in connessione: <code>layout.putConstraint(SpringLayout.WEST, button, sum, SpringLayout.WEST, this);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>Spring.sum()</code> per somma</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>Spring.max()</code> per massimo, usare <code>Spring.min()</code> per minimo, combinare più operazioni</li>
  <li><strong>⚠️ Evita:</strong> Calcoli troppo complessi — può essere confuso</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Molle saranno calcolate matematicamente. Distanze dipenderanno da altri componenti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (385, 'it', 'SpringLayout Maestro: Usare Aritmetica Molle',
        'Crea due molle via Spring.constant(10) e Spring.constant(20), sommale via Spring.sum(), usa in putConstraint')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (387, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Determinare Pulsante Mouse in MouseListener</h2>
<p class="intro">Determinare pulsante permette distinguere azioni. Pulsante sinistro per selezione, destro per menu contestuale — tutto questo richiede determinare pulsante. Senza questo, non puoi distinguere pulsanti.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getButton()</code> — ottenere pulsante</li>
  <li>Costanti pulsanti (BUTTON1, BUTTON2, BUTTON3)</li>
  <li>Distinguere pulsante sinistro, destro e medio</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Determinare pulsante è necessario per distinguere azioni dipendendo da pulsante premuto.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Gestisci clic: <code>component.addMouseListener(new MouseAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void mouseClicked(MouseEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;if (e.getButton() == MouseEvent.BUTTON1) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Pulsante sinistro!");<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getButton()</code> per verificare</li>
  <li><strong>✅ Ottimo:</strong> Usare BUTTON1 per sinistro, usare BUTTON2 per medio, usare BUTTON3 per destro</li>
  <li><strong>⚠️ Evita:</strong> Ignorare pulsante — perdita di funzionalità</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Potrai distinguere pulsanti mouse. Quando clicchi, puoi determinare quale pulsante è premuto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (387, 'it', 'MouseListener Maestro: Determinare Pulsante Mouse',
        'Aggiungi MouseListener, verifica getButton() == BUTTON1, mostra messaggio')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (390, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Richiedere Fuoco in FocusListener</h2>
<p class="intro">Richiedere fuoco permette gestire fuoco. Puoi impostare fuoco programmaticamente, migliorare navigazione. Senza richiesta, fuoco sarà impostato automaticamente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>requestFocus()</code> — richiedere fuoco</li>
  <li>Metodo <code>requestFocusInWindow()</code> — richiedere fuoco in finestra</li>
  <li>Gestire fuoco</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Richiedere fuoco è necessario per gestione programmatica di fuoco.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Richiedi fuoco: <code>component.requestFocusInWindow();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>requestFocusInWindow()</code> per richiedere</li>
  <li><strong>✅ Ottimo:</strong> Usare per gestire fuoco, migliorare navigazione, usare per migliorare UX</li>
  <li><strong>⚠️ Evita:</strong> Richiedere troppo spesso</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componente otterrà fuoco. Puoi impostare fuoco programmaticamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (390, 'it', 'FocusListener Maestro: Richiedere Fuoco', 'Richiedi fuoco via requestFocusInWindow()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (388, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Determinare Posizione Mouse in MouseListener</h2>
<p class="intro">La posizione mouse permette determinare luogo clic. Puoi sapere dove è avvenuto clic, gestire azione contestuale. Senza posizione, non puoi determinare luogo clic.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getX()</code> — coordinata X</li>
  <li>Metodo <code>getY()</code> — coordinata Y</li>
  <li>Determinare posizione cursore</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Determinare posizione mouse è necessario per gestire azioni contestuali.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Gestisci clic: <code>component.addMouseListener(new MouseAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void mouseClicked(MouseEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;int x = e.getX();<br>
&nbsp;&nbsp;&nbsp;&nbsp;int y = e.getY();<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Posizione: (" + x + ", " + y + ")");<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getX()</code> per X</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>getY()</code> per Y, usare <code>getPoint()</code> per punto, usare per azioni contestuali</li>
  <li><strong>⚠️ Evita:</strong> Ignorare posizione</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Potrai ottenere posizione mouse. Quando clicchi, puoi sapere coordinate.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (388, 'it', 'MouseListener Maestro: Determinare Posizione Mouse',
        'Aggiungi MouseListener, ottieni X via getX(), Y via getY(), mostra posizione')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (393, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 11: Gestire Focalizzabilità in FocusListener</h2>
<p class="intro">La focalizzabilità determina disponibilità fuoco. Puoi rendere componente non disponibile per fuoco, migliorare navigazione. Senza gestione, tutti i componenti sono focalizzabili.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setFocusable()</code> — impostare focalizzabilità</li>
  <li>Metodo <code>isFocusable()</code> — verificare focalizzabilità</li>
  <li>Gestire disponibilità fuoco</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire focalizzabilità è necessario per migliorare navigazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Disabilita fuoco: <code>component.setFocusable(false);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setFocusable()</code> per gestire</li>
  <li><strong>✅ Ottimo:</strong> Usare false per disabilitare, usare true per abilitare, migliorare navigazione</li>
  <li><strong>⚠️ Evita:</strong> Disabilitare per componenti interattivi</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componente sarà non disponibile per fuoco. Puoi migliorare navigazione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (393, 'it', 'FocusListener Maestro: Gestire Focalizzabilità', 'Disabilita fuoco via setFocusable(false)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (389, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Determinare Conteggio Clic in MouseListener</h2>
<p class="intro">Il conteggio clic permette distinguere tipi. Puoi gestire clic singolo, doppio, triplo, creare diverse azioni. Senza verifica, non puoi distinguere tipi.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getClickCount()</code> — ottenere conteggio</li>
  <li>Distinguere clic singolo e doppio</li>
  <li>Gestire diversi tipi di clic</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Determinare conteggio clic è necessario per distinguere tipi di azioni.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Gestisci clic: <code>component.addMouseListener(new MouseAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void mouseClicked(MouseEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;if (e.getClickCount() == 2) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Doppio clic!");<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getClickCount()</code> per verificare</li>
  <li><strong>✅ Ottimo:</strong> Verificare == 1 per singolo, verificare == 2 per doppio, verificare == 3 per triplo</li>
  <li><strong>⚠️ Evita:</strong> Ignorare conteggio</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Potrai determinare conteggio clic. Quando clicchi, puoi sapere se clic singolo, doppio o triplo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (389, 'it', 'MouseListener Maestro: Determinare Conteggio Clic',
        'Aggiungi MouseListener, verifica getClickCount() == 2, mostra messaggio')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (396, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 14: Ottenere Proprietario Fuoco in FocusListener</h2>
<p class="intro">Il proprietario fuoco determina componente attivo. Puoi ottenere componente con fuoco, gestirlo, migliorare funzionalità. Senza ottenere, non puoi determinare componente attivo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>KeyboardFocusManager</code> — gestore fuoco</li>
  <li>Metodo <code>getFocusOwner()</code> — ottenere proprietario</li>
  <li>Determinare componente con fuoco</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Ottenere proprietario fuoco è necessario per determinare componente attivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni proprietario: <code>Component owner = KeyboardFocusManager.getCurrentKeyboardFocusManager().getFocusOwner();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getFocusOwner()</code> per ottenere</li>
  <li><strong>✅ Ottimo:</strong> Usare KeyboardFocusManager, verificare null, migliorare funzionalità</li>
  <li><strong>⚠️ Evita:</strong> Ignorare null</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Potrai ottenere componente con fuoco. Puoi gestire componente attivo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (396, 'it', 'FocusListener Maestro: Ottenere Proprietario Fuoco',
        'Ottieni proprietario fuoco via KeyboardFocusManager.getCurrentKeyboardFocusManager().getFocusOwner()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (391, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Ottenere Vincolo in SpringLayout</h2>
<p class="intro">Ottenere vincolo permette gestire posizione. Puoi ottenere vincolo, cambiarlo, migliorare gestione. Senza ottenere, non puoi cambiare vincolo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getConstraint()</code> — ottenere vincolo</li>
  <li>Ottenere vincoli componente</li>
  <li>Gestire vincoli</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Ottenere vincolo è necessario per gestire posizione componente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni vincolo: <code>SpringLayout.Constraints constraints = layout.getConstraints(component);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getConstraints()</code> per ottenere</li>
  <li><strong>✅ Ottimo:</strong> Usare per gestione, cambiare vincoli, migliorare gestione</li>
  <li><strong>⚠️ Evita:</strong> Cambiare senza necessità</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Potrai ottenere vincoli componente. Puoi cambiare posizione, dimensione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (391, 'it', 'SpringLayout Maestro: Ottenere Vincolo', 'Ottieni vincoli componente via getConstraints()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (392, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 10: Impostare Vincolo in SpringLayout</h2>
<p class="intro">Il vincolo collega componenti. Puoi impostare distanza tra componenti, migliorare layout. Senza vincolo, componenti non saranno collegati.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>putConstraint()</code> — impostare vincolo</li>
  <li>Collegare componenti</li>
  <li>Migliorare layout</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il vincolo è necessario per collegare componenti e migliorare layout.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta vincolo: <code>layout.putConstraint(SpringLayout.WEST, component2, 10, SpringLayout.EAST, component1);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>putConstraint()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare SpringLayout.WEST, EAST per lati, usare per collegare, migliorare layout</li>
  <li><strong>⚠️ Evita:</strong> Creare vincoli conflittuali</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componenti saranno collegati da vincolo. Puoi impostare distanza tra componenti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (392, 'it', 'SpringLayout Maestro: Impostare Vincolo',
        'Imposta vincolo via putConstraint(WEST, component2, 10, EAST, component1)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (394, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 12: Creare Molla in SpringLayout</h2>
<p class="intro">La molla determina elasticità vincolo. Puoi creare molla con parametri necessari, migliorare layout. Senza molla, vincolo sarà rigido.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>Spring</code> — molla</li>
  <li>Metodo <code>Spring.constant()</code> — creare molla costante</li>
  <li>Creare molle per vincoli</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La molla è necessaria per creare vincoli elastici.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea molla: <code>Spring spring = Spring.constant(100);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>Spring.constant()</code> per creare</li>
  <li><strong>✅ Ottimo:</strong> Usare per vincoli, usare per layout, migliorare posizionamento</li>
  <li><strong>⚠️ Evita:</strong> Creare molle troppo rigide</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Molla sarà creata. Puoi usare per vincoli.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (394, 'it', 'SpringLayout Maestro: Creare Molla', 'Crea molla 100 via Spring.constant(100)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (395, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 13: Ottenere Vincolo in SpringLayout</h2>
<p class="intro">Il vincolo determina posizione. Puoi ottenere vincolo componente, cambiarlo, migliorare funzionalità. Senza ottenere, non puoi cambiare vincolo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getConstraint()</code> — ottenere vincolo</li>
  <li>Accesso a vincoli componente</li>
  <li>Migliorare funzionalità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Ottenere vincolo è necessario per cambiare posizione componente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni vincolo: <code>SpringLayout.Constraints constraints = layout.getConstraints(component);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getConstraints()</code> per ottenere</li>
  <li><strong>✅ Ottimo:</strong> Usare per accedere a vincoli, usare per cambiare, migliorare funzionalità</li>
  <li><strong>⚠️ Evita:</strong> Cambiare senza necessità</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Potrai ottenere vincolo componente. Puoi cambiare posizione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (395, 'it', 'SpringLayout Maestro: Ottenere Vincolo', 'Ottieni vincolo via getConstraints(component)')
ON CONFLICT (task_id, language_code) DO NOTHING;
