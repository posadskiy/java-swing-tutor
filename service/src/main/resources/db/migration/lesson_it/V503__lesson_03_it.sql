-- Flyway migration V5: Lesson 3
-- This migration contains lesson, tasks, and documentation for lesson 3

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (16, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare un''etichetta</h2>
<p class="intro">Le etichette (<code>JLabel</code>) sono testo statico che aiuta l''utente a capire cosa sta succedendo. Senza di esse, l''interfaccia è come una mappa senza legenda.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>JLabel</code> — un componente per visualizzare testo e icone</li>
  <li>Creare un''etichetta senza testo e con testo</li>
  <li>Uso base delle etichette nell''interfaccia</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le etichette sono la base dell''informatività dell''interfaccia! Spiegano all''utente cosa fa ogni pulsante, campo di input o altro elemento. Le etichette rendono l''interfaccia chiara e amichevole.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un oggetto etichetta: <code>JLabel label = new JLabel();</code></li>
  <li>Aggiungi l''etichetta al form: <code>add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Creare una variabile, poi aggiungere — puoi configurare l''etichetta</li>
  <li><strong>✅ Eccellente:</strong> Creare con testo immediatamente: <code>new JLabel("Testo")</code> — più corto e chiaro</li>
  <li><strong>⚠️ Accettabile:</strong> <code>add(new JLabel());</code> — funziona, ma poi non puoi configurarla</li>
  <li><strong>❌ Male:</strong> Dimenticare di chiamare <code>add()</code> — l''etichetta non apparirà</li>
</ul>
<p><strong>Importante:</strong> Le etichette non rispondono ai clic — sono solo per visualizzare informazioni. Puoi creare un''etichetta vuota e aggiungere testo dopo con il metodo <code>setText()</code>. Le etichette si adattano automaticamente alla dimensione del contenuto. Usa nomi di variabili chiari.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un''etichetta vuota (o con testo, se lo hai specificato durante la creazione). Sarà di dimensione standard. Nelle prossime lezioni impareremo ad aggiungere testo, icone e formattare le etichette in modo bello.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (16, 'it', 'Etichetta principiante: crea un cartello informativo', 'Crea un''etichetta e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (17, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Aggiungere testo a un''etichetta</h2>
<p class="intro">Il testo su un''etichetta è informazione per l''utente. Etichette chiare rendono l''applicazione amichevole e professionale.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setText(String text)</code> — impostare testo su un''etichetta</li>
  <li>Creare un''etichetta con testo nel costruttore</li>
  <li>Lavorare con stringhe per etichette</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il testo su un''etichetta aiuta a capire l''interfaccia. "Inserisci nome:", "Stato:", "Risultato:" — tutto questo rende l''interfaccia chiara e professionale.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un''etichetta: <code>JLabel label = new JLabel();</code></li>
  <li>Imposta il testo: <code>label.setText("Ciao, mondo!");</code></li>
  <li>Aggiungi al form: <code>add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Testo tra virgolette, chiaro e informativo</li>
  <li><strong>✅ Eccellente:</strong> Creare immediatamente con testo: <code>new JLabel("Ciao!")</code> — più corto</li>
  <li><strong>⚠️ Evita:</strong> Testo molto lungo — l''etichetta si allungherà</li>
  <li><strong>❌ Male:</strong> Dimenticare le virgolette — <code>setText(Ciao)</code> non funzionerà</li>
</ul>
<p><strong>Importante:</strong> Il testo è sempre tra virgolette doppie. Usa testi informativi. Puoi usare HTML nelle etichette per formattare. Ordine: prima <code>setText()</code>, poi <code>add()</code>.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il tuo testo apparirà sull''etichetta. L''etichetta si adatterà automaticamente alla dimensione della lunghezza del testo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (17, 'it', 'Testo etichetta: dagli una voce',
        'Crea un''etichetta, imposta il suo testo "Ciao, mondo!" e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (18, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Icona su un''etichetta</h2>
<p class="intro">Un''icona su un''etichetta rende l''informazione visiva e attraente. Le icone aiutano l''utente a capire rapidamente l''informazione.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setIcon(Icon icon)</code> — impostare un''icona</li>
  <li>La classe <code>ImageIcon</code> per caricare immagini</li>
  <li>Combinare testo e icona su un''etichetta</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le icone rendono l''interfaccia visiva! Una croce rossa per errori, un segno di spunta verde per successo, un punto esclamativo giallo per avvisi — tutto questo aiuta a capire rapidamente l''informazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un''etichetta: <code>JLabel label = new JLabel();</code></li>
  <li>Imposta l''icona: <code>ImageIcon icon = new ImageIcon("path/to/image.png");</code><br><code>label.setIcon(icon);</code></li>
  <li>Aggiungi al form: <code>add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Icone di dimensione appropriata (16x16, 32x32 pixel)</li>
  <li><strong>✅ Eccellente:</strong> Combinazione di testo e icona — informativo e bello</li>
  <li><strong>⚠️ Evita:</strong> Icone molto grandi — l''etichetta diventerà enorme</li>
  <li><strong>❌ Male:</strong> Percorso file inesistente — l''icona non si caricherà</li>
</ul>
<p><strong>Importante:</strong> Le icone possono essere caricate da file. Puoi usare icone di sistema o crearne di tue. Icona e testo possono essere insieme — l''etichetta li disporrà automaticamente. Ordine: puoi mettere prima l''icona, poi il testo, o viceversa.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un''icona sull''etichetta. L''etichetta si adatterà automaticamente alla dimensione dell''icona. Nella prossima lezione impareremo ad allineare testo e icona.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (18, 'it', 'Icona etichetta: aggiungi un effetto visivo',
        'Crea un''etichetta, imposta un''icona e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (19, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Allineamento orizzontale</h2>
<p class="intro">L''allineamento orizzontale rende l''interfaccia ordinata. Intestazioni centrate, etichette a sinistra, numeri a destra — tutto questo crea ordine e leggibilità.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setHorizontalAlignment(int alignment)</code> — allineamento orizzontale</li>
  <li>Costanti: <code>SwingConstants.LEFT</code>, <code>CENTER</code>, <code>RIGHT</code></li>
  <li>Posizionare testo in un''etichetta</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''allineamento rende l''interfaccia ordinata e professionale. L''allineamento corretto crea ordine visivo e migliora la leggibilità.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un''etichetta con testo: <code>JLabel label = new JLabel("Testo");</code></li>
  <li>Imposta l''allineamento: <code>label.setHorizontalAlignment(SwingConstants.CENTER);</code></li>
  <li>Aggiungi al form: <code>add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> CENTER per intestazioni, LEFT per testo normale</li>
  <li><strong>✅ Eccellente:</strong> RIGHT per numeri e date — sembra ordinato</li>
  <li><strong>⚠️ Evita:</strong> Mescolare allineamenti diversi senza sistema</li>
  <li><strong>❌ Male:</strong> Dimenticare l''allineamento — il testo potrebbe non essere dove dovrebbe</li>
</ul>
<p><strong>Importante:</strong> Valori disponibili: <code>LEFT</code> (sinistra), <code>CENTER</code> (centro), <code>RIGHT</code> (destra). Usa <code>SwingConstants</code> per le costanti. L''allineamento funziona solo se l''etichetta è più larga del testo. Può essere combinato con allineamento verticale.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo sull''etichetta si allineerà al bordo specificato. CENTER — centrato, LEFT — sinistra, RIGHT — destra.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (19, 'it', 'Allineamento orizzontale: posiziona il testo correttamente',
        'Crea un''etichetta con testo "Centro", allineala al centro e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (20, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Allineamento verticale</h2>
<p class="intro">L''allineamento verticale è particolarmente importante quando l''etichetta è alta o accanto ad altri elementi. Questo aiuta a creare armonia visiva.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setVerticalAlignment(int alignment)</code> — allineamento verticale</li>
  <li>Costanti: <code>SwingConstants.TOP</code>, <code>CENTER</code>, <code>BOTTOM</code></li>
  <li>Posizionare testo per altezza</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''allineamento verticale aiuta ad allineare elementi su una linea. Tutto dovrebbe essere allo stesso livello per armonia visiva.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un''etichetta: <code>JLabel label = new JLabel("Testo");</code></li>
  <li>Imposta l''allineamento verticale: <code>label.setVerticalAlignment(SwingConstants.CENTER);</code></li>
  <li>Aggiungi al form: <code>add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> CENTER per la maggior parte dei casi — universale</li>
  <li><strong>✅ Eccellente:</strong> Combinazione di allineamento orizzontale e verticale</li>
  <li><strong>⚠️ Evita:</strong> TOP o BOTTOM senza necessità</li>
</ul>
<p><strong>Importante:</strong> Valori disponibili: <code>TOP</code> (in alto), <code>CENTER</code> (centro), <code>BOTTOM</code> (in basso). L''allineamento verticale è evidente quando l''etichetta è più alta del testo. Può essere combinato con orizzontale per controllo totale. Usa CENTER di default.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo sull''etichetta si allineerà verticalmente. CENTER — centrato sull''altezza dell''etichetta, TOP — in alto, BOTTOM — in basso.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (20, 'it', 'Allineamento verticale: alza o abbassa il testo',
        'Crea un''etichetta, allinea il testo verticalmente al centro e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (21, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Colori etichetta</h2>
<p class="intro">Un''etichetta colorata attira l''attenzione e aiuta a evidenziare informazioni importanti. I colori aiutano a classificare informazioni.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Metodi <code>setBackground(Color)</code> e <code>setForeground(Color)</code></li>
  <li>Colori di sfondo e testo di un''etichetta</li>
  <li>Creare combinazioni contrastanti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I colori aiutano a classificare informazioni! Un''etichetta rossa per errori, verde per successo, gialla per avvisi. Questo rende l''interfaccia chiara e informativa.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un''etichetta: <code>JLabel label = new JLabel("Testo");</code></li>
  <li>Imposta i colori: <code>label.setBackground(Color.YELLOW);</code><br><code>label.setForeground(Color.BLACK);</code><br><code>label.setOpaque(true);</code></li>
  <li>Aggiungi al form: <code>add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Colori contrastanti — nero su giallo, bianco su blu</li>
  <li><strong>✅ Eccellente:</strong> <code>setOpaque(true)</code> per sfondo visibile</li>
  <li><strong>⚠️ Importante:</strong> Senza <code>setOpaque(true)</code> lo sfondo non sarà visibile</li>
  <li><strong>❌ Evita:</strong> Colori troppo brillanti o senza contrasto</li>
</ul>
<p><strong>Importante:</strong> Per uno sfondo visibile devi chiamare <code>setOpaque(true)</code>! Usa colori preimpostati. Crea uno schema di colori: tutte le etichette di un tipo — un colore. Ricorda il contrasto.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>L''etichetta verrà visualizzata con sfondo e testo colorati. Nella prossima lezione impareremo a lavorare con i font.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (21, 'it', 'Colori etichetta: colora il cartello informativo',
        'Crea un''etichetta, imposta sfondo giallo, testo nero e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (22, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Font etichetta</h2>
<p class="intro">Il font determina l''atmosfera dell''interfaccia. Font in grassetto per intestazioni, normale per testo, corsivo per citazioni. Il font corretto rende l''interfaccia leggibile e professionale.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setFont(Font font)</code> — impostare un font</li>
  <li>La classe <code>Font</code> per creare font</li>
  <li>Stili di font: normale, grassetto, corsivo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il font determina l''atmosfera dell''interfaccia e la sua leggibilità. La scelta corretta del font rende l''interfaccia professionale.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un''etichetta: <code>JLabel label = new JLabel("Testo");</code></li>
  <li>Imposta il font: <code>Font font = new Font("Arial", Font.BOLD, 16);</code><br><code>label.setFont(font);</code></li>
  <li>Aggiungi al form: <code>add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Font leggibili: Arial, Times New Roman, Verdana</li>
  <li><strong>✅ Dimensioni:</strong> 12-16 per testo normale, 18+ per intestazioni</li>
  <li><strong>⚠️ Evita:</strong> Font decorativi — potrebbero essere illeggibili</li>
  <li><strong>❌ Male:</strong> Dimensione troppo piccola o grande</li>
</ul>
<p><strong>Importante:</strong> Creare un font: <code>new Font("Nome", Stile, Dimensione)</code>. Stili: <code>Font.PLAIN</code> (normale), <code>Font.BOLD</code> (grassetto), <code>Font.ITALIC</code> (corsivo). Possono essere combinati: <code>Font.BOLD | Font.ITALIC</code>. Usa font di sistema per compatibilità.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo sull''etichetta cambierà il suo aspetto. Il font in grassetto renderà il testo più spesso, il corsivo lo inclinerà. Anche la dimensione cambierà.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (22, 'it', 'Font etichetta: scegli lo stile del testo',
        'Crea un''etichetta, imposta font Arial in grassetto dimensione 16 e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (23, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Dimensione etichetta</h2>
<p class="intro">La dimensione dell''etichetta determina il suo ruolo. Etichetta grande — intestazione, piccola — didascalia. Dimensioni corrette creano gerarchia visiva.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setSize(int width, int height)</code> — impostare dimensione</li>
  <li>Il metodo <code>setPreferredSize(Dimension)</code> — dimensione preferita</li>
  <li>Gestire dimensioni delle etichette</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Dimensioni corrette creano gerarchia visiva e rendono l''interfaccia chiara. La dimensione aiuta a determinare il ruolo dell''etichetta nell''interfaccia.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un''etichetta: <code>JLabel label = new JLabel("Testo");</code></li>
  <li>Imposta la dimensione: <code>label.setSize(200, 50);</code></li>
  <li>Aggiungi al form: <code>add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Dimensioni che corrispondono al contenuto</li>
  <li><strong>✅ Eccellente:</strong> <code>setPreferredSize()</code> per lavorare con layout manager</li>
  <li><strong>⚠️ Evita:</strong> Dimensioni molto grandi — occuperà molto spazio</li>
  <li><strong>❌ Male:</strong> Dimensione minore del contenuto — il testo verrà tagliato</li>
</ul>
<p><strong>Importante:</strong> <code>setSize()</code> — dimensione esatta (può confliggere con il layout). <code>setPreferredSize()</code> — dimensione preferita (funziona con il layout). L''etichetta si adatta automaticamente al testo se la dimensione non è impostata. Per intestazioni: 300-400 pixel di larghezza. Per didascalie: 100-200 pixel.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>L''etichetta diventerà della dimensione specificata. Il testo rimarrà dentro (o verrà tagliato se non entra).</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (23, 'it', 'Dimensione etichetta: rendila della dimensione corretta',
        'Crea un''etichetta, imposta dimensione 200x50 e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (24, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Suggerimento etichetta</h2>
<p class="intro">Il suggerimento (tooltip) aiuta l''utente a capire lo scopo di un elemento. L''utente passerà il cursore e vedrà informazioni aggiuntive.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setToolTipText(String text)</code> — impostare un suggerimento</li>
  <li>Suggerimenti quando si passa il cursore</li>
  <li>Informazioni aggiuntive per l''utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I suggerimenti aiutano l''utente a capire lo scopo di un elemento. Un''etichetta corta "ID" con suggerimento "Identificatore univoco utente" — tutto è chiaro immediatamente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un''etichetta: <code>JLabel label = new JLabel("ID");</code></li>
  <li>Imposta il suggerimento: <code>label.setToolTipText("Identificatore univoco");</code></li>
  <li>Aggiungi al form: <code>add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Suggerimenti corti e informativi</li>
  <li><strong>✅ Eccellente:</strong> Suggerimenti per tutti gli elementi che potrebbero essere poco chiari</li>
  <li><strong>⚠️ Evita:</strong> Suggerimenti molto lunghi — scomodi da leggere</li>
  <li><strong>❌ Male:</strong> Suggerimenti che duplicano il testo dell''etichetta</li>
</ul>
<p><strong>Importante:</strong> Il suggerimento appare quando si passa il cursore e dopo un ritardo. Usa per spiegare abbreviazioni e acronimi. Suggerimenti corti (fino a 50 caratteri) si leggono meglio. Puoi usare HTML nei suggerimenti per formattare. I suggerimenti sono particolarmente utili per icone senza testo.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando si passa il cursore sull''etichetta, apparirà un suggerimento. Mostrerà il testo che hai specificato. Il suggerimento scomparirà quando il cursore si allontanerà.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (24, 'it', 'Suggerimento etichetta: aggiungi aiuto popup',
        'Crea un''etichetta, aggiungi suggerimento "Questo è un suggerimento!" e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (25, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 10: HTML in etichetta</h2>
<p class="intro">HTML permette di creare testo formattato in modo bello nelle etichette. Puoi usare testo in grassetto, corsivo, colori e molto altro.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Usare HTML nelle etichette attraverso <code>setText()</code></li>
  <li>Formattare testo: grassetto, corsivo, colore</li>
  <li>Creare etichette visivamente attraenti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>HTML permette di creare testo formattato nelle etichette. Senza HTML, l''etichetta sarà solo testo semplice.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un''etichetta: <code>JLabel label = new JLabel();</code></li>
  <li>Imposta testo HTML: <code>label.setText("&lt;html&gt;&lt;b&gt;Grassetto&lt;/b&gt;&lt;/html&gt;");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Richiesto:</strong> Avvolgi HTML in tag <code>&lt;html&gt;&lt;/html&gt;</code></li>
  <li><strong>✅ Usa:</strong> <code>&lt;b&gt;</code> per testo in grassetto, <code>&lt;i&gt;</code> per corsivo</li>
  <li><strong>✅ Combina:</strong> Puoi combinare tag per formattazione complessa</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo sull''etichetta verrà formattato secondo i tag HTML. Testo in grassetto, corsivo e altri stili verranno applicati.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (25, 'it', 'HTML in etichetta: testo formattato',
        'Crea un''etichetta con testo HTML "&lt;b&gt;Grassetto&lt;/b&gt;" e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (26, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 11: Icona su un''etichetta</h2>
<p class="intro">Un''etichetta può visualizzare non solo testo, ma anche un''immagine. Le icone rendono le etichette visivamente attraenti.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setIcon()</code> — impostare un''icona</li>
  <li>La classe <code>ImageIcon</code> — icona immagine</li>
  <li>Creare etichette con icone</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le icone rendono le etichette visivamente attraenti. Pulsanti, menu, liste — le icone sono usate ovunque. Senza di esse, l''interfaccia sarà solo testo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un''icona: <code>ImageIcon icon = new ImageIcon("icon.png");</code></li>
  <li>Imposta l''icona: <code>label.setIcon(icon);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setIcon()</code> per impostare un''icona</li>
  <li><strong>✅ Inoltre:</strong> <code>setIconTextGap()</code> per spaziatura, <code>setHorizontalTextPosition()</code> per posizione del testo</li>
  <li><strong>✅ Combina:</strong> Testo e icona insieme</li>
  <li><strong>⚠️ Evita:</strong> Icone troppo grandi — potrebbe sembrare disordinato</li>
</ul>
<p><strong>Importante:</strong> <code>ImageIcon(String)</code> — creare un''icona da un file. Puoi usare <code>setVerticalTextPosition()</code> per posizione verticale del testo.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>L''etichetta visualizzerà un''icona. L''icona apparirà accanto al testo o al suo posto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (26, 'it', 'Etichetta maestro: aggiungi un''icona all''etichetta',
        'Crea un ImageIcon dal file "icon.png", imposta l''icona nell''etichetta tramite setIcon()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (27, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 12: Allineamento testo</h2>
<p class="intro">L''allineamento del testo rende le etichette ordinate. Puoi allineare testo al centro, sinistra, destra.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setHorizontalAlignment()</code> — allineamento orizzontale</li>
  <li>Il metodo <code>setVerticalAlignment()</code> — allineamento verticale</li>
  <li>Configurare allineamento del testo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''allineamento del testo rende le etichette ordinate e professionali. Senza allineamento, il testo sarà in una posizione imprevedibile.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Allinea orizzontalmente: <code>label.setHorizontalAlignment(SwingConstants.CENTER);</code></li>
  <li>Allinea verticalmente: <code>label.setVerticalAlignment(SwingConstants.CENTER);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> CENTER per centrare</li>
  <li><strong>✅ Eccellente:</strong> LEFT/RIGHT per allineamento, combinare orizzontale e verticale</li>
  <li><strong>⚠️ Evita:</strong> Allineamento diverso per etichette diverse senza sistema</li>
</ul>
<p><strong>Importante:</strong> CENTER, LEFT, RIGHT — costanti di allineamento. TOP, BOTTOM — costanti verticali. Usa <code>SwingConstants</code> per le costanti.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo nell''etichetta verrà allineato. Il testo prenderà la posizione specificata.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (27, 'it', 'Etichetta maestro: allinea il testo',
        'Imposta allineamento orizzontale e verticale CENTER tramite setHorizontalAlignment() e setVerticalAlignment()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (28, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 13: Contenuto HTML in etichetta</h2>
<p class="intro">HTML permette di creare testo formattato complesso. Puoi combinare grassetto e corsivo, aggiungere colori, creare liste.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Usare tag HTML nelle etichette</li>
  <li>Combinare formattazione: grassetto e corsivo</li>
  <li>Creare testo formattato complesso</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>HTML permette di creare testo formattato nelle etichette. Senza HTML, l''etichetta sarà solo testo semplice.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un''etichetta: <code>JLabel label = new JLabel();</code></li>
  <li>Imposta testo HTML: <code>label.setText("&lt;html&gt;&lt;b&gt;Grassetto&lt;/b&gt; e &lt;i&gt;Corsivo&lt;/i&gt;&lt;/html&gt;");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Richiesto:</strong> Avvolgi HTML in tag <code>&lt;html&gt;&lt;/html&gt;</code></li>
  <li><strong>✅ Usa:</strong> <code>&lt;b&gt;</code> per testo in grassetto, <code>&lt;i&gt;</code> per corsivo</li>
  <li><strong>✅ Combina:</strong> Puoi combinare tag per formattazione complessa</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo sull''etichetta verrà formattato secondo i tag HTML. Puoi creare formattazione complessa con combinazione di stili.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (28, 'it', 'Etichetta maestro: aggiungi contenuto HTML',
        'Imposta testo con tag HTML: &lt;b&gt;Grassetto&lt;/b&gt; e &lt;i&gt;Corsivo&lt;/i&gt;')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (29, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 14: Allineamento icona</h2>
<p class="intro">L''allineamento dell''icona determina la sua posizione. Puoi posizionare l''icona a sinistra, destra, centro.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setHorizontalAlignment()</code> — allineamento orizzontale</li>
  <li>Il metodo <code>setVerticalAlignment()</code> — allineamento verticale</li>
  <li>Configurare posizione icona</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''allineamento dell''icona determina la sua posizione nell''etichetta. Senza configurazione, l''icona sarà nella posizione di default.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta l''icona: <code>label.setIcon(new ImageIcon("icon.png"));</code></li>
  <li>Imposta l''allineamento: <code>label.setHorizontalAlignment(SwingConstants.LEFT);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setHorizontalAlignment()</code> per orizzontale, <code>setVerticalAlignment()</code> per verticale</li>
  <li><strong>✅ Costanti:</strong> LEFT, CENTER, RIGHT per orizzontale, TOP, BOTTOM per verticale</li>
  <li><strong>✅ Combina:</strong> Con testo per controllo totale</li>
  <li><strong>⚠️ Evita:</strong> Cambi frequenti di allineamento</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>L''icona sarà nella posizione specificata. Puoi posizionare l''icona a sinistra, destra o centro.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (29, 'it', 'Etichetta maestro: configura allineamento icona',
        'Imposta un''icona, imposta allineamento orizzontale LEFT tramite setHorizontalAlignment()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (30, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 15: Allineamento verticale</h2>
<p class="intro">L''allineamento verticale determina la posizione del testo. Puoi posizionare testo in alto, centro, basso.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setVerticalAlignment()</code> — allineamento verticale</li>
  <li>Costanti di allineamento (TOP, CENTER, BOTTOM)</li>
  <li>Configurare posizione del testo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''allineamento verticale determina la posizione del testo nell''etichetta. Senza configurazione, il testo sarà nella posizione di default.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta l''allineamento: <code>label.setVerticalAlignment(SwingConstants.TOP);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setVerticalAlignment()</code> per allineamento verticale</li>
  <li><strong>✅ Costanti:</strong> TOP (in alto), CENTER (centro), BOTTOM (in basso)</li>
  <li><strong>✅ Combina:</strong> Con orizzontale per controllo totale</li>
  <li><strong>⚠️ Evita:</strong> Cambi frequenti di allineamento</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo sarà nella posizione specificata. Puoi posizionare testo in alto, centro o basso.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (30, 'it', 'Etichetta maestro: configura allineamento verticale',
        'Imposta allineamento verticale TOP tramite setVerticalAlignment()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (31, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 16: Posizione testo relativa all''icona</h2>
<p class="intro">La posizione del testo determina la sua ubicazione relativa all''icona. Puoi posizionare testo in alto, basso, sinistra, destra dell''icona.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setVerticalTextPosition()</code> — posizione verticale</li>
  <li>Il metodo <code>setHorizontalTextPosition()</code> — posizione orizzontale</li>
  <li>Configurare posizione testo e icona</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La posizione del testo determina la sua ubicazione relativa all''icona. Senza configurazione, la posizione sarà di default.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta l''icona: <code>label.setIcon(new ImageIcon("icon.png"));</code></li>
  <li>Imposta la posizione del testo: <code>label.setHorizontalTextPosition(SwingConstants.RIGHT);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setHorizontalTextPosition()</code> per orizzontale, <code>setVerticalTextPosition()</code> per verticale</li>
  <li><strong>✅ Costanti:</strong> LEFT, CENTER, RIGHT per orizzontale, TOP, BOTTOM per verticale</li>
  <li><strong>⚠️ Evita:</strong> Cambi frequenti di posizione</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo sarà nella posizione specificata relativa all''icona. Puoi posizionare testo a sinistra, destra, in alto o in basso dell''icona.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (31, 'it', 'Etichetta maestro: configura posizione testo',
        'Imposta un''icona, imposta posizione orizzontale testo RIGHT tramite setHorizontalTextPosition()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (32, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 17: Mnemonico per etichetta</h2>
<p class="intro">Il mnemonico migliora l''accessibilità dell''interfaccia. Puoi assegnare un tasto di scelta rapida a un''etichetta, collegarla a un componente, migliorare la navigazione.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setDisplayedMnemonic()</code> — impostare un mnemonico</li>
  <li>Il metodo <code>setLabelFor()</code> — collegare a un componente</li>
  <li>Creare interfacce accessibili</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il mnemonico migliora l''accessibilità! Puoi attivare il componente collegato tramite Alt+tasto senza usare il mouse. Senza mnemonico, devi usare il mouse.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta il mnemonico: <code>label.setDisplayedMnemonic(KeyEvent.VK_N);</code></li>
  <li>Collega a un componente: <code>label.setLabelFor(textField);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setDisplayedMnemonic()</code> con costanti <code>KeyEvent.VK_*</code></li>
  <li><strong>✅ Collega:</strong> A un componente tramite <code>setLabelFor()</code></li>
  <li><strong>✅ Migliora:</strong> L''accessibilità dell''interfaccia</li>
  <li><strong>⚠️ Evita:</strong> Duplicare mnemonici</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La lettera mnemonica sarà sottolineata nel testo dell''etichetta. Quando si preme Alt+tasto, il focus si sposterà al componente collegato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (32, 'it', 'Etichetta maestro: imposta mnemonico',
        'Imposta mnemonico VK_N tramite setDisplayedMnemonic(), collega a un componente tramite setLabelFor()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (33, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 18: Bordo etichetta</h2>
<p class="intro">Il bordo migliora l''aspetto visivo di un''etichetta. Puoi aggiungere una cornice, migliorare il design.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setBorder()</code> — impostare un bordo</li>
  <li>La classe <code>BorderFactory</code> — fabbrica bordi</li>
  <li>Migliorare l''aspetto visivo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il bordo migliora l''aspetto visivo di un''etichetta. Puoi aggiungere una cornice per evidenziare un elemento o migliorare il design.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un bordo: <code>Border border = BorderFactory.createLineBorder(Color.BLACK, 1);</code></li>
  <li>Imposta il bordo: <code>label.setBorder(border);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setBorder()</code> per impostare, <code>BorderFactory</code> per creare</li>
  <li><strong>✅ Eccellente:</strong> <code>createLineBorder()</code> per una linea semplice</li>
  <li><strong>⚠️ Evita:</strong> Bordo troppo spesso — potrebbe sembrare rozzo</li>
</ul>
<p><strong>Importante:</strong> Usa per migliorare l''aspetto. Rendi il bordo moderatamente spesso.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>L''etichetta avrà un bordo. Puoi migliorare l''aspetto visivo e evidenziare l''elemento.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (33, 'it', 'Etichetta maestro: aggiungi un bordo',
        'Crea un bordo tramite BorderFactory.createLineBorder(Color.BLACK, 1), imposta tramite setBorder()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (34, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 19: Distanza tra icona e testo</h2>
<p class="intro">La distanza migliora l''aspetto visivo di un''etichetta. Puoi impostare spaziatura tra icona e testo, migliorare la leggibilità.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setIconTextGap()</code> — impostare distanza</li>
  <li>Gestire spaziatura tra icona e testo</li>
  <li>Migliorare l''aspetto visivo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La distanza migliora la leggibilità. Senza distanza, icona e testo saranno vicini, il che peggiora la percezione visiva.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta la distanza: <code>label.setIconTextGap(10);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setIconTextGap()</code> per impostare distanza</li>
  <li><strong>✅ Valori ragionevoli:</strong> 5-15 pixel — ottimale per la maggior parte dei casi</li>
  <li><strong>⚠️ Evita:</strong> Distanza troppo grande o piccola</li>
</ul>
<p><strong>Importante:</strong> Usa per migliorare aspetto e leggibilità. Rendi la distanza comoda per la percezione.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà distanza tra l''icona e il testo. Questo migliorerà l''aspetto visivo e la leggibilità dell''etichetta.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (34, 'it', 'Etichetta maestro: imposta distanza tra icona e testo',
        'Imposta distanza 10 tramite setIconTextGap()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Italian)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
