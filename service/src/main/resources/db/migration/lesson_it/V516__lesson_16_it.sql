-- Flyway migration V5: Lesson 16
-- This migration contains lesson, tasks, and documentation for lesson 16

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (129, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare un pannello</h2>
<p class="intro">I pannelli (<code>JPanel</code>) organizzano l''interfaccia. Senza pannelli, tutti i componenti sarebbero in un solo posto. I pannelli permettono di raggruppare componenti, creare struttura e applicare diversi gestori di layout.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>JPanel</code> — contenitore per componenti</li>
  <li>Creare un pannello</li>
  <li>Aggiungere componenti al pannello</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I pannelli sono necessari per organizzare l''interfaccia e raggruppare componenti correlati.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea pannello: <code>JPanel panel = new JPanel();</code></li>
  <li>Aggiungi componenti al pannello: <code>panel.add(new JButton("Pulsante"));</code></li>
  <li>Aggiungi pannello al form: <code>add(panel);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Creare pannello, poi aggiungere componenti</li>
  <li><strong>✅ Eccellente:</strong> Usare pannelli per raggruppare componenti correlati</li>
  <li><strong>⚠️ Evita:</strong> Troppi pannelli annidati — difficile da gestire</li>
</ul>
<p><strong>Importante:</strong> Il pannello è un contenitore dove puoi aggiungere altri componenti. Puoi annidare pannelli dentro altri per struttura complessa. Ogni pannello può avere il proprio gestore di layout. Puoi impostare colore di sfondo: <code>panel.setBackground(Color.WHITE);</code>. Puoi impostare bordo: <code>panel.setBorder(BorderFactory.createTitledBorder("Titolo"));</code>.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un pannello sul form. È un contenitore dove puoi aggiungere componenti. I componenti saranno posizionati secondo il gestore di layout del pannello.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (129, 'it', 'Pannello principiante: crea un contenitore per componenti',
        'Crea un pannello, aggiungi un pulsante ad esso e aggiungi il pannello al form')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (130, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Creare selettore con modello</h2>
<p class="intro">JSpinner permette di cambiare il valore passo a passo. Quantità, età, dimensione — tutto questo richiede selettore. Senza di esso, dovrai inserire il numero manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>JSpinner</code> — selettore</li>
  <li>La classe <code>SpinnerNumberModel</code> — modello di numeri</li>
  <li>Creare selettore con intervallo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il selettore semplifica la selezione di valori numerici e previene errori di input.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea modello: <code>SpinnerNumberModel model = new SpinnerNumberModel(10, 0, 100, 1);</code></li>
  <li>Crea selettore: <code>JSpinner spinner = new JSpinner(model);</code></li>
  <li>Aggiungi al form: <code>add(spinner);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> SpinnerNumberModel per numeri</li>
  <li><strong>✅ Eccellente:</strong> Specificare min, max, passo nel modello, usare SpinnerDateModel per date, usare SpinnerListModel per lista</li>
  <li><strong>⚠️ Evita:</strong> Passo troppo grande — difficile selezionare valore esatto</li>
</ul>
<p><strong>Importante:</strong> <code>getValue()</code> — ottenere valore. <code>setValue(Object)</code> — impostare valore.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un selettore con pulsanti su/giù. Puoi aumentare e diminuire il valore.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (130, 'it', 'Selettore principiante: crea selettore con modello',
        'Crea SpinnerNumberModel con valore 10, min 0, max 100, passo 1, crea JSpinner dal modello, aggiungi al form')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (131, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Gestore di layout</h2>
<p class="intro">I gestori di layout organizzano automaticamente i componenti. Senza di essi, i componenti si sovrapporrebbero. Con gestore, si organizzano secondo regole. Questa è la base di un''interfaccia professionale.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setLayout(LayoutManager layout)</code> — impostare gestore di layout</li>
  <li>Vari gestori di layout: <code>FlowLayout</code>, <code>BorderLayout</code>, <code>GridLayout</code></li>
  <li>Gestire posizionamento componenti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I gestori di layout assicurano il posizionamento corretto dei componenti e l''adattabilità dell''interfaccia.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea pannello: <code>JPanel panel = new JPanel();</code></li>
  <li>Imposta gestore di layout: <code>panel.setLayout(new FlowLayout());</code></li>
  <li>Aggiungi componenti: <code>panel.add(new JButton("Pulsante 1"));</code><br><code>panel.add(new JButton("Pulsante 2"));</code></li>
  <li>Aggiungi pannello al form: <code>add(panel);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>FlowLayout</code> per posizionamento semplice</li>
  <li><strong>✅ Eccellente:</strong> <code>BorderLayout</code> per interfaccia strutturata, <code>GridLayout</code> per posizionamento tabulare</li>
  <li><strong>⚠️ Evita:</strong> Senza layout — i componenti si sovrapporranno</li>
</ul>
<p><strong>Importante:</strong> <code>FlowLayout</code> — componenti in fila, si avvolgono quando lo spazio finisce. <code>BorderLayout</code> — componenti ai bordi (NORTH, SOUTH, EAST, WEST, CENTER). <code>GridLayout</code> — componenti in griglia (righe × colonne). Di default <code>JPanel</code> usa <code>FlowLayout</code>.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>I componenti saranno posizionati secondo il gestore di layout. Se hai usato <code>FlowLayout</code>, si allineeranno in fila. Se <code>BorderLayout</code> — ai bordi.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (131, 'it', 'Gestore di layout: gestisci posizionamento',
        'Crea un pannello, imposta FlowLayout, aggiungi due pulsanti e aggiungi il pannello al form')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (132, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Selettore per date</h2>
<p class="intro">Il selettore per date permette di selezionare data passo a passo. Compleanno, scadenza, data evento — tutto questo richiede selezione di data. Senza selettore, dovrai inserire la data manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>SpinnerDateModel</code> — modello di date</li>
  <li>Creare selettore per selezione di date</li>
  <li>Configurare formato data</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il selettore per date semplifica la selezione di data e previene errori di input.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea modello di date: <code>SpinnerDateModel model = new SpinnerDateModel();</code></li>
  <li>Crea selettore: <code>JSpinner spinner = new JSpinner(model);</code></li>
  <li>Configura formato: <code>JSpinner.DateEditor editor = new JSpinner.DateEditor(spinner, "dd/MM/yyyy");<br>
spinner.setEditor(editor);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> SpinnerDateModel per date</li>
  <li><strong>✅ Eccellente:</strong> Configurare formato tramite DateEditor, specificare date min e max, usare Calendar per lavorare con date</li>
  <li><strong>⚠️ Evita:</strong> Non specificare formato — può essere poco chiaro</li>
</ul>
<p><strong>Importante:</strong> <code>getValue()</code> — ottenere Date. Usa SimpleDateFormat per formattare.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un selettore per selezione di data. Puoi aumentare e diminuire la data. La data sarà mostrata nel formato specificato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (132, 'it', 'Selettore maestro: crea selettore per date',
        'Crea SpinnerDateModel, crea JSpinner, crea DateEditor con formato "dd/MM/yyyy", imposta editor')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (133, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Selettore con lista</h2>
<p class="intro">Il selettore con lista limita la selezione. Puoi solo selezionare da valori predefiniti. Senza lista, puoi inserire qualsiasi valore.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>SpinnerListModel</code> — modello di lista</li>
  <li>Creare selettore con lista di valori</li>
  <li>Navigare nella lista</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il selettore con lista limita la selezione a valori validi e previene errori di input.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea lista: <code>String[] values = {"Gennaio", "Febbraio", "Marzo"};</code></li>
  <li>Crea modello: <code>SpinnerListModel model = new SpinnerListModel(values);</code></li>
  <li>Crea selettore: <code>JSpinner spinner = new JSpinner(model);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> SpinnerListModel per lista</li>
  <li><strong>✅ Eccellente:</strong> Usare array o lista, usare per selezione limitata, usare per mesi, giorni della settimana</li>
  <li><strong>⚠️ Evita:</strong> Lista troppo lunga — può essere scomodo</li>
</ul>
<p><strong>Importante:</strong> SpinnerListModel(Object[]) — creare da array. SpinnerListModel(List) — creare da lista. Rendi la lista chiara.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un selettore con lista di valori. Puoi solo selezionare dalla lista. Puoi navigare nella lista.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (133, 'it', 'Selettore maestro: crea selettore con lista',
        'Crea array di stringhe, crea SpinnerListModel, crea JSpinner con modello')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (134, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Selettore per numeri</h2>
<p class="intro">Il selettore per numeri limita la selezione. Puoi solo selezionare da un intervallo di numeri, impostare passo. Senza modello, puoi inserire qualsiasi valore.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>SpinnerNumberModel</code> — modello di numeri</li>
  <li>Creare selettore per valori numerici</li>
  <li>Configurare intervallo e passo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il selettore per numeri limita la selezione a valori validi e previene errori di input.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea modello: <code>SpinnerNumberModel model = new SpinnerNumberModel(0, 0, 100, 1);</code></li>
  <li>Crea selettore: <code>JSpinner spinner = new JSpinner(model);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> SpinnerNumberModel per numeri</li>
  <li><strong>✅ Eccellente:</strong> Specificare valore iniziale, specificare min e max, specificare passo</li>
  <li><strong>⚠️ Evita:</strong> Non specificare intervallo — può essere non sicuro</li>
</ul>
<p><strong>Importante:</strong> value — valore iniziale. min — valore minimo. max — valore massimo. step — passo di cambiamento.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un selettore per numeri. Puoi solo selezionare dall''intervallo. Puoi cambiare il valore con il passo specificato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (134, 'it', 'Selettore maestro: crea selettore per numeri',
        'Crea SpinnerNumberModel con iniziale 0, min 0, max 100, passo 1, crea JSpinner con modello')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (135, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Gestire cambiamenti selettore</h2>
<p class="intro">Gestire cambiamenti rende il selettore interattivo. Puoi reagire al cambiamento di valore, aggiornare altri componenti. Senza gestione, i cambiamenti non avranno effetto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Gestire cambiamenti tramite ChangeListener</li>
  <li>Ottenere nuovo valore</li>
  <li>Reagire a cambiamenti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire cambiamenti permette di sincronizzare l''interfaccia e reagire alle azioni dell''utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi ascoltatore: <code>spinner.addChangeListener(e -> {<br>
&nbsp;&nbsp;Object value = spinner.getValue();<br>
&nbsp;&nbsp;label.setText("Valore: " + value);<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addChangeListener()</code> per gestire</li>
  <li><strong>✅ Eccellente:</strong> Ottenere nuovo valore tramite <code>getValue()</code>, aggiornare altri componenti, validare valore</li>
  <li><strong>⚠️ Evita:</strong> Ignorare cambiamenti</li>
</ul>
<p><strong>Importante:</strong> Usa per sincronizzare componenti dell''interfaccia.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando il valore cambia, il gestore si attiverà. Puoi ottenere il nuovo valore e aggiornare altri componenti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (135, 'it', 'Selettore maestro: gestisci cambiamenti',
        'Aggiungi ChangeListener, ottieni valore tramite getValue(), mostralo')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (136, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Selettore per date (esteso)</h2>
<p class="intro">Il selettore per date limita la selezione. Puoi solo selezionare data, impostare passo di cambiamento. Senza modello, puoi inserire qualsiasi valore.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>SpinnerDateModel</code> — modello di date</li>
  <li>Creare selettore per date</li>
  <li>Configurare passo e formato</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il selettore per date semplifica la selezione di data e previene errori di input.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea modello: <code>SpinnerDateModel model = new SpinnerDateModel();</code></li>
  <li>Crea selettore: <code>JSpinner spinner = new JSpinner(model);</code></li>
  <li>Configura editor: <code>JSpinner.DateEditor editor = new JSpinner.DateEditor(spinner, "dd.MM.yyyy");<br>
spinner.setEditor(editor);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> SpinnerDateModel per date</li>
  <li><strong>✅ Eccellente:</strong> Usare DateEditor per formato, specificare formato data, configurare passo di cambiamento</li>
  <li><strong>⚠️ Evita:</strong> Non specificare formato — può essere illeggibile</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un selettore per date. Puoi selezionare data con il formato specificato. Puoi cambiare la data con il passo specificato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (136, 'it', 'Selettore maestro: crea selettore per date',
        'Crea SpinnerDateModel, crea JSpinner con modello, crea DateEditor con formato "dd.MM.yyyy", imposta tramite setEditor()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (137, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Formattatore personalizzato selettore</h2>
<p class="intro">Il formattatore personalizzato permette di personalizzare la visualizzazione. Puoi mostrare valori nel formato necessario, migliorare la leggibilità. Senza formattatore, la visualizzazione sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>JSpinner.DefaultEditor</code> — editor di default</li>
  <li>Il metodo <code>setEditor()</code> — impostare editor</li>
  <li>Creare formattazione personalizzata</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il formattatore personalizzato migliora la leggibilità e permette di mostrare valori nel formato necessario.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea formattatore: <code>JSpinner.NumberEditor editor = new JSpinner.NumberEditor(spinner, "#,##0.00");</code></li>
  <li>Imposta editor: <code>spinner.setEditor(editor);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> NumberEditor per numeri</li>
  <li><strong>✅ Eccellente:</strong> Usare DateEditor per date, usare formato personalizzato, usare per migliorare leggibilità</li>
  <li><strong>⚠️ Evita:</strong> Formato troppo complesso</li>
</ul>
<p><strong>Importante:</strong> Usa per formattare e migliorare leggibilità.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il valore sarà mostrato in formato personalizzato. Puoi mostrare numeri con separatori, date nel formato necessario.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (137, 'it', 'Selettore maestro: crea formattatore personalizzato',
        'Crea NumberEditor con formato "#,##0.00", imposta tramite setEditor()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (138, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 10: Passo selettore</h2>
<p class="intro">Il passo definisce l''incremento. Puoi impostare il passo di cambiamento, migliorare il controllo. Senza passo, l''incremento sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>SpinnerNumberModel</code> — modello di numeri</li>
  <li>Parametro stepSize — dimensione del passo</li>
  <li>Gestire passo di cambiamento</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Impostare passo permette di controllare l''incremento del valore e migliorare l''esperienza utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea modello con passo: <code>SpinnerNumberModel model = new SpinnerNumberModel(0, 0, 100, 5);</code></li>
  <li>Imposta modello: <code>spinner.setModel(model);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> SpinnerNumberModel per numeri</li>
  <li><strong>✅ Eccellente:</strong> Specificare passo nel costruttore, usare per controllo, migliorare esperienza utente</li>
  <li><strong>⚠️ Evita:</strong> Passo troppo grande o piccolo</li>
</ul>
<p><strong>Importante:</strong> step — dimensione del passo. Rendi il passo ragionevole.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando si cambia, il valore cambierà del passo. Puoi controllare l''incremento.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (138, 'it', 'Selettore maestro: imposta passo',
        'Crea SpinnerNumberModel(0, 0, 100, 5), imposta tramite setModel()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (139, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 11: Impostare valore selettore</h2>
<p class="intro">Il valore definisce lo stato attuale. Puoi impostare il valore iniziale, cambiarlo, migliorare il controllo. Senza impostazione, il valore sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setValue()</code> — impostare valore</li>
  <li>Il metodo <code>getValue()</code> — ottenere valore</li>
  <li>Gestire valore selettore</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire il valore permette di controllare programmaticamente lo stato del selettore.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta valore: <code>spinner.setValue(50);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setValue()</code> per impostare, <code>getValue()</code> per ottenere</li>
  <li><strong>✅ Eccellente:</strong> Usare per controllo, migliorare esperienza utente</li>
  <li><strong>⚠️ Evita:</strong> Impostare valore fuori dall''intervallo</li>
</ul>
<p><strong>Importante:</strong> Verifica limiti prima di impostare valore.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il valore del selettore sarà impostato. Puoi controllare il valore.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (139, 'it', 'Selettore maestro: imposta valore', 'Imposta valore 50 tramite setValue()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (140, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 12: Ottenere editor selettore</h2>
<p class="intro">L''editor permette di gestire il campo di testo. Puoi accedere al campo di testo, cambiarlo, migliorare la funzionalità. Senza accesso, non puoi gestire il campo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>getEditor()</code> — ottenere editor</li>
  <li>Accedere al campo di testo del selettore</li>
  <li>Migliorare funzionalità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''accesso all''editor permette di personalizzare il campo di testo e migliorare la funzionalità del selettore.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni editor: <code>JSpinner.DefaultEditor editor = (JSpinner.DefaultEditor) spinner.getEditor();</code></li>
  <li>Ottieni campo di testo: <code>JTextField field = editor.getTextField();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getEditor()</code> per ottenere</li>
  <li><strong>✅ Eccellente:</strong> Convertire a DefaultEditor, usare <code>getTextField()</code> per campo, migliorare funzionalità</li>
  <li><strong>⚠️ Evita:</strong> Cambiare senza necessità</li>
</ul>
<p><strong>Importante:</strong> DefaultEditor — editor di default. Usa per controllo e migliorare funzionalità.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Puoi accedere al campo di testo. Puoi gestire il campo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (140, 'it', 'Selettore maestro: ottieni editor',
        'Ottieni editor tramite getEditor(), converti a DefaultEditor, ottieni campo di testo tramite getTextField()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Italian)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
