-- Flyway migration V5: Lesson 4
-- This migration contains lesson, tasks, and documentation for lesson 4

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (35, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare un campo di testo</h2>
<p class="intro">I campi di testo (<code>JTextField</code>) sono un modo per ottenere informazioni dall''utente. Nome, password, email, query di ricerca — tutto questo viene inserito attraverso campi di testo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>JTextField</code> — campo a una riga per input di testo</li>
  <li>Creare un campo di testo</li>
  <li>Uso base dei campi di input</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I campi di testo sono un modo per ottenere informazioni dall''utente. Senza di essi, l''applicazione non può interagire con l''utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un campo di testo: <code>JTextField field = new JTextField();</code></li>
  <li>Aggiungi al form: <code>add(field);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Creare una variabile, poi aggiungere — puoi configurare</li>
  <li><strong>✅ Eccellente:</strong> Creare con testo iniziale: <code>new JTextField("Testo")</code></li>
  <li><strong>✅ Eccellente:</strong> Creare con dimensione: <code>new JTextField(20)</code> — 20 caratteri di larghezza</li>
  <li><strong>⚠️ Accettabile:</strong> <code>add(new JTextField());</code> — non puoi configurare dopo</li>
</ul>
<p><strong>Importante:</strong> Il campo di testo può essere modificato. Puoi impostare testo iniziale nel costruttore. Puoi impostare larghezza in caratteri. Il campo si adatta automaticamente all''altezza del font. Usa nomi di variabili chiari.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un campo di testo vuoto sul form. Questa è un''area rettangolare bianca dove puoi inserire testo. L''utente può fare clic e iniziare a digitare.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (35, 'it', 'Campo di testo principiante: crea un campo di input', 'Crea un campo di testo e aggiungilo al form')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (36, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Testo nel campo</h2>
<p class="intro">Il testo iniziale aiuta l''utente a capire cosa inserire. "Inserisci nome" o esempio "example@email.com" — tutto questo rende l''interfaccia più chiara.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setText(String text)</code> — impostare testo</li>
  <li>Testo iniziale nel campo di testo</li>
  <li>Ottenere testo con il metodo <code>getText()</code></li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il testo iniziale aiuta l''utente a capire cosa è atteso. È come un placeholder nei form — mostra cosa deve essere inserito.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un campo di testo: <code>JTextField field = new JTextField();</code></li>
  <li>Imposta il testo: <code>field.setText("Inserisci testo");</code></li>
  <li>Aggiungi al form: <code>add(field);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Impostare nel costruttore: <code>new JTextField("Testo")</code></li>
  <li><strong>✅ Eccellente:</strong> Impostare tramite <code>setText()</code> — puoi cambiare dopo</li>
  <li><strong>⚠️ Evita:</strong> Testo molto lungo — il campo si allungherà</li>
  <li><strong>❌ Male:</strong> Dimenticare le virgolette — <code>setText(Testo)</code> non funzionerà</li>
</ul>
<p><strong>Importante:</strong> Il testo può essere impostato durante la creazione o dopo tramite <code>setText()</code>. Ottenere testo: <code>String text = field.getText();</code>. Pulire campo: <code>field.setText("");</code>. L''utente può cambiare il testo nel campo. Usa testi iniziali informativi.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo specificato apparirà nel campo di testo. L''utente può cambiarlo, eliminarlo o aggiungere ad esso.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (36, 'it', 'Testo nel campo: imposta valore iniziale',
        'Crea un campo di testo, imposta testo "Inserisci nome" e aggiungilo al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (37, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Dimensione del campo</h2>
<p class="intro">La dimensione del campo determina la comodità di input. Troppo stretto — scomodo, troppo largo — occupa molto spazio. La dimensione corretta rende l''interfaccia ordinata e comoda.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setSize(int width, int height)</code> — impostare dimensione</li>
  <li>Il metodo <code>setColumns(int columns)</code> — larghezza in caratteri</li>
  <li>Gestire dimensioni dei campi di testo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La dimensione corretta rende l''interfaccia ordinata e comoda. La dimensione deve corrispondere al contenuto atteso.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un campo di testo: <code>JTextField field = new JTextField();</code></li>
  <li>Imposta la dimensione: <code>field.setSize(200, 30);</code></li>
  <li>Aggiungi al form: <code>add(field);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Usare <code>setColumns(20)</code> — larghezza in caratteri</li>
  <li><strong>✅ Eccellente:</strong> Combinazione: <code>setColumns()</code> per larghezza, altezza automaticamente</li>
  <li><strong>⚠️ Evita:</strong> <code>setSize()</code> può confliggere con il layout</li>
  <li><strong>❌ Male:</strong> Dimensione troppo piccola — scomodo per inserire</li>
</ul>
<p><strong>Importante:</strong> <code>setColumns(20)</code> — larghezza per 20 caratteri (raccomandato). L''altezza è solitamente 20-30 pixel per campo a una riga. La larghezza dipende dal contenuto: nome — 15-20 caratteri, email — 25-30. Ricorda: il layout manager può cambiare la dimensione.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il campo di testo diventerà della dimensione specificata. Se hai usato <code>setColumns(20)</code>, il campo sarà approssimativamente di 20 caratteri di larghezza.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (37, 'it', 'Dimensione del campo: rendilo della larghezza corretta',
        'Crea un campo di testo, imposta larghezza 20 caratteri e aggiungilo al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (38, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Colori del campo</h2>
<p class="intro">I colori aiutano a classificare i campi. Sfondo bianco per campi normali, giallo chiaro per obbligatori, grigio chiaro per inattivi. Questo rende l''interfaccia intuitiva.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Metodi <code>setBackground(Color)</code> e <code>setForeground(Color)</code></li>
  <li>Colori di sfondo e testo nel campo di testo</li>
  <li>Creare combinazioni contrastanti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I colori aiutano a evidenziare campi importanti e creare gerarchia visiva. I colori corretti rendono l''interfaccia intuitiva e chiara.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un campo di testo: <code>JTextField field = new JTextField();</code></li>
  <li>Imposta i colori: <code>field.setBackground(Color.YELLOW);</code><br><code>field.setForeground(Color.BLACK);</code></li>
  <li>Aggiungi al form: <code>add(field);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Colori contrastanti — testo nero su sfondo chiaro</li>
  <li><strong>✅ Eccellente:</strong> Sfondo bianco per campi normali, colorato per importanti</li>
  <li><strong>⚠️ Evita:</strong> Colori troppo brillanti — gli occhi si stancheranno</li>
  <li><strong>❌ Male:</strong> Testo scuro su sfondo scuro — non si leggerà</li>
</ul>
<p><strong>Importante:</strong> Usa colori preimpostati. Lo sfondo è solitamente chiaro per leggibilità. Il testo è solitamente scuro. Puoi usare per evidenziare campi obbligatori. Ricorda il contrasto per leggibilità.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il campo di testo verrà visualizzato con i colori specificati. Lo sfondo e il testo corrisponderanno ai valori impostati.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (38, 'it', 'Colori del campo: colora il campo di input',
        'Crea un campo di testo, imposta sfondo giallo e testo nero, aggiungilo al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (39, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Modificabilità del campo</h2>
<p class="intro">I campi bloccati proteggono i dati. ID utente, data di creazione, stato — tutto questo non dovrebbe essere cambiato dall''utente. I campi bloccati mostrano informazioni ma non permettono di modificarle.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setEditable(boolean editable)</code> — gestire modificabilità</li>
  <li>Campi bloccati e sbloccati</li>
  <li>Differenza visiva dei campi bloccati</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I campi bloccati proteggono i dati dall''essere cambiati dall''utente. Questo è importante per valori protetti o calcolati.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un campo di testo: <code>JTextField field = new JTextField("Testo");</code></li>
  <li>Blocca il campo: <code>field.setEditable(false);</code></li>
  <li>Aggiungi al form: <code>add(field);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setEditable(false)</code> per dati protetti</li>
  <li><strong>✅ Eccellente:</strong> Combinazione con sfondo grigio per differenza visiva</li>
  <li><strong>⚠️ Evita:</strong> Bloccare tutti i campi — l''utente non inserirà nulla</li>
  <li><strong>❌ Male:</strong> Dimenticare di sbloccare campi necessari</li>
</ul>
<p><strong>Importante:</strong> <code>setEditable(false)</code> — il campo non può essere modificato. <code>setEditable(true)</code> — il campo può essere modificato (default). Il campo bloccato solitamente ha sfondo grigio. Usa per visualizzare valori calcolati o protetti.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il campo diventerà bloccato. L''utente non può cambiare il testo nel campo. Lo sfondo può diventare grigio. Il testo rimarrà visibile ma non disponibile per modifica.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (39, 'it', 'Modificabilità: blocca o sblocca il campo',
        'Crea un campo di testo, bloccalo e aggiungilo al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (40, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Suggerimento del campo</h2>
<p class="intro">I suggerimenti aiutano l''utente a capire cosa inserire. Puoi mostrare un esempio, formato, requisiti. Senza suggerimenti, l''utente può non capire cosa inserire.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setToolTipText()</code> — impostare suggerimento</li>
  <li>Creare suggerimenti per campi di input</li>
  <li>Migliorare l''esperienza utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I suggerimenti migliorano l''esperienza utente. Aiutano a capire il formato dei dati, requisiti ed esempi di input.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta suggerimento: <code>textField.setToolTipText("Inserisci il tuo nome");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setToolTipText()</code> per suggerimenti</li>
  <li><strong>✅ Eccellente:</strong> Mostrare esempi di input, formato dati</li>
  <li><strong>✅ Inoltre:</strong> Usare HTML per formattare suggerimenti</li>
  <li><strong>⚠️ Evita:</strong> Suggerimenti troppo lunghi — possono essere scomodi</li>
</ul>
<p><strong>Importante:</strong> Il suggerimento appare al passaggio del mouse. Puoi usare HTML per formattare. Suggerimenti corti e chiari sono migliori. Mostra esempi e formato.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Al passaggio del mouse, apparirà un suggerimento. Il suggerimento mostrerà cosa deve essere inserito.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (40, 'it', 'Campo di testo maestro: aggiungi suggerimento',
        'Imposta suggerimento "Inserisci il tuo nome" tramite setToolTipText()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (41, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Validazione input</h2>
<p class="intro">La validazione input previene errori. Puoi permettere solo cifre, solo lettere, un formato specifico. Senza validazione, l''utente può inserire qualsiasi cosa.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Validazione input tramite DocumentFilter</li>
  <li>Limitare caratteri di input</li>
  <li>Verificare formato dati</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La validazione input previene errori e migliora la qualità dei dati. Puoi limitare l''input solo a caratteri o formati consentiti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni documento: <code>AbstractDocument doc = (AbstractDocument) textField.getDocument();</code></li>
  <li>Imposta filtro: <code>doc.setDocumentFilter(new DocumentFilter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void insertString(FilterBypass fb, int offset, String string, AttributeSet attr) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;if (string.matches("\\\\d+")) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;super.insertString(fb, offset, string, attr);<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> DocumentFilter per validazione</li>
  <li><strong>✅ Eccellente:</strong> Verificare tramite espressioni regolari, mostrare messaggi di errore</li>
  <li><strong>✅ Inoltre:</strong> Validare alla perdita di focus</li>
  <li><strong>⚠️ Evita:</strong> Validazione troppo rigorosa — può essere scomoda</li>
</ul>
<p><strong>Importante:</strong> DocumentFilter — filtro per validazione. <code>insertString()</code> — verifica all''inserimento, <code>replace()</code> — verifica alla sostituzione. Usa espressioni regolari per verificare. Mostra messaggi di errore chiari.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>L''input sarà validato. I caratteri non validi non verranno inseriti. Puoi permettere solo i caratteri necessari.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (41, 'it', 'Campo di testo maestro: valida input',
        'Ottieni documento, crea DocumentFilter per verificare cifre tramite espressione regolare, imposta filtro')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (42, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Posizione cursore</h2>
<p class="intro">La posizione del cursore determina dove sarà il cursore. Puoi impostare il cursore all''inizio, fine, o posizione specifica. Senza impostazione, il cursore sarà alla fine.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setCaretPosition()</code> — impostare posizione cursore</li>
  <li>Il metodo <code>getCaretPosition()</code> — ottenere posizione</li>
  <li>Gestire posizione cursore</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire la posizione del cursore migliora l''esperienza utente. Puoi impostare il cursore nel posto giusto per comodità di modifica.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta posizione: <code>textField.setCaretPosition(0);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setCaretPosition()</code> per impostare</li>
  <li><strong>✅ Eccellente:</strong> 0 per inizio, <code>getText().length()</code> per fine</li>
  <li><strong>✅ Inoltre:</strong> Usare per selezione testo</li>
  <li><strong>⚠️ Evita:</strong> Impostare oltre il testo — può essere errore</li>
</ul>
<p><strong>Importante:</strong> <code>getCaretPosition()</code> — ottenere posizione. Usa per comodità utente.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il cursore sarà nella posizione specificata. Al focus, il cursore apparirà nel posto giusto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (42, 'it', 'Campo di testo maestro: imposta posizione cursore',
        'Imposta posizione cursore 0 tramite setCaretPosition(0)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (43, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Selezionare tutto il testo</h2>
<p class="intro">Selezionare tutto il testo accelera la modifica. Puoi sostituire rapidamente tutto il testo senza eliminarlo manualmente. Senza selezione, dovrai eliminare testo manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>selectAll()</code> — selezionare tutto il testo</li>
  <li>Migliorare l''esperienza utente</li>
  <li>Modifica veloce</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Selezionare tutto il testo accelera la modifica e migliora l''esperienza utente. Questo è particolarmente utile quando si sostituisce tutto il contenuto del campo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Seleziona tutto il testo: <code>textField.selectAll();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>selectAll()</code> per selezione</li>
  <li><strong>✅ Eccellente:</strong> Usare al focus, per modifica veloce</li>
  <li><strong>✅ Inoltre:</strong> Combinare con <code>requestFocus()</code></li>
  <li><strong>⚠️ Evita:</strong> Selezionare senza necessità</li>
</ul>
<p><strong>Importante:</strong> <code>select(int, int)</code> — selezionare intervallo. Usa per migliorare l''esperienza utente.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Tutto il testo sarà selezionato. Puoi sostituire rapidamente il testo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (43, 'it', 'Campo di testo maestro: seleziona tutto il testo', 'Seleziona tutto il testo tramite selectAll()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (44, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 10: Sostituire testo selezionato</h2>
<p class="intro">Sostituire selezione accelera la modifica. Puoi sostituire testo selezionato con nuovo, senza eliminarlo manualmente. Senza sostituzione, dovrai eliminare e inserire testo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>replaceSelection()</code> — sostituire selezione</li>
  <li>Sostituire testo selezionato</li>
  <li>Migliorare la modifica</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Sostituire selezione accelera la modifica e migliora l''esperienza utente. Questo è particolarmente utile quando si sostituisce parte del testo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Seleziona testo: <code>textField.select(0, 5);</code></li>
  <li>Sostituisci selezione: <code>textField.replaceSelection("Testo nuovo");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>replaceSelection()</code> per sostituzione</li>
  <li><strong>✅ Eccellente:</strong> Usare <code>select()</code> per selezione, combinare con <code>selectAll()</code></li>
  <li><strong>⚠️ Evita:</strong> Sostituire senza selezione</li>
</ul>
<p><strong>Importante:</strong> Usa per modifica veloce e migliorare l''esperienza utente.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo selezionato sarà sostituito. Puoi sostituire rapidamente il testo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (44, 'it', 'Campo di testo maestro: sostituisci selezione',
        'Seleziona testo tramite select(0, 5), sostituisci tramite replaceSelection("Testo nuovo")')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (45, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 11: Filtro documento</h2>
<p class="intro">Il filtro documento permette di validare input. Puoi limitare input, verificare formato, migliorare sicurezza. Senza filtro, puoi inserire qualsiasi cosa.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>DocumentFilter</code> — filtro documento</li>
  <li>Il metodo <code>setDocumentFilter()</code> — impostare filtro</li>
  <li>Creare campo validato</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il filtro documento migliora sicurezza e qualità dati. Puoi limitare input solo a caratteri o formati consentiti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni documento: <code>AbstractDocument doc = (AbstractDocument) textField.getDocument();</code></li>
  <li>Crea filtro: <code>doc.setDocumentFilter(new DocumentFilter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void insertString(FilterBypass fb, int offset, String string, AttributeSet attr) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;if (string.matches("[0-9]+")) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;super.insertString(fb, offset, string, attr);<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> DocumentFilter per validazione</li>
  <li><strong>✅ Eccellente:</strong> Sovrascrivere <code>insertString()</code> per inserimento, <code>replace()</code> per sostituzione</li>
  <li><strong>✅ Inoltre:</strong> Usare espressioni regolari</li>
  <li><strong>⚠️ Evita:</strong> Filtri troppo rigorosi — può essere scomodo</li>
</ul>
<p><strong>Importante:</strong> <code>remove()</code> — per eliminazione. Usa per validazione input.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>L''input sarà validato. Puoi inserire solo caratteri consentiti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (45, 'it', 'Campo di testo maestro: aggiungi filtro documento',
        'Ottieni documento, crea DocumentFilter, sovrascrivi insertString() per verificare cifre')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (46, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 12: Posizione cursore (continuazione)</h2>
<p class="intro">La posizione del cursore è importante per la modifica. Puoi impostare il cursore nel posto giusto, migliorare l''esperienza utente. Senza gestione, la posizione sarà automatica.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setCaretPosition()</code> — impostare posizione cursore</li>
  <li>Il metodo <code>getCaretPosition()</code> — ottenere posizione</li>
  <li>Gestire posizione cursore</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire la posizione del cursore migliora l''esperienza utente e la comodità di modifica.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta posizione: <code>textField.setCaretPosition(5);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setCaretPosition()</code> per impostare, <code>getCaretPosition()</code> per ottenere</li>
  <li><strong>✅ Eccellente:</strong> Usare per migliorare UX e modifica</li>
  <li><strong>⚠️ Evita:</strong> Impostare posizione inesistente</li>
</ul>
<p><strong>Importante:</strong> Verifica limiti prima di impostare posizione. Usa per migliorare la modifica.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il cursore sarà impostato nella posizione specificata. Puoi gestire la posizione del cursore.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (46, 'it', 'Campo di testo maestro: imposta posizione cursore',
        'Imposta posizione cursore 5 tramite setCaretPosition()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (47, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 13: Selezionare tutto il testo (continuazione)</h2>
<p class="intro">Selezionare tutto il testo accelera la modifica. Puoi selezionare rapidamente tutto il testo, sostituirlo, migliorare le prestazioni. Senza selezione, devi selezionare manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>selectAll()</code> — selezionare tutto il testo</li>
  <li>Migliorare l''esperienza utente</li>
  <li>Modifica veloce</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Selezionare tutto il testo accelera la modifica e migliora le prestazioni del campo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Seleziona tutto il testo: <code>textField.selectAll();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>selectAll()</code> per selezione</li>
  <li><strong>✅ Eccellente:</strong> Usare per modifica veloce, combinare con <code>setText()</code></li>
  <li><strong>⚠️ Evita:</strong> Selezionare senza necessità</li>
</ul>
<p><strong>Importante:</strong> Usa al focus per migliorare le prestazioni.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Tutto il testo sarà selezionato. Puoi sostituire rapidamente il testo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (47, 'it', 'Campo di testo maestro: seleziona tutto il testo', 'Seleziona tutto il testo tramite selectAll()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (48, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 14: Allineamento orizzontale</h2>
<p class="intro">L''allineamento determina la posizione del testo. Puoi allineare testo al bordo sinistro, centro, bordo destro, migliorare la leggibilità. Senza allineamento, il testo sarà sul bordo sinistro.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setHorizontalAlignment()</code> — impostare allineamento</li>
  <li>Costanti <code>JTextField.LEFT</code>, <code>JTextField.CENTER</code>, <code>JTextField.RIGHT</code></li>
  <li>Gestire posizione del testo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''allineamento migliora la leggibilità e organizzazione visiva del testo nel campo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta allineamento: <code>textField.setHorizontalAlignment(JTextField.CENTER);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setHorizontalAlignment()</code> per impostare</li>
  <li><strong>✅ Costanti:</strong> LEFT (bordo sinistro), CENTER (centro), RIGHT (bordo destro)</li>
  <li><strong>⚠️ Evita:</strong> Usare allineamento inappropriato</li>
</ul>
<p><strong>Importante:</strong> Usa per migliorare la leggibilità del testo nel campo.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo sarà allineato al bordo specificato. Puoi migliorare la leggibilità.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (48, 'it', 'Campo di testo maestro: imposta allineamento orizzontale',
        'Imposta allineamento CENTER tramite setHorizontalAlignment()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Italian)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
