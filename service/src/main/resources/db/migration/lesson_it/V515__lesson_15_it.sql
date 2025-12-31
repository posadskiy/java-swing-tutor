-- Flyway migration V5: Lesson 15
-- This migration contains lesson, tasks, and documentation for lesson 15

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (119, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare una barra di scorrimento</h2>
<p class="intro">JScrollBar permette di scorrere il contenuto. Liste grandi, testi lunghi, immagini grandi — tutto questo richiede scorrimento. Senza questo, il contenuto non entrerà nello schermo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>JScrollBar</code> — barra di scorrimento</li>
  <li>Creare barra di scorrimento orizzontale e verticale</li>
  <li>Aggiungere barra di scorrimento al form</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La barra di scorrimento è necessaria per scorrere contenuto che non entra nello schermo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea barra di scorrimento: <code>JScrollBar scrollBar = new JScrollBar(JScrollBar.VERTICAL, 0, 10, 0, 100);</code></li>
  <li>Aggiungi al form: <code>add(scrollBar);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> VERTICAL per verticale, HORIZONTAL per orizzontale</li>
  <li><strong>✅ Eccellente:</strong> Specificare orientamento, valore, estensione, min, max, usare JScrollPane invece di JScrollBar per scorrimento automatico</li>
  <li><strong>⚠️ Evita:</strong> Usare JScrollBar direttamente — generalmente JScrollPane è migliore</li>
</ul>
<p><strong>Importante:</strong> value — valore attuale. extent — area visibile. min, max — valore minimo e massimo.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà una barra di scorrimento. È una barra di scorrimento che può essere spostata. Generalmente si usa dentro JScrollPane per scorrimento automatico.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (119, 'it', 'Barra di scorrimento principiante: crea una barra di scorrimento',
        'Crea una barra di scorrimento verticale con intervallo 0-100 e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (120, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Orientamento barra di scorrimento</h2>
<p class="intro">L''orientamento influenza l''aspetto della barra di scorrimento. Orizzontale — per scorrere per larghezza, verticale — per altezza. Puoi scegliere orientamento adatto per il contenuto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setOrientation(int)</code> — impostare orientamento</li>
  <li>Costanti <code>HORIZONTAL</code> e <code>VERTICAL</code></li>
  <li>Barra di scorrimento orizzontale e verticale</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Scegliere orientamento permette di adattare la barra di scorrimento per varie direzioni di scorrimento del contenuto.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta orientamento: <code>scrollBar.setOrientation(JScrollBar.HORIZONTAL);</code></li>
  <li>O verticale: <code>scrollBar.setOrientation(JScrollBar.VERTICAL);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> HORIZONTAL per orizzontale, VERTICAL per verticale</li>
  <li><strong>✅ Eccellente:</strong> Scegliere orientamento in base al contenuto, usare per scorrere nella direzione necessaria</li>
  <li><strong>⚠️ Evita:</strong> Usare orientamento errato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La barra di scorrimento avrà l''orientamento impostato. Orizzontale — da sinistra a destra, verticale — dall''alto verso il basso.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (120, 'it', 'Barra di scorrimento maestro: imposta orientamento',
        'Crea una barra di scorrimento, imposta orientamento orizzontale tramite setOrientation(JScrollBar.HORIZONTAL)')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (121, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Intervallo barra di scorrimento</h2>
<p class="intro">L''intervallo definisce i limiti dello scorrimento. Puoi impostare qualsiasi intervallo in base alla dimensione del contenuto. Senza intervallo, lo scorrimento non avrà senso.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setMinimum(int)</code> — impostare minimo</li>
  <li>Il metodo <code>setMaximum(int)</code> — impostare massimo</li>
  <li>Gestire intervallo di scorrimento</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''intervallo definisce i limiti dello scorrimento e permette di adattare la barra di scorrimento per varie dimensioni di contenuto.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta minimo: <code>scrollBar.setMinimum(0);</code></li>
  <li>Imposta massimo: <code>scrollBar.setMaximum(1000);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMinimum()</code> e <code>setMaximum()</code> per impostare</li>
  <li><strong>✅ Eccellente:</strong> Usare costruttore JScrollBar(orientation, value, extent, min, max), usare valori ragionevoli, usare per diverse dimensioni di contenuto</li>
  <li><strong>⚠️ Evita:</strong> Impostare minimo maggiore di massimo</li>
</ul>
<p><strong>Importante:</strong> <code>getMinimum()</code> — ottenere minimo. <code>getMaximum()</code> — ottenere massimo.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La barra di scorrimento avrà l''intervallo impostato. Il valore sarà limitato da questo intervallo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (121, 'it', 'Barra di scorrimento maestro: imposta valore minimo e massimo',
        'Crea una barra di scorrimento, imposta minimo 0 e massimo 1000 tramite setMinimum() e setMaximum()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (122, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Valore attuale barra di scorrimento</h2>
<p class="intro">Il valore attuale definisce la posizione dello scorrimento. Puoi impostare la posizione programmaticamente, scorrere al posto necessario. Senza gestire la posizione, lo scorrimento sarà solo manuale.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setValue(int)</code> — impostare valore</li>
  <li>Il metodo <code>getValue()</code> — ottenere valore</li>
  <li>Gestire posizione di scorrimento</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire il valore attuale permette di controllare programmaticamente la posizione dello scorrimento.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta valore: <code>scrollBar.setValue(500);</code></li>
  <li>Ottieni valore: <code>int value = scrollBar.getValue();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setValue()</code> per impostare, <code>getValue()</code> per ottenere</li>
  <li><strong>✅ Eccellente:</strong> Scorrere programmaticamente al posto necessario, usare per scorrimento automatico</li>
  <li><strong>⚠️ Evita:</strong> Impostare valore fuori dall''intervallo</li>
</ul>
<p><strong>Importante:</strong> Il valore deve essere nell''intervallo [minimo, massimo]. Usa per scorrimento automatico.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La barra di scorrimento si imposterà alla posizione specificata. Il controllo si sposterà al valore specificato. Se collegato al contenuto, il contenuto scorrerà.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (122, 'it', 'Barra di scorrimento maestro: imposta valore attuale',
        'Crea una barra di scorrimento, imposta valore 500 tramite setValue()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (123, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Incremento unitario barra di scorrimento</h2>
<p class="intro">L''incremento unitario definisce la precisione dello scorrimento. Puoi impostare quante unità scorrere quando si fa clic sulle frecce. Senza impostazione, l''incremento sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setUnitIncrement(int)</code> — impostare incremento unitario</li>
  <li>Scorrere di una unità</li>
  <li>Gestire precisione di scorrimento</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''incremento unitario permette di configurare la precisione dello scorrimento quando si usano le frecce della barra di scorrimento.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta incremento unitario: <code>scrollBar.setUnitIncrement(10);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setUnitIncrement()</code> per impostare</li>
  <li><strong>✅ Eccellente:</strong> Usare valori ragionevoli, usare per scorrimento preciso, configurare in base al contenuto</li>
  <li><strong>⚠️ Evita:</strong> Incremento troppo grande o piccolo</li>
</ul>
<p><strong>Importante:</strong> <code>getUnitIncrement()</code> — ottenere incremento unitario.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando si fa clic sulle frecce, la barra di scorrimento scorrerà dell''incremento impostato. Puoi configurare la precisione dello scorrimento.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (123, 'it', 'Barra di scorrimento maestro: imposta incremento unitario',
        'Crea una barra di scorrimento, imposta incremento unitario 10 tramite setUnitIncrement()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (124, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Incremento di blocco barra di scorrimento</h2>
<p class="intro">L''incremento di blocco definisce lo scorrimento veloce. Puoi impostare quante unità scorrere quando si fa clic sull''area della barra di scorrimento. Senza impostazione, l''incremento sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setBlockIncrement(int)</code> — impostare incremento di blocco</li>
  <li>Scorrere di un blocco</li>
  <li>Gestire scorrimento veloce</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''incremento di blocco permette di configurare lo scorrimento veloce quando si fa clic sull''area della barra di scorrimento.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta incremento di blocco: <code>scrollBar.setBlockIncrement(50);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setBlockIncrement()</code> per impostare</li>
  <li><strong>✅ Eccellente:</strong> Usare valori ragionevoli, usare per scorrimento veloce, configurare in base al contenuto</li>
  <li><strong>⚠️ Evita:</strong> Incremento troppo grande o piccolo</li>
</ul>
<p><strong>Importante:</strong> <code>getBlockIncrement()</code> — ottenere incremento di blocco.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando si fa clic sull''area della barra di scorrimento, scorrerà del blocco impostato. Puoi configurare lo scorrimento veloce.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (124, 'it', 'Barra di scorrimento maestro: imposta incremento di blocco',
        'Crea una barra di scorrimento, imposta incremento di blocco 50 tramite setBlockIncrement()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (125, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Colori barra di scorrimento</h2>
<p class="intro">I colori migliorano l''aspetto visivo. Puoi impostare colore del controllo, colore di sfondo, rendere la barra di scorrimento evidente. Senza impostazione, i colori saranno standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setForeground(Color)</code> — colore del controllo</li>
  <li>Il metodo <code>setBackground(Color)</code> — colore di sfondo</li>
  <li>Personalizzare aspetto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Impostare colori permette di migliorare l''aspetto visivo e rendere la barra di scorrimento più evidente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta colore del controllo: <code>scrollBar.setForeground(Color.BLUE);</code></li>
  <li>Imposta colore di sfondo: <code>scrollBar.setBackground(Color.LIGHT_GRAY);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setForeground()</code> per controllo, <code>setBackground()</code> per sfondo</li>
  <li><strong>✅ Eccellente:</strong> Usare costanti Color, usare <code>new Color()</code> per colori personalizzati</li>
  <li><strong>⚠️ Evita:</strong> Usare colori troppo brillanti</li>
</ul>
<p><strong>Importante:</strong> Color.BLUE, Color.GREEN, Color.RED — colori standard. <code>new Color(r, g, b)</code> — colore personalizzato.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La barra di scorrimento avrà i colori impostati. Il controllo sarà di un colore, lo sfondo — di un altro. Puoi migliorare l''aspetto visivo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (125, 'it', 'Barra di scorrimento maestro: imposta colori',
        'Crea una barra di scorrimento, imposta colore del controllo Color.BLUE tramite setForeground()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (126, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Dimensione barra di scorrimento</h2>
<p class="intro">La dimensione influenza il layout. Puoi impostare la dimensione necessaria, migliorare il posizionamento. Senza impostazione, la dimensione sarà automatica.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setPreferredSize(Dimension)</code> — impostare dimensione</li>
  <li>Gestire dimensione barra di scorrimento</li>
  <li>Migliorare layout</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Impostare dimensione permette di migliorare il layout dell''interfaccia e posizionamento degli elementi.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta dimensione: <code>scrollBar.setPreferredSize(new Dimension(20, 200));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setPreferredSize()</code> per impostare, Dimension per dimensione</li>
  <li><strong>✅ Eccellente:</strong> Usare per layout, migliorare posizionamento</li>
  <li><strong>⚠️ Evita:</strong> Dimensione troppo piccola o grande</li>
</ul>
<p><strong>Importante:</strong> Rendi la dimensione ragionevole. Il layout manager la considererà al posizionare.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La barra di scorrimento avrà la dimensione impostata. Il layout manager la considererà al posizionare.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (126, 'it', 'Barra di scorrimento maestro: imposta dimensione',
        'Crea una barra di scorrimento, imposta dimensione 20x200 tramite setPreferredSize(new Dimension(20, 200))')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (127, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Suggerimento barra di scorrimento</h2>
<p class="intro">Il suggerimento aiuta l''utente. Puoi mostrare informazioni aggiuntive, spiegare lo scopo, migliorare la comprensione. Senza suggerimento, l''utente può non capire a cosa serve la barra di scorrimento.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setToolTipText(String)</code> — impostare suggerimento</li>
  <li>Mostrare informazioni al passaggio del mouse</li>
  <li>Migliorare esperienza utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il suggerimento migliora l''esperienza utente, fornendo informazioni aggiuntive al passaggio del mouse.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta suggerimento: <code>scrollBar.setToolTipText("Scorrere contenuto");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setToolTipText()</code> per impostare</li>
  <li><strong>✅ Eccellente:</strong> Usare suggerimenti informativi, aggiornare suggerimento quando cambia la posizione, usare per aiutare l''utente</li>
  <li><strong>⚠️ Evita:</strong> Suggerimenti troppo lunghi</li>
</ul>
<p><strong>Importante:</strong> <code>getToolTipText()</code> — ottenere suggerimento. Aggiorna quando cambia la posizione.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Al passaggio del mouse, apparirà il suggerimento. È un suggerimento popup con informazioni. Puoi migliorare l''esperienza utente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (127, 'it', 'Barra di scorrimento maestro: aggiungi suggerimento',
        'Crea una barra di scorrimento, imposta suggerimento "Scorrere contenuto" tramite setToolTipText()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (128, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 10: Gestire cambiamenti barra di scorrimento</h2>
<p class="intro">Gestire cambiamenti permette di reagire allo scorrimento. Puoi aggiornare altri componenti, eseguire azioni quando cambia la posizione. Senza gestione, non puoi reagire ai cambiamenti.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>L''interfaccia <code>AdjustmentListener</code> — ascoltatore cambiamenti</li>
  <li>Il metodo <code>addAdjustmentListener()</code> — aggiungere ascoltatore</li>
  <li>Reagire a cambio posizione</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire cambiamenti permette di sincronizzare l''interfaccia e reagire allo scorrimento.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi ascoltatore: <code>scrollBar.addAdjustmentListener(e -> {<br>
&nbsp;&nbsp;int value = scrollBar.getValue();<br>
&nbsp;&nbsp;label.setText("Posizione: " + value);<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addAdjustmentListener()</code> per gestire</li>
  <li><strong>✅ Eccellente:</strong> Usare <code>getValue()</code> per ottenere valore, aggiornare altri componenti, eseguire azioni quando cambia la posizione</li>
  <li><strong>⚠️ Evita:</strong> Ignorare cambiamenti</li>
</ul>
<p><strong>Importante:</strong> Usa per sincronizzare componenti dell''interfaccia.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando la posizione cambia, il gestore si attiverà. Puoi gestire il cambiamento e aggiornare altri componenti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (128, 'it', 'Barra di scorrimento maestro: gestisci cambiamenti',
        'Crea una barra di scorrimento, aggiungi AdjustmentListener, ottieni valore tramite getValue(), mostralo')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Italian)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
