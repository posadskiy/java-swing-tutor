-- Flyway migration V5: Lesson 18
-- This migration contains lesson, tasks, and documentation for lesson 18

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (153, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare finestra di dialogo</h2>
<p class="intro">I dialoghi mostrano informazioni importanti. Conferma eliminazione, inserimento dati, messaggi di errore — tutto questo sono dialoghi. Attirano l''attenzione e richiedono risposta dell''utente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>JDialog</code> — finestra di dialogo</li>
  <li>Creare dialogo</li>
  <li>Dialoghi modali e non modali</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I dialoghi sono necessari per mostrare informazioni importanti e richiedere dati dall''utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea dialogo: <code>JDialog dialog = new JDialog(frame, "Dialogo", true);</code></li>
  <li>Imposta dimensione: <code>dialog.setSize(400, 300);</code></li>
  <li>Rendi visibile: <code>dialog.setVisible(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Specificare finestra padre e modalità</li>
  <li><strong>✅ Eccellente:</strong> Dialogo modale (true) — blocca finestra padre, non modale (false) — si può lavorare con finestra padre</li>
</ul>
<p><strong>Importante:</strong> Costruttore: <code>new JDialog(padre, titolo, modale)</code>. Modale (true) — blocca finestra padre fino a chiusura. Non modale (false) — si può lavorare con entrambe le finestre. Per azioni importanti usa dialogo modale. Puoi impostare operazione di chiusura: <code>setDefaultCloseOperation(DISPOSE_ON_CLOSE);</code>.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà finestra di dialogo. È una finestra sopra la finestra principale. Se modale — non si può lavorare con la finestra principale fino a chiudere il dialogo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (153, 'it', 'Dialogo principiante: crea finestra popup',
        'Crea dialogo modale con titolo "Dialogo", dimensione 400x300 e rendilo visibile')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (154, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Creare barra di scorrimento</h2>
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
<p><strong>Importante:</strong> Generalmente si usa JScrollPane per scorrimento automatico. JScrollBar per controllo manuale dello scorrimento.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà barra di scorrimento con controllo. Puoi trascinare il controllo per scorrere.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (154, 'it', 'Barra di scorrimento principiante: crea barra di scorrimento',
        'Crea JScrollBar verticale con valore 0, estensione 10, min 0, max 100, aggiungi al form')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (155, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Gestire cambio valore barra di scorrimento</h2>
<p class="intro">Gestire cambiamenti rende la barra di scorrimento interattiva. Puoi aggiornare contenuto, sincronizzare con altri componenti, eseguire azioni. Senza questo, la barra di scorrimento sarà solo per mostrare.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>L''interfaccia <code>AdjustmentListener</code> — gestire cambiamenti</li>
  <li>Gestire scorrimento barra di scorrimento</li>
  <li>Reagire a cambio valore</li>
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
&nbsp;&nbsp;int value = e.getValue();<br>
&nbsp;&nbsp;label.setText("Valore: " + value);<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addAdjustmentListener()</code> per gestire</li>
  <li><strong>✅ Eccellente:</strong> Ottenere valore tramite <code>getValue()</code>, aggiornare altri componenti al cambiare, verificare <code>getValueIsAdjusting()</code> per valore finale</li>
  <li><strong>⚠️ Evita:</strong> Elaborare ogni valore intermedio — può essere lento</li>
</ul>
<p><strong>Importante:</strong> <code>getValueIsAdjusting()</code> — verificare se si sta trascinando il controllo. <code>getMinimum()</code>, <code>getMaximum()</code> — ottenere intervallo. <code>setValue(int)</code> — impostare valore programmaticamente.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando la barra di scorrimento cambia, il gestore si attiverà. Puoi ottenere il nuovo valore e aggiornare altri componenti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (155, 'it', 'Barra di scorrimento maestro: gestisci cambio valore',
        'Aggiungi AdjustmentListener, ottieni valore tramite getValue(), mostralo')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (156, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Passo di scorrimento barra di scorrimento</h2>
<p class="intro">Il passo di scorrimento definisce la velocità. Puoi impostare quanto scorrere quando si fa clic su frecce o si trascina. Senza impostazione, il passo sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setUnitIncrement()</code> — passo di unità</li>
  <li>Il metodo <code>setBlockIncrement()</code> — passo di blocco</li>
  <li>Configurare velocità di scorrimento</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Impostare passo di scorrimento permette di controllare la velocità e precisione dello scorrimento del contenuto.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta passo di unità: <code>scrollBar.setUnitIncrement(10);</code></li>
  <li>Imposta passo di blocco: <code>scrollBar.setBlockIncrement(50);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setUnitIncrement()</code> per unità, <code>setBlockIncrement()</code> per blocco</li>
  <li><strong>✅ Eccellente:</strong> Usare valori ragionevoli, adattare al contenuto</li>
  <li><strong>⚠️ Evita:</strong> Passo troppo grande — può essere scomodo</li>
</ul>
<p><strong>Importante:</strong> Unità — clic su frecce. Blocco — clic su pista. Adatta al contenuto.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Lo scorrimento sarà con il passo specificato. Quando si fa clic su frecce, lo scorrimento sarà del valore specificato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (156, 'it', 'Barra di scorrimento maestro: configura passo di scorrimento',
        'Imposta passo di unità 10 tramite setUnitIncrement(), passo di blocco 50 tramite setBlockIncrement()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (157, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Cambiare passo di scorrimento barra di scorrimento</h2>
<p class="intro">Cambiare passo adatta lo scorrimento. Puoi cambiare il passo in base al contenuto, migliorare la navigazione. Senza cambiare, il passo sarà costante.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Cambio dinamico di passo</li>
  <li>Adattamento al contenuto</li>
  <li>Migliorare esperienza utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il cambio dinamico di passo permette di adattare lo scorrimento a vari tipi di contenuto.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Cambia passo di unità: <code>scrollBar.setUnitIncrement(20);</code></li>
  <li>Cambia passo di blocco: <code>scrollBar.setBlockIncrement(100);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setUnitIncrement()</code> per cambiare</li>
  <li><strong>✅ Eccellente:</strong> Adattare al contenuto, cambiare dinamicamente, usare valori ragionevoli</li>
  <li><strong>⚠️ Evita:</strong> Passo troppo grande — può essere scomodo</li>
</ul>
<p><strong>Importante:</strong> Migliora la navigazione adattando il passo al contenuto.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il passo di scorrimento cambierà. Lo scorrimento sarà con il nuovo passo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (157, 'it', 'Barra di scorrimento maestro: cambia passo di scorrimento',
        'Cambia passo di unità a 20 tramite setUnitIncrement(), passo di blocco a 100 tramite setBlockIncrement()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (158, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Orientamento barra di scorrimento</h2>
<p class="intro">L''orientamento definisce la direzione. Puoi creare barra di scorrimento orizzontale o verticale, adattare al contenuto. Senza impostazione, l''orientamento sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setOrientation()</code> — impostare orientamento</li>
  <li>Costanti di orientamento (HORIZONTAL, VERTICAL)</li>
  <li>Creare barra di scorrimento orizzontale o verticale</li>
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
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setOrientation()</code> per impostare</li>
  <li><strong>✅ Eccellente:</strong> Usare HORIZONTAL per orizzontale, VERTICAL per verticale, adattare al contenuto</li>
  <li><strong>⚠️ Evita:</strong> Orientamento errato — può essere scomodo</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>L''orientamento della barra di scorrimento sarà configurato. Puoi creare barra di scorrimento orizzontale o verticale.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (158, 'it', 'Barra di scorrimento maestro: configura orientamento',
        'Imposta orientamento HORIZONTAL tramite setOrientation()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (159, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Incremento di blocco barra di scorrimento</h2>
<p class="intro">L''incremento di blocco accelera lo scorrimento. Quando si fa clic sulla pista, lo scorrimento sarà per grande distanza, migliorare la navigazione. Senza incremento di blocco, lo scorrimento sarà lento.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setBlockIncrement()</code> — impostare incremento di blocco</li>
  <li>Scorrere per grandi distanze</li>
  <li>Migliorare esperienza utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''incremento di blocco permette di accelerare lo scorrimento e migliorare la navigazione attraverso contenuto grande.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta incremento di blocco: <code>scrollBar.setBlockIncrement(100);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setBlockIncrement()</code> per impostare</li>
  <li><strong>✅ Eccellente:</strong> Usare valori grandi per scorrimento veloce, combinare con <code>setUnitIncrement()</code>, usare per migliorare UX</li>
  <li><strong>⚠️ Evita:</strong> Valori troppo grandi</li>
</ul>
<p><strong>Importante:</strong> Combina con incremento di unità. Rendi i valori ragionevoli.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando si fa clic sulla pista, lo scorrimento sarà per grande distanza. Puoi muoverti rapidamente attraverso il contenuto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (159, 'it', 'Barra di scorrimento maestro: imposta incremento di blocco',
        'Imposta incremento di blocco 100 tramite setBlockIncrement()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (160, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Incremento unitario barra di scorrimento</h2>
<p class="intro">L''incremento unitario definisce il passo di scorrimento. Quando si fa clic su frecce, lo scorrimento sarà per la distanza specificata, migliorare la navigazione. Senza incremento, lo scorrimento sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setUnitIncrement()</code> — impostare incremento unitario</li>
  <li>Scorrere per piccole distanze</li>
  <li>Migliorare esperienza utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''incremento unitario permette di configurare la precisione dello scorrimento quando si usano le frecce della barra di scorrimento.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta incremento: <code>scrollBar.setUnitIncrement(10);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setUnitIncrement()</code> per impostare</li>
  <li><strong>✅ Eccellente:</strong> Usare valori ragionevoli, combinare con <code>setBlockIncrement()</code>, migliorare esperienza utente</li>
  <li><strong>⚠️ Evita:</strong> Valori troppo grandi o piccoli</li>
</ul>
<p><strong>Importante:</strong> Usa per scorrimento preciso. Combina con incremento di blocco. Rendi i valori ragionevoli.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando si fa clic su frecce, lo scorrimento sarà per la distanza specificata. Puoi muoverti con precisione attraverso il contenuto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (160, 'it', 'Barra di scorrimento maestro: imposta incremento unitario',
        'Imposta incremento unitario 10 tramite setUnitIncrement()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (161, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Impostare valore barra di scorrimento</h2>
<p class="intro">Il valore definisce la posizione. Puoi impostare la posizione iniziale, cambiarla, migliorare la navigazione. Senza impostazione, la posizione sarà zero.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setValue()</code> — impostare valore</li>
  <li>Il metodo <code>getValue()</code> — ottenere valore</li>
  <li>Gestire posizione di scorrimento</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire il valore permette di controllare programmaticamente la posizione dello scorrimento.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta valore: <code>scrollBar.setValue(100);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setValue()</code> per impostare, <code>getValue()</code> per ottenere</li>
  <li><strong>✅ Eccellente:</strong> Usare per gestire posizione, migliorare navigazione</li>
  <li><strong>⚠️ Evita:</strong> Impostare valore fuori dall''intervallo</li>
</ul>
<p><strong>Importante:</strong> Verifica limiti prima di impostare valore.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La posizione della barra di scorrimento sarà impostata. Puoi gestire la posizione dello scorrimento.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (161, 'it', 'Barra di scorrimento maestro: imposta valore', 'Imposta valore 100 tramite setValue()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (162, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 10: Incremento di blocco barra di scorrimento (esteso)</h2>
<p class="intro">L''incremento di blocco definisce la dimensione del blocco. Puoi impostare quanto scorrere quando si fa clic sulla pista, migliorare la navigazione. Senza impostazione, la dimensione sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setBlockIncrement()</code> — impostare incremento di blocco</li>
  <li>Gestire dimensione del blocco di scorrimento</li>
  <li>Migliorare esperienza utente</li>
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
  <li><strong>✅ Eccellente:</strong> Usare valori ragionevoli, usare per migliorare navigazione, migliorare esperienza utente</li>
  <li><strong>⚠️ Evita:</strong> Incremento troppo piccolo o grande</li>
</ul>
<p><strong>Importante:</strong> Rendi l''incremento comodo per l''utente.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando si fa clic sulla pista, lo scorrimento sarà dell''incremento di blocco. Puoi migliorare la navigazione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (162, 'it', 'Barra di scorrimento maestro: imposta incremento di blocco',
        'Imposta incremento di blocco 50 tramite setBlockIncrement()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Italian)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
