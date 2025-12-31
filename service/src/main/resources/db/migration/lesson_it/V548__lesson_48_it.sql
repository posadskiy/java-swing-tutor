-- Flyway migration V5: Lesson 48
-- This migration contains lesson, tasks, and documentation for lesson 48

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (429, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Tracciare Fuoco Componente con FocusListener</h2>
<p class="intro">FocusListener permette rispondere a fuoco. Validazione input, suggerimenti, feedback visivo — tutto questo richiede gestione fuoco. Senza questo, non puoi tracciare quale componente è attivo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Interfaccia <code>FocusListener</code> — gestione fuoco</li>
  <li>Metodi <code>focusGained()</code> e <code>focusLost()</code></li>
  <li>Gestire cambiamenti fuoco</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>FocusListener è necessario per tracciare componente attivo e gestire fuoco.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea ascoltatore: <code>FocusListener listener = new FocusListener() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void focusGained(FocusEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Componente ha ottenuto fuoco!");<br>
&nbsp;&nbsp;}<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void focusLost(FocusEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Componente ha perso fuoco!");<br>
&nbsp;&nbsp;}<br>
};</code></li>
  <li>Aggiungi ascoltatore: <code>textField.addFocusListener(listener);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Validare dati alla perdita fuoco</li>
  <li><strong>✅ Ottimo:</strong> Mostrare suggerimenti all''ottenimento fuoco, cambiare stile visivo al fuoco</li>
  <li><strong>⚠️ Evita:</strong> Troppi gestori — può essere lento</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando clicchi componente, otterrà fuoco. Quando clicchi altro componente, primo perderà fuoco. Puoi tracciare tutti i cambiamenti fuoco.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (429, 'it', 'FocusListener Principiante: Tracciare Fuoco Componente',
        'Crea FocusListener, gestisci ottenimento e perdita fuoco, aggiungi a campo testo')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (430, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Validazione alla Perdita Fuoco con FocusListener</h2>
<p class="intro">La validazione alla perdita fuoco migliora esperienza utente. Puoi verificare email, numero, data immediatamente dopo input. Senza questo, errori saranno scoperti solo all''invio form.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Validazione dati in <code>focusLost()</code></li>
  <li>Verificare correttezza input</li>
  <li>Mostrare errori validazione</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La validazione alla perdita fuoco è necessaria per migliorare esperienza utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>In focusLost ottieni testo: <code>String text = textField.getText();</code></li>
  <li>Verifica correttezza: <code>if (text.isEmpty()) {<br>
&nbsp;&nbsp;textField.setBackground(Color.RED);<br>
&nbsp;&nbsp;label.setText("Campo non può essere vuoto!");<br>
} else {<br>
&nbsp;&nbsp;textField.setBackground(Color.WHITE);<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Validare in <code>focusLost()</code></li>
  <li><strong>✅ Ottimo:</strong> Mostrare feedback visivo (colore sfondo), mostrare messaggio errore, ripristinare fuoco su errore: <code>requestFocus()</code></li>
  <li><strong>⚠️ Evita:</strong> Validare in focusGained — troppo presto</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Alla perdita fuoco, si eseguirà validazione. Se dati sono scorretti, campo si evidenzierà rosso. Puoi restituire fuoco per correzione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (430, 'it', 'FocusListener Maestro: Validare alla Perdita Fuoco',
        'In focusLost ottieni testo campo, verifica vuoto, imposta sfondo rosso su errore')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (432, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Navigare Carte in CardLayout</h2>
<p class="intro">La navigazione permette cambiare tra carte. Puoi mostrare carta necessaria, andare a successiva o precedente. Senza navigazione, solo prima carta sarà visibile.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>show()</code> — mostrare carta per nome</li>
  <li>Metodo <code>next()</code> — carta successiva</li>
  <li>Metodo <code>previous()</code> — carta precedente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La navigazione è necessaria per cambiare tra carte in CardLayout.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni gestore: <code>CardLayout layout = (CardLayout) panel.getLayout();</code></li>
  <li>Mostra carta: <code>layout.show(panel, "card1");</code></li>
  <li>O cambia: <code>layout.next(panel);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>show()</code> per mostrare per nome</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>next()</code> per carta successiva, usare <code>previous()</code> per precedente, usare <code>first()</code> e <code>last()</code> per estremi</li>
  <li><strong>⚠️ Evita:</strong> Cambiare senza verificare — può essere inaspettato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Carte cambieranno. Quando chiami metodo, carta necessaria si mostrerà. Puoi navigare tra carte.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (432, 'it', 'CardLayout Maestro: Navigare Carte',
        'Ottieni CardLayout, mostra carta "card1" via show(), poi cambia a successiva via next()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (431, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Gestire Navigazione Fuoco con FocusListener</h2>
<p class="intro">Gestire navigazione fuoco rende interfaccia conveniente. Puoi configurare ordine di transizione tra campi, nascondere componenti non necessari da navigazione. Senza questo, fuoco transiterà in ordine imprevedibile.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setFocusable()</code> — permettere fuoco</li>
  <li>Metodo <code>setFocusTraversalKeysEnabled()</code> — gestire navigazione</li>
  <li>Configurare ordine fuoco</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire navigazione fuoco è necessario per creare interfaccia conveniente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Permetti fuoco: <code>component.setFocusable(true);</code></li>
  <li>Configura navigazione: <code>component.setFocusTraversalKeysEnabled(true);</code></li>
  <li>Richiedi fuoco: <code>component.requestFocus();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setFocusable()</code> per gestire fuoco</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>setFocusTraversalKeysEnabled()</code> per navigazione, usare <code>requestFocus()</code> per fuoco programmatico, configurare ordine via FocusTraversalPolicy</li>
  <li><strong>⚠️ Evita:</strong> Rendere tutti i componenti non focalizzabili — perdita di funzionalità</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Fuoco transiterà in ordine necessario. Puoi gestire quali componenti ottengono fuoco.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (431, 'it', 'FocusListener Maestro: Gestire Navigazione Fuoco',
        'Imposta setFocusable(true), imposta setFocusTraversalKeysEnabled(true), richiedi fuoco via requestFocus()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (433, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Cambiare a Prima e Ultima Carta in CardLayout</h2>
<p class="intro">Cambiare a carte estreme accelera navigazione. Puoi andare rapidamente a prima o ultima carta. Senza questo, dovrai cambiare una per una.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>first()</code> — prima carta</li>
  <li>Metodo <code>last()</code> — ultima carta</li>
  <li>Navigare a carte estreme</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Cambiare a carte estreme è necessario per navigazione veloce.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni gestore: <code>CardLayout layout = (CardLayout) panel.getLayout();</code></li>
  <li>Cambia a prima: <code>layout.first(panel);</code></li>
  <li>O a ultima: <code>layout.last(panel);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>first()</code> per prima carta</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>last()</code> per ultima, usare per navigazione veloce, combinare con <code>next()</code> e <code>previous()</code></li>
  <li><strong>⚠️ Evita:</strong> Cambiare senza verificare</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Carta cambierà a prima o ultima. Puoi andare rapidamente a carte estreme.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (433, 'it', 'CardLayout Maestro: Cambiare a Prima e Ultima',
        'Ottieni CardLayout, cambia a prima via first(), poi a ultima via last()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (434, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Ottenere Conteggio Carte in CardLayout</h2>
<p class="intro">Il conteggio carte permette gestire navigazione. Puoi sapere quante carte ci sono, creare navigazione ciclica. Senza conteggio, non puoi gestire navigazione.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getComponentCount()</code> — conteggio componenti</li>
  <li>Contare carte in contenitore</li>
  <li>Migliorare navigazione</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il conteggio carte è necessario per gestire navigazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni conteggio: <code>int count = panel.getComponentCount();</code></li>
  <li>Usa conteggio: <code>JLabel label = new JLabel("Carte: " + count);<br>
add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getComponentCount()</code> per ottenere</li>
  <li><strong>✅ Ottimo:</strong> Usare per navigazione, usare per navigazione ciclica, verificare prima di navigare</li>
  <li><strong>⚠️ Evita:</strong> Ignorare conteggio</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Potrai ottenere conteggio carte. Puoi usare per navigazione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (434, 'it', 'CardLayout Maestro: Ottenere Conteggio Carte',
        'Ottieni conteggio componenti via getComponentCount(), mostralo')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (435, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Mostrare Carta per Nome in CardLayout</h2>
<p class="intro">Mostrare per nome semplifica navigazione. Puoi cambiare a carta per nome, senza sapere sua posizione. Senza nome, dovrai sapere posizione.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>show()</code> — mostrare carta per nome</li>
  <li>Navigare per nome carta</li>
  <li>Migliorare gestione carte</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Mostrare per nome è necessario per semplificare navigazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni gestore: <code>CardLayout layout = (CardLayout) panel.getLayout();</code></li>
  <li>Mostra carta: <code>layout.show(panel, "cardName");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>show()</code> per mostrare</li>
  <li><strong>✅ Ottimo:</strong> Usare nomi chiari, usare per navigazione, combinare con altri metodi</li>
  <li><strong>⚠️ Evita:</strong> Usare nomi inesistenti</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Carta cambierà per nome. Puoi cambiare a carta necessaria.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (435, 'it', 'CardLayout Maestro: Mostrare Carta per Nome',
        'Ottieni CardLayout, mostra carta "cardName" via show()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (436, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Impostare Orientamento Componente in FlowLayout</h2>
<p class="intro">L''orientamento componente è importante per lingue RTL. Puoi cambiare direzione per arabo, ebraico, migliorare supporto. Senza orientamento, layout sarà solo LTR.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setComponentOrientation()</code> — impostare orientamento</li>
  <li>Supporto lingue RTL</li>
  <li>Migliorare internazionalizzazione</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''orientamento componente è necessario per supporto lingue RTL.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta orientamento: <code>flowLayout.setComponentOrientation(ComponentOrientation.RIGHT_TO_LEFT);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setComponentOrientation()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare RIGHT_TO_LEFT per RTL, usare LEFT_TO_RIGHT per LTR, migliorare internazionalizzazione</li>
  <li><strong>⚠️ Evita:</strong> Usare orientamento sbagliato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componenti saranno disposti in orientamento specificato. Puoi supportare lingue RTL.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (436, 'it', 'FlowLayout Maestro: Impostare Orientamento Componente',
        'Imposta orientamento RIGHT_TO_LEFT via setComponentOrientation()')
ON CONFLICT (task_id, language_code) DO NOTHING;
