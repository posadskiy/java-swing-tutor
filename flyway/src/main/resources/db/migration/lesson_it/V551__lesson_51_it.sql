-- Flyway migration V5: Lesson 51
-- This migration contains lesson, tasks, and documentation for lesson 51

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (448, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare Componente Personalizzato</h2>
<p class="intro">I componenti personalizzati permettono creare elementi unici. Puoi creare componente con comportamento necessario, grafica, funzionalità. Senza componenti personalizzati, puoi solo usare standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Estendere <code>JComponent</code> — classe base</li>
  <li>Creare componente personalizzato</li>
  <li>Sovrascrivere metodi</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I componenti personalizzati sono necessari per creare elementi interfaccia unici.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea classe estendendo JComponent: <code>class MyComponent extends JComponent {<br>
&nbsp;&nbsp;public MyComponent() {<br>
&nbsp;&nbsp;&nbsp;&nbsp;setPreferredSize(new Dimension(200, 100));<br>
&nbsp;&nbsp;}<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;protected void paintComponent(Graphics g) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;super.paintComponent(g);<br>
&nbsp;&nbsp;&nbsp;&nbsp;// Rendering personalizzato<br>
&nbsp;&nbsp;}<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Estendere JComponent per funzionalità base</li>
  <li><strong>✅ Ottimo:</strong> Impostare dimensione preferita, sovrascrivere <code>paintComponent()</code> per rendering, aggiungere funzionalità personalizzata</li>
  <li><strong>⚠️ Evita:</strong> Non impostare dimensione — può esserci problema con layout</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componente personalizzato apparirà. Puoi creare componente con comportamento necessario.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (448, 'it', 'Componente Personalizzato Principiante: Crea Tuo Componente',
        'Crea classe estendendo JComponent, imposta dimensione preferita 200x100, sovrascrivi paintComponent()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (449, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Impostare Dimensione Preferita in Componente Personalizzato</h2>
<p class="intro">Le dimensioni influenzano layout. Il gestore layout usa dimensione preferita per posizionamento, migliorare disposizione. Senza dimensioni, dimensione sarà automatica.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setPreferredSize(Dimension)</code> — impostare dimensione</li>
  <li>Metodo <code>setMinimumSize(Dimension)</code> — dimensione minima</li>
  <li>Metodo <code>setMaximumSize(Dimension)</code> — dimensione massima</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le dimensioni sono necessarie per layout corretto di componenti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta dimensione preferita: <code>setPreferredSize(new Dimension(300, 200));</code></li>
  <li>Imposta dimensione minima: <code>setMinimumSize(new Dimension(100, 50));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setPreferredSize()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>setMinimumSize()</code> per limitare, usare <code>setMaximumSize()</code> per limitare, usare per layout</li>
  <li><strong>⚠️ Evita:</strong> Impostare dimensioni troppo piccole o grandi</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componente avrà dimensioni impostate. Il gestore layout le considererà quando posiziona.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (449, 'it', 'Componente Personalizzato Maestro: Imposta Dimensione Preferita',
        'Crea componente personalizzato, imposta dimensione preferita 300x200 via setPreferredSize()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (450, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Gestire Eventi in Componente Personalizzato</h2>
<p class="intro">Gestire eventi rende componente interattivo. Puoi rispondere a clic, pressioni tasti, movimenti mouse, creare elementi interattivi. Senza gestione, componente sarà statico.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Aggiungere ascoltatori eventi</li>
  <li>Gestire mouse e tastiera</li>
  <li>Creare componenti interattivi</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire eventi è necessario per creare componenti interattivi.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi ascoltatore mouse: <code>addMouseListener(new MouseAdapter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void mouseClicked(MouseEvent e) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Clic!");<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addMouseListener()</code> per mouse</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>addKeyListener()</code> per tastiera, usare MouseAdapter per convenienza, creare componenti interattivi</li>
  <li><strong>⚠️ Evita:</strong> Ignorare eventi</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componente risponderà a eventi. Puoi creare componente interattivo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (450, 'it', 'Componente Personalizzato Maestro: Gestisci Eventi',
        'Crea componente personalizzato, aggiungi MouseListener, gestisci mouseClicked(), mostra messaggio')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (451, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Aggiungere Proprietà Personalizzate a Componente</h2>
<p class="intro">Le proprietà personalizzate estendono funzionalità. Puoi aggiungere proprietà, gestire stato, configurare componente. Senza proprietà, componente sarà base.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Aggiungere campi privati</li>
  <li>Getters e setters</li>
  <li>Gestire stato componente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le proprietà personalizzate sono necessarie per estendere funzionalità componente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi campo privato: <code>private String text = "Testo";</code></li>
  <li>Aggiungi getter e setter: <code>public String getText() { return text; }<br>
public void setText(String text) { this.text = text; repaint(); }</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Campi privati</li>
  <li><strong>✅ Ottimo:</strong> Usare getters e setters, chiamare <code>repaint()</code> al cambiare, gestire stato</li>
  <li><strong>⚠️ Evita:</strong> Usare campi pubblici</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componente avrà proprietà personalizzate. Puoi configurare componente attraverso proprietà.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (451, 'it', 'Componente Personalizzato Maestro: Aggiungi Proprietà Personalizzate',
        'Crea componente personalizzato, aggiungi campo privato text, crea getter e setter, in setter chiama repaint()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (452, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Aggiungere Suggerimento a Componente Personalizzato</h2>
<p class="intro">Il suggerimento aiuta utente. Puoi mostrare informazioni aggiuntive, spiegare scopo componente, migliorare comprensione. Senza suggerimento, utente può non capire scopo componente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setToolTipText(String)</code> — impostare suggerimento</li>
  <li>Mostrare informazioni al passare mouse</li>
  <li>Migliorare esperienza utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il suggerimento è necessario per migliorare esperienza utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta suggerimento: <code>setToolTipText("Questo è componente personalizzato");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setToolTipText()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare suggerimenti informativi, spiegare scopo componente, usare per aiutare utente</li>
  <li><strong>⚠️ Evita:</strong> Usare suggerimenti troppo lunghi</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Al passare mouse, apparirà suggerimento. Questo è suggerimento popup con informazioni. Puoi migliorare esperienza utente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (452, 'it', 'Componente Personalizzato Maestro: Aggiungi Suggerimento',
        'Crea componente personalizzato, imposta suggerimento "Componente personalizzato" via setToolTipText()')
ON CONFLICT (task_id, language_code) DO NOTHING;
