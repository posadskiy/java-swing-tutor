-- Flyway migration V5: Lesson 14
-- This migration contains lesson, tasks, and documentation for lesson 14

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (108, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare una barra di avanzamento</h2>
<p class="intro">Le barre di avanzamento (<code>JProgressBar</code>) mostrano il progresso. Download di file, installazione di programmi, elaborazione di dati — tutto questo richiede mostrare il progresso. Senza di essa, l''utente non sa quanto resta.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>JProgressBar</code> — indicatore di progresso</li>
  <li>Creare una barra di avanzamento</li>
  <li>Mostrare progresso</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La barra di avanzamento informa l''utente sul progresso dell''attività e migliora l''esperienza utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea barra di avanzamento: <code>JProgressBar progressBar = new JProgressBar(0, 100);</code></li>
  <li>Imposta valore: <code>progressBar.setValue(50);</code></li>
  <li>Aggiungi al form: <code>add(progressBar);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Specificare valore minimo e massimo</li>
  <li><strong>✅ Eccellente:</strong> Usare <code>setValue()</code> per impostare progresso, usare <code>setStringPainted(true)</code> per mostrare percentuale</li>
  <li><strong>⚠️ Evita:</strong> Non aggiornare valore — l''utente non vedrà progresso</li>
</ul>
<p><strong>Importante:</strong> <code>getValue()</code> — ottenere valore attuale. <code>setIndeterminate(true)</code> — modo indeterminato (animazione).</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà una barra di avanzamento. È una barra che mostra progresso da 0 a 100. Puoi vedere quanto è stato fatto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (108, 'it', 'Barra di avanzamento principiante: crea un indicatore di progresso',
        'Crea una barra di avanzamento con intervallo 0-100, imposta valore 50 e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (109, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Intervallo barra di avanzamento</h2>
<p class="intro">L''intervallo definisce i limiti del progresso. Puoi impostare qualsiasi intervallo: 0-100 per percentuali, 0-1000 per quantità, 0-file per download. Senza intervallo, il progresso non avrà senso.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setMinimum(int)</code> — impostare minimo</li>
  <li>Il metodo <code>setMaximum(int)</code> — impostare massimo</li>
  <li>Gestire intervallo di progresso</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''intervallo definisce i limiti del progresso e permette di adattare la barra di avanzamento per varie attività.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta minimo: <code>progressBar.setMinimum(0);</code></li>
  <li>Imposta massimo: <code>progressBar.setMaximum(100);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMinimum()</code> e <code>setMaximum()</code> per impostare</li>
  <li><strong>✅ Eccellente:</strong> Usare costruttore JProgressBar(min, max), usare valori ragionevoli, usare per diverse attività</li>
  <li><strong>⚠️ Evita:</strong> Impostare minimo maggiore di massimo</li>
</ul>
<p><strong>Importante:</strong> <code>getMinimum()</code> — ottenere minimo. <code>getMaximum()</code> — ottenere massimo.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La barra di avanzamento avrà l''intervallo impostato. Il valore sarà limitato da questo intervallo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (109, 'it', 'Barra di avanzamento maestro: imposta valore minimo e massimo',
        'Crea una barra di avanzamento, imposta minimo 0 e massimo 100 tramite setMinimum() e setMaximum()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (110, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Valore attuale barra di avanzamento</h2>
<p class="intro">Il valore attuale mostra il progresso. Puoi aggiornare il valore man mano che l''attività avanza, mostrare progresso reale. Senza aggiornamento, la barra di avanzamento sarà statica.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setValue(int)</code> — impostare valore</li>
  <li>Il metodo <code>getValue()</code> — ottenere valore</li>
  <li>Gestire progresso</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Aggiornare il valore permette di mostrare il progresso reale dell''attività.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta valore: <code>progressBar.setValue(75);</code></li>
  <li>Ottieni valore: <code>int value = progressBar.getValue();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setValue()</code> per impostare, <code>getValue()</code> per ottenere</li>
  <li><strong>✅ Eccellente:</strong> Aggiornare valore man mano che l''attività avanza, usare in cicli per mostrare progresso</li>
  <li><strong>⚠️ Evita:</strong> Impostare valore fuori dall''intervallo</li>
</ul>
<p><strong>Importante:</strong> Il valore deve essere nell''intervallo [minimo, massimo]. Usa per mostrare progresso.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La barra di avanzamento si aggiornerà con il nuovo valore. La barra si riempirà fino alla percentuale specificata. Puoi vedere il progresso reale.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (110, 'it', 'Barra di avanzamento maestro: imposta valore attuale',
        'Crea una barra di avanzamento, imposta valore 75 tramite setValue()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (111, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Orientamento barra di avanzamento</h2>
<p class="intro">L''orientamento influenza l''aspetto della barra di avanzamento. Orizzontale — per aree ampie, verticale — per strette. Puoi scegliere orientamento adatto per l''interfaccia.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setOrientation(int)</code> — impostare orientamento</li>
  <li>Costanti <code>HORIZONTAL</code> e <code>VERTICAL</code></li>
  <li>Barra di avanzamento orizzontale e verticale</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Scegliere orientamento permette di adattare la barra di avanzamento per vari layout dell''interfaccia.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta orientamento: <code>progressBar.setOrientation(JProgressBar.HORIZONTAL);</code></li>
  <li>O verticale: <code>progressBar.setOrientation(JProgressBar.VERTICAL);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> HORIZONTAL per orizzontale, VERTICAL per verticale</li>
  <li><strong>✅ Eccellente:</strong> Scegliere orientamento in base allo spazio, usare per risparmiare spazio</li>
  <li><strong>⚠️ Evita:</strong> Usare verticale senza necessità</li>
</ul>
<p><strong>Importante:</strong> HORIZONTAL — orizzontale (default). Scegli in base allo spazio.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La barra di avanzamento avrà l''orientamento impostato. Orizzontale — da sinistra a destra, verticale — dal basso verso l''alto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (111, 'it', 'Barra di avanzamento maestro: imposta orientamento',
        'Crea una barra di avanzamento, imposta orientamento verticale tramite setOrientation(JProgressBar.VERTICAL)')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (112, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Stringa barra di avanzamento</h2>
<p class="intro">La stringa mostra il progresso esatto. Puoi mostrare percentuale, quantità, stato. Senza stringa, l''utente vede solo la barra, senza sapere il valore esatto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setStringPainted(boolean)</code> — mostrare stringa</li>
  <li>Il metodo <code>setString(String)</code> — impostare stringa</li>
  <li>Mostrare testo su barra di avanzamento</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La stringa aumenta l''informatività della barra di avanzamento, mostrando il valore esatto del progresso.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Abilita mostrare stringa: <code>progressBar.setStringPainted(true);</code></li>
  <li>(Opzionale) Imposta stringa personalizzata: <code>progressBar.setString("50%");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setStringPainted(true)</code> per mostrare</li>
  <li><strong>✅ Eccellente:</strong> Usare <code>setString()</code> per stringa personalizzata, mostrare percentuale automaticamente, mostrare stato attività</li>
  <li><strong>⚠️ Evita:</strong> Nascondere stringa senza necessità</li>
</ul>
<p><strong>Importante:</strong> <code>getString()</code> — ottenere stringa attuale. Di default si mostra la percentuale. Usa per informatività.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà testo sulla barra di avanzamento. È percentuale o stringa personalizzata. Puoi vedere il progresso esatto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (112, 'it', 'Barra di avanzamento maestro: mostra stringa con percentuale',
        'Crea una barra di avanzamento, abilita mostrare stringa tramite setStringPainted(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (113, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Colori barra di avanzamento</h2>
<p class="intro">I colori migliorano l''aspetto visivo. Puoi impostare colore di riempimento, colore di sfondo, rendere la barra di avanzamento evidente. Senza impostazione, i colori saranno standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setForeground(Color)</code> — colore di riempimento</li>
  <li>Il metodo <code>setBackground(Color)</code> — colore di sfondo</li>
  <li>Personalizzare aspetto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Impostare colori permette di migliorare l''aspetto visivo e rendere la barra di avanzamento più evidente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta colore di riempimento: <code>progressBar.setForeground(Color.GREEN);</code></li>
  <li>Imposta colore di sfondo: <code>progressBar.setBackground(Color.LIGHT_GRAY);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setForeground()</code> per riempimento, <code>setBackground()</code> per sfondo</li>
  <li><strong>✅ Eccellente:</strong> Usare costanti Color, usare <code>new Color()</code> per colori personalizzati</li>
  <li><strong>⚠️ Evita:</strong> Usare colori troppo brillanti</li>
</ul>
<p><strong>Importante:</strong> Color.GREEN, Color.BLUE, Color.RED — colori standard. <code>new Color(r, g, b)</code> — colore personalizzato.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La barra di avanzamento avrà i colori impostati. Il riempimento sarà di un colore, lo sfondo — di un altro. Puoi migliorare l''aspetto visivo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (113, 'it', 'Barra di avanzamento maestro: imposta colori',
        'Crea una barra di avanzamento, imposta colore di riempimento Color.GREEN tramite setForeground()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (114, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Font barra di avanzamento</h2>
<p class="intro">Il font migliora l''aspetto visivo del testo. Puoi impostare il font necessario, dimensione, stile, migliorare la leggibilità. Senza impostazione, il font sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setFont(Font)</code> — impostare font</li>
  <li>Migliorare aspetto visivo del testo</li>
  <li>Personalizzare stringa</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Impostare il font permette di migliorare l''aspetto visivo e leggibilità del testo nella barra di avanzamento.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea font: <code>Font font = new Font("Arial", Font.BOLD, 14);</code></li>
  <li>Imposta font: <code>progressBar.setFont(font);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setFont()</code> per impostare, <code>new Font()</code> per creare</li>
  <li><strong>✅ Eccellente:</strong> Usare per migliorare aspetto e leggibilità</li>
  <li><strong>⚠️ Evita:</strong> Dimensione troppo piccola o grande</li>
</ul>
<p><strong>Importante:</strong> Rendi la dimensione ragionevole per migliore leggibilità.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo sulla barra di avanzamento sarà con il font impostato. Puoi migliorare l''aspetto visivo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (114, 'it', 'Barra di avanzamento maestro: imposta font',
        'Crea una barra di avanzamento, crea font new Font("Arial", Font.BOLD, 14), imposta tramite setFont()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (115, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Dimensione barra di avanzamento</h2>
<p class="intro">La dimensione influenza il layout. Puoi impostare la dimensione necessaria, migliorare il posizionamento. Senza impostazione, la dimensione sarà automatica.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setPreferredSize(Dimension)</code> — impostare dimensione</li>
  <li>Gestire dimensione barra di avanzamento</li>
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
  <li>Imposta dimensione: <code>progressBar.setPreferredSize(new Dimension(300, 25));</code></li>
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
<p>La barra di avanzamento avrà la dimensione impostata. Il layout manager la considererà al posizionare.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (115, 'it', 'Barra di avanzamento maestro: imposta dimensione',
        'Crea una barra di avanzamento, imposta dimensione 300x25 tramite setPreferredSize(new Dimension(300, 25))')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (116, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Suggerimento barra di avanzamento</h2>
<p class="intro">Il suggerimento aiuta l''utente. Puoi mostrare informazioni aggiuntive, spiegare lo scopo, migliorare la comprensione. Senza suggerimento, l''utente può non capire cosa mostra la barra di avanzamento.</p>
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
  <li>Imposta suggerimento: <code>progressBar.setToolTipText("Progresso download: 50%");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setToolTipText()</code> per impostare</li>
  <li><strong>✅ Eccellente:</strong> Usare suggerimenti informativi, aggiornare suggerimento quando cambia il progresso, usare per aiutare l''utente</li>
  <li><strong>⚠️ Evita:</strong> Suggerimenti troppo lunghi</li>
</ul>
<p><strong>Importante:</strong> <code>getToolTipText()</code> — ottenere suggerimento. Aggiorna quando cambia il progresso.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Al passaggio del mouse, apparirà il suggerimento. È un suggerimento popup con informazioni. Puoi migliorare l''esperienza utente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (116, 'it', 'Barra di avanzamento maestro: aggiungi suggerimento',
        'Crea una barra di avanzamento, imposta suggerimento "Progresso download" tramite setToolTipText()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (117, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 10: Modo indeterminato barra di avanzamento</h2>
<p class="intro">Il modo indeterminato mostra che il lavoro è in corso. Quando non conosci il progresso esatto (ad esempio, download da internet), l''animazione mostra che il processo è attivo. Senza di essa, l''utente non sa se il programma sta funzionando.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setIndeterminate(boolean)</code> — modo indeterminato</li>
  <li>Barra di avanzamento animata</li>
  <li>Usare per progresso sconosciuto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il modo indeterminato è necessario per processi con tempo di esecuzione sconosciuto, per mostrare all''utente che il processo è attivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Abilita modo indeterminato: <code>progressBar.setIndeterminate(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Per progresso sconosciuto</li>
  <li><strong>✅ Eccellente:</strong> Cambiare a modo determinato quando il progresso è noto, usare per processi con tempo sconosciuto</li>
  <li><strong>⚠️ Evita:</strong> Usare per progresso noto — meglio mostrare percentuale</li>
</ul>
<p><strong>Importante:</strong> <code>setIndeterminate(false)</code> — tornare al modo normale. Quando il progresso diventa noto, cambia al modo normale. L''animazione mostra che il processo è attivo.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La barra di avanzamento inizierà ad animarsi. La barra si muoverà avanti e indietro, mostrando che il lavoro è in corso. Questa è un segnale visivo di attività del processo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (117, 'it', 'Barra di avanzamento maestro: abilita modo indeterminato',
        'Crea una barra di avanzamento, abilita modo indeterminato tramite setIndeterminate(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (118, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 11: Gestire cambiamenti barra di avanzamento</h2>
<p class="intro">Gestire cambiamenti permette di reagire al progresso. Puoi aggiornare altri componenti, eseguire azioni quando si raggiunge un certo valore. Senza gestione, non puoi reagire ai cambiamenti.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>L''interfaccia <code>ChangeListener</code> — ascoltatore cambiamenti</li>
  <li>Il metodo <code>addChangeListener()</code> — aggiungere ascoltatore</li>
  <li>Reagire a cambio progresso</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire cambiamenti permette di sincronizzare l''interfaccia e reagire al progresso dell''attività.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi ascoltatore: <code>progressBar.addChangeListener(e -> {<br>
&nbsp;&nbsp;int value = progressBar.getValue();<br>
&nbsp;&nbsp;label.setText("Progresso: " + value + "%");<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addChangeListener()</code> per gestire</li>
  <li><strong>✅ Eccellente:</strong> Usare <code>getValue()</code> per ottenere valore, aggiornare altri componenti, eseguire azioni quando si raggiunge valore</li>
  <li><strong>⚠️ Evita:</strong> Ignorare cambiamenti</li>
</ul>
<p><strong>Importante:</strong> Usa per sincronizzare componenti dell''interfaccia.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando il valore cambia, il gestore si attiverà. Puoi gestire il cambiamento e aggiornare altri componenti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (118, 'it', 'Barra di avanzamento maestro: gestisci cambiamenti',
        'Crea una barra di avanzamento, aggiungi ChangeListener, ottieni valore tramite getValue(), mostralo')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Italian)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
