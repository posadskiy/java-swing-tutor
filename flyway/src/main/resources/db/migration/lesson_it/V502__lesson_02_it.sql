-- Flyway migration V5: Lesson 2
-- This migration contains lesson, tasks, and documentation for lesson 2

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (2, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare un pulsante</h2>
<p class="intro">Il tuo primo passo in Java Swing è creare un pulsante. Senza pulsanti, gli utenti non possono interagire con l''applicazione.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>JButton</code> — componente visivo di base</li>
  <li>Il metodo <code>add()</code> — aggiungere un componente al modulo</li>
  <li>Struttura per creare elementi dell''interfaccia</li>
</ul>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un oggetto pulsante:<br><code>JButton button = new JButton();</code></li>
  <li>Aggiungi il pulsante al modulo:<br><code>add(button);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Crea una variabile, poi aggiungi — il codice è più leggibile</li>
  <li><strong>⚠️ Accettabile:</strong> <code>add(new JButton());</code> — funziona, ma il pulsante non può essere configurato</li>
  <li><strong>❌ Male:</strong> Dimenticare <code>add()</code> — il pulsante non apparirà sullo schermo</li>
</ul>
<p><strong>Importante:</strong> Nell''editor, il codice viene eseguito all''interno di una finestra pronta, quindi <code>add()</code> è disponibile immediatamente. Usa nomi di variabili chiari.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un pulsante grigio di dimensione standard sul modulo. Nelle prossime lezioni impareremo a personalizzare il suo aspetto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (2, 'it', 'Pulsante principiante: invoca l''eroe', 'Crea un pulsante e aggiungilo al modulo')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (3, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Aggiungere testo a un pulsante</h2>
<p class="intro">Un pulsante senza testo non è informativo per l''utente. Impareremo ad aggiungere etichette per migliorare l''esperienza dell''utente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setText(String text)</code> — impostare il testo su un pulsante</li>
  <li>Lavorare con stringhe in Java</li>
  <li>Principi di interfacce utente chiare</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il testo su un pulsante è il modo principale per comunicare con l''utente. Etichette chiare ("Salva", "Annulla") rendono l''interfaccia intuitiva e professionale.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un pulsante: <code>JButton button = new JButton();</code></li>
  <li>Imposta il testo: <code>button.setText("Andiamo!");</code></li>
  <li>Aggiungi al modulo: <code>add(button);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Testo breve e chiaro tra virgolette — "Salva", "Annulla"</li>
  <li><strong>⚠️ Evita:</strong> Testi lunghi (il pulsante si allungherà), virgolette dimenticate (<code>setText(Andiamo)</code> non funzionerà), stringhe vuote</li>
</ul>
<p><strong>Importante:</strong> Il testo è sempre tra virgolette doppie. Usa parole chiare. Ordine delle chiamate: prima <code>setText()</code>, poi <code>add()</code>.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo impostato verrà visualizzato sul pulsante. Il pulsante si adatterà automaticamente alla lunghezza del testo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (3, 'it', 'Incantesimo di testo: dai un nome al pulsante',
        'Crea un pulsante, imposta il suo testo e aggiungilo al modulo')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (4, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Cambiare il colore di sfondo</h2>
<p class="intro">Il colore aiuta a evidenziare elementi importanti e migliorare la gerarchia visiva dell''interfaccia.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setBackground(Color color)</code></li>
  <li>La classe <code>Color</code> di AWT</li>
  <li>Colori preimpostati: <code>Color.YELLOW</code>, <code>Color.RED</code>, <code>Color.BLUE</code></li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I colori aiutano l''utente a orientarsi: giallo — attenzione, rosso — pericolo, verde — successo. I colori corretti rendono l''interfaccia intuitiva.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un pulsante: <code>JButton button = new JButton();</code></li>
  <li>Imposta il colore: <code>button.setBackground(Color.YELLOW);</code></li>
  <li>Aggiungi al modulo: <code>add(button);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Colori preimpostati (<code>Color.YELLOW</code>, <code>Color.RED</code>, <code>Color.GREEN</code>)</li>
  <li><strong>⚠️ Avanzato:</strong> Colore personalizzato via RGB: <code>new Color(255, 200, 0)</code></li>
  <li><strong>❌ Evita:</strong> Colori troppo brillanti o a basso contrasto</li>
</ul>
<p><strong>Colori disponibili:</strong> <code>RED</code>, <code>GREEN</code>, <code>BLUE</code>, <code>YELLOW</code>, <code>ORANGE</code>, <code>PINK</code>, <code>CYAN</code>, <code>MAGENTA</code>, <code>WHITE</code>, <code>BLACK</code>, <code>GRAY</code></p>
<p><strong>Pratica:</strong> Usa i colori in modo significativo (rosso — elimina, verde — salva). L''ordine delle chiamate non è importante.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il pulsante verrà visualizzato con uno sfondo giallo. Il testo rimarrà visibile se il suo colore contrasta con lo sfondo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (4, 'it', 'Pelle del pulsante: oro!', 'Crea un pulsante, dipingi lo sfondo di giallo e aggiungilo al modulo')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (5, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Colore del testo</h2>
<p class="intro">Gestire il colore del testo per creare un''interfaccia leggibile. Il contrasto corretto è critico per la leggibilità.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setForeground(Color color)</code> — impostare il colore del testo</li>
  <li>Differenza tra <code>setForeground()</code> (testo) e <code>setBackground()</code> (sfondo)</li>
  <li>Concetto di contrasto e leggibilità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il contrasto corretto è critico per la leggibilità. Il testo bianco su uno sfondo bianco è invisibile. Le interfacce professionali usano combinazioni di colori provate.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un pulsante: <code>JButton button = new JButton();</code></li>
  <li>Imposta il colore del testo: <code>button.setForeground(Color.WHITE);</code></li>
  <li>Aggiungi al modulo: <code>add(button);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Testo bianco su sfondo scuro o nero su chiaro — contrasto perfetto</li>
  <li><strong>✅ Coppie classiche:</strong> bianco su blu, nero su giallo, bianco su rosso</li>
  <li><strong>⚠️ Verifica:</strong> Testo colorato su sfondo colorato — devi verificare la leggibilità</li>
  <li><strong>❌ Evita:</strong> Testo e sfondo dello stesso colore, testo giallo su sfondo bianco</li>
</ul>
<p><strong>Regola:</strong> sfondo scuro → testo chiaro, sfondo chiaro → testo scuro. L''ordine delle chiamate non è importante.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il testo sul pulsante verrà visualizzato in bianco. Con uno sfondo scuro, il testo bianco fornisce un''eccellente leggibilità.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (5, 'it', 'Colore del testo: leggibile e bello',
        'Crea un pulsante, rendi il testo bianco e aggiungilo al modulo!')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (6, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Gestire la dimensione del pulsante</h2>
<p class="intro">La dimensione del pulsante influisce sulla sua importanza e usabilità. I pulsanti grandi attirano l''attenzione, quelli piccoli riducono il rischio di azioni accidentali.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setSize(int width, int height)</code> — impostare la dimensione in pixel</li>
  <li>Parametri: larghezza (width) e altezza (height)</li>
  <li>Interazione con i gestori di layout</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La dimensione del pulsante determina la sua importanza e convenienza. Un pulsante grande "Salva" attira l''attenzione ed è più facile da premere. Le dimensioni corrette rendono l''interfaccia intuitiva.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea un pulsante: <code>JButton button = new JButton();</code></li>
  <li>Imposta la dimensione: <code>button.setSize(320, 200);</code></li>
  <li>Aggiungi al modulo: <code>add(button);</code></li>
</ol>
<p><strong>Nota:</strong> Il primo parametro è la larghezza, il secondo è l''altezza.</p>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Dimensioni standard:</strong> piccolo (100x30), medio (200x50), grande (320x200)</li>
  <li><strong>✅ Minimo:</strong> 80x30 per premere comodamente</li>
  <li><strong>✅ Gerarchia:</strong> pulsante principale — il più grande</li>
  <li><strong>❌ Evita:</strong> Numeri negativi, dimensione zero, valori troppo grandi</li>
</ul>
<p><strong>Importante:</strong> Non confondere larghezza e altezza. Considera la lunghezza del testo e i vincoli del gestore di layout.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il pulsante verrà visualizzato a 320x200 pixel. Il testo rimarrà centrato, il colore di sfondo riempirà tutta l''area.</p>
<p class="summary"><strong>Riepilogo:</strong> Hai padroneggiato le abilità di base per lavorare con i pulsanti: creazione, testo, colori e dimensioni. In arrivo — gestione degli eventi e creazione di interfacce complete.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (6, 'it', 'Hitbox: rendi il pulsante enorme',
        'Crea un pulsante, imposta la sua dimensione a 320x200 e aggiungilo al modulo.')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (7, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Tasti di scelta rapida (mnemonica)</h2>
<p class="intro">Aggiungere accesso rapido tramite tastiera. I tasti di scelta rapida accelerano il lavoro per utenti esperti e migliorano l''accessibilità dell''interfaccia.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setMnemonic(int)</code> — impostare la mnemonica</li>
  <li>Tasti di scelta rapida per pulsanti (Alt + lettera)</li>
  <li>Sottolineare una lettera nel testo tramite HTML</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I tasti di scelta rapida accelerano il lavoro! Puoi attivare un pulsante senza un mouse, il che è conveniente per utenti esperti. L''attivazione senza mouse aumenta l''efficienza.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta la mnemonica: <code>button.setMnemonic(KeyEvent.VK_O);</code></li>
  <li>Sottolinea la lettera nel testo: <code>button.setText("&lt;html&gt;&lt;u&gt;A&lt;/u&gt;pri&lt;/html&gt;");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> La prima lettera della parola per la mnemonica</li>
  <li><strong>✅ Mostra:</strong> Sottolineare la lettera nel testo tramite HTML</li>
  <li><strong>✅ Usa:</strong> Costanti <code>KeyEvent.VK_*</code> per affidabilità</li>
  <li><strong>⚠️ Evita:</strong> Lettere rare, conflitti con altri tasti di scelta rapida</li>
</ul>
<p><strong>Importante:</strong> L''attivazione avviene tramite Alt + lettera. Evidenzia visivamente la mnemonica nel testo del pulsante.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La lettera nel testo del pulsante sarà sottolineata. Premere Alt + lettera attiverà il pulsante.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (7, 'it', 'Pulsante maestro: aggiungi un tasto di scelta rapida',
        'Imposta la mnemonica VK_O tramite setMnemonic(), sottolinea la lettera nel testo tramite HTML')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (8, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Icona con testo</h2>
<p class="intro">Combinare un elemento visivo e testo rende i pulsanti più informativi e attraenti.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Combinare icona e testo</li>
  <li>Il metodo <code>setIconTextGap()</code> — spazio tra elementi</li>
  <li>Posizionare il testo relativo all''icona</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario</h3>
<p>L''icona con testo migliora la comprensione dello scopo del pulsante. L''elemento visivo attira l''attenzione, il testo chiarisce l''azione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta l''icona: <code>button.setIcon(new ImageIcon("icon.png"));</code></li>
  <li>Imposta il testo: <code>button.setText("Salva");</code></li>
  <li>Imposta lo spazio: <code>button.setIconTextGap(5);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setIconTextGap()</code> per controllare la distanza</li>
  <li><strong>✅ Inoltre:</strong> <code>setHorizontalTextPosition()</code> e <code>setVerticalTextPosition()</code> per il posizionamento</li>
  <li><strong>⚠️ Evita:</strong> Icone troppo grandi — rompono l''equilibrio</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Sia l''icona che il testo verranno visualizzati sul pulsante uno accanto all''altro. Lo spazio tra loro può essere regolato per un aspetto ottimale.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (8, 'it', 'Pulsante maestro: aggiungi icona con testo',
        'Imposta l''icona tramite setIcon(), imposta il testo tramite setText(), imposta lo spazio 5 tramite setIconTextGap()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (9, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Mnemonica per pulsante</h2>
<p class="intro">Aggiungere una mnemonica consente di attivare il pulsante tramite Alt+lettera, accelerando il lavoro per utenti esperti.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setMnemonic()</code> — impostare la mnemonica</li>
  <li>Sottolineare una lettera nel testo tramite il simbolo &</li>
  <li>Creare pulsanti accessibili</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La mnemonica accelera il lavoro! Puoi attivare il pulsante tramite Alt+lettera senza usare un mouse. Senza mnemonica, dovrai fare clic con il mouse.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta la mnemonica: <code>button.setMnemonic(KeyEvent.VK_S);</code></li>
  <li>Aggiungi sottolineatura al testo: <code>button.setText("Salva (&S)");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMnemonic()</code> con costanti <code>KeyEvent.VK_*</code></li>
  <li><strong>✅ Mostra:</strong> La mnemonica nel testo tramite il simbolo &</li>
  <li><strong>✅ Usa:</strong> Lettere uniche, prima lettera della parola</li>
  <li><strong>⚠️ Evita:</strong> Duplicare mnemoniche — può causare conflitto</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La lettera nel testo del pulsante sarà sottolineata. Puoi attivare il pulsante tramite Alt+lettera.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (9, 'it', 'Pulsante maestro: aggiungi mnemonica',
        'Imposta la mnemonica VK_S tramite setMnemonic(), aggiungi &S al testo del pulsante')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (10, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Icona al passaggio del mouse</h2>
<p class="intro">L''icona al passaggio del mouse rende il pulsante interattivo e migliora il feedback visivo con l''utente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setRolloverIcon()</code> — icona al passaggio del mouse</li>
  <li>Creare pulsanti interattivi</li>
  <li>Migliorare l''esperienza dell''utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''icona al passaggio del mouse migliora il feedback visivo. Puoi mostrare un''icona diversa al passaggio del mouse, rendendo il pulsante più interattivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta l''icona normale: <code>button.setIcon(new ImageIcon("normal.png"));</code></li>
  <li>Imposta l''icona al passaggio: <code>button.setRolloverIcon(new ImageIcon("hover.png"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setRolloverIcon()</code> per il passaggio del mouse</li>
  <li><strong>✅ Inoltre:</strong> <code>setPressedIcon()</code> per la pressione, <code>setSelectedIcon()</code> per la selezione</li>
  <li><strong>✅ Combina:</strong> Icone diverse per stati diversi</li>
  <li><strong>⚠️ Evita:</strong> Troppe icone diverse — può essere eccessivo</li>
</ul>
<p><strong>Importante:</strong> Usa per feedback visivo. Rendi le icone chiare e distinguibili.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Al passaggio del mouse, l''icona cambierà. Il pulsante diventerà più interattivo e informativo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (10, 'it', 'Pulsante maestro: aggiungi icona al passaggio del mouse',
        'Imposta l''icona normale tramite setIcon(), imposta l''icona al passaggio tramite setRolloverIcon()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (11, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 10: Icona per pulsante disabilitato</h2>
<p class="intro">L''icona per pulsante disabilitato migliora il feedback visivo e aiuta l''utente a capire lo stato del pulsante.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setDisabledIcon()</code> — icona per pulsante disabilitato</li>
  <li>Creare feedback visivo</li>
  <li>Migliorare l''esperienza dell''utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''icona per pulsante disabilitato migliora la comprensione dello stato. Puoi mostrare un''icona diversa quando il pulsante è disabilitato, migliorando il feedback visivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta l''icona normale: <code>button.setIcon(new ImageIcon("normal.png"));</code></li>
  <li>Imposta l''icona disabilitata: <code>button.setDisabledIcon(new ImageIcon("disabled.png"));</code></li>
  <li>Disabilita il pulsante: <code>button.setEnabled(false);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setDisabledIcon()</code> per pulsante disabilitato</li>
  <li><strong>✅ Inoltre:</strong> Combina con <code>setPressedIcon()</code> e <code>setSelectedIcon()</code></li>
  <li><strong>✅ Fai:</strong> Rendi le icone chiare e distinguibili</li>
  <li><strong>⚠️ Evita:</strong> Troppe icone diverse — può essere eccessivo</li>
</ul>
<p><strong>Importante:</strong> Usa per feedback visivo. L''icona dovrebbe mostrare chiaramente che il pulsante è disabilitato.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando è disabilitato, l''icona cambierà. Il pulsante mostrerà un''icona diversa quando è disabilitato, migliorando la comprensione dello stato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (11, 'it', 'Pulsante maestro: aggiungi icona per pulsante disabilitato',
        'Imposta l''icona normale tramite setIcon(), imposta l''icona disabilitata tramite setDisabledIcon(), disabilita il pulsante')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (12, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 11: Icona alla pressione</h2>
<p class="intro">L''icona alla pressione rende il pulsante interattivo e migliora il feedback visivo durante l''interazione.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setPressedIcon()</code> — icona alla pressione</li>
  <li>Creare pulsanti interattivi</li>
  <li>Migliorare l''esperienza dell''utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''icona alla pressione migliora il feedback visivo. Puoi mostrare un''icona diversa premendo il mouse, rendendo il pulsante più interattivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta l''icona normale: <code>button.setIcon(new ImageIcon("normal.png"));</code></li>
  <li>Imposta l''icona di pressione: <code>button.setPressedIcon(new ImageIcon("pressed.png"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setPressedIcon()</code> per la pressione</li>
  <li><strong>✅ Inoltre:</strong> Combina con <code>setRolloverIcon()</code> e <code>setSelectedIcon()</code></li>
  <li><strong>✅ Fai:</strong> Rendi le icone chiare e distinguibili</li>
  <li><strong>⚠️ Evita:</strong> Troppe icone diverse — può essere eccessivo</li>
</ul>
<p><strong>Importante:</strong> Usa per feedback visivo. L''icona dovrebbe mostrare chiaramente lo stato premuto.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Alla pressione, l''icona cambierà. Il pulsante diventerà più interattivo e informativo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (12, 'it', 'Pulsante maestro: aggiungi icona alla pressione',
        'Imposta l''icona normale tramite setIcon(), imposta l''icona di pressione tramite setPressedIcon()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (13, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 12: Icona al passaggio del mouse (rollover)</h2>
<p class="intro">L''icona al passaggio del mouse rende il pulsante interattivo e migliora il feedback visivo al passaggio del mouse.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setRolloverIcon()</code> — icona al passaggio del mouse</li>
  <li>Il metodo <code>setRolloverEnabled()</code> — abilitare/disabilitare il passaggio del mouse</li>
  <li>Creare pulsanti interattivi</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''icona al passaggio del mouse migliora il feedback visivo. Puoi mostrare un''icona diversa al passaggio del mouse, rendendo il pulsante più interattivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta l''icona normale: <code>button.setIcon(new ImageIcon("normal.png"));</code></li>
  <li>Imposta l''icona al passaggio: <code>button.setRolloverIcon(new ImageIcon("rollover.png"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setRolloverIcon()</code> per il passaggio del mouse</li>
  <li><strong>✅ Inoltre:</strong> <code>setRolloverEnabled(true)</code> per abilitare, combina con <code>setPressedIcon()</code></li>
  <li><strong>✅ Fai:</strong> Rendi le icone chiare e distinguibili</li>
  <li><strong>⚠️ Evita:</strong> Troppe icone diverse — può essere eccessivo</li>
</ul>
<p><strong>Importante:</strong> Usa per feedback visivo. Combina con altre icone per il controllo completo degli stati.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Al passaggio del mouse, l''icona cambierà. Il pulsante diventerà più interattivo e informativo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (13, 'it', 'Pulsante maestro: aggiungi icona al passaggio del mouse',
        'Imposta l''icona normale tramite setIcon(), imposta l''icona al passaggio tramite setRolloverIcon()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (14, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 13: Icona alla selezione</h2>
<p class="intro">L''icona alla selezione rende il pulsante interattivo e migliora il feedback visivo alla selezione del pulsante.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setSelectedIcon()</code> — icona alla selezione</li>
  <li>Creare pulsanti interattivi</li>
  <li>Migliorare l''esperienza dell''utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''icona alla selezione migliora il feedback visivo. Puoi mostrare un''icona diversa alla selezione del pulsante, migliorando la comprensione dello stato.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta l''icona normale: <code>button.setIcon(new ImageIcon("normal.png"));</code></li>
  <li>Imposta l''icona di selezione: <code>button.setSelectedIcon(new ImageIcon("selected.png"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setSelectedIcon()</code> per la selezione</li>
  <li><strong>✅ Inoltre:</strong> Combina con <code>setRolloverIcon()</code> per il controllo completo</li>
  <li><strong>✅ Fai:</strong> Rendi le icone chiare e distinguibili</li>
  <li><strong>⚠️ Evita:</strong> Troppe icone diverse — può essere eccessivo</li>
</ul>
<p><strong>Importante:</strong> Usa per feedback visivo. L''icona dovrebbe mostrare chiaramente lo stato di selezione.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Alla selezione, l''icona cambierà. Il pulsante diventerà più interattivo e informativo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (14, 'it', 'Pulsante maestro: aggiungi icona alla selezione',
        'Imposta l''icona normale tramite setIcon(), imposta l''icona di selezione tramite setSelectedIcon()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (15, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 14: Icona alla disabilitazione</h2>
<p class="intro">L''icona alla disabilitazione migliora il feedback visivo e aiuta l''utente a capire che il pulsante non è disponibile.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setDisabledIcon()</code> — icona alla disabilitazione</li>
  <li>Creare feedback visivo</li>
  <li>Migliorare l''esperienza dell''utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''icona alla disabilitazione migliora la comprensione dello stato. Puoi mostrare un''icona diversa alla disabilitazione, migliorando il feedback visivo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta l''icona normale: <code>button.setIcon(new ImageIcon("normal.png"));</code></li>
  <li>Imposta l''icona disabilitata: <code>button.setDisabledIcon(new ImageIcon("disabled.png"));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setDisabledIcon()</code> per disabilitare</li>
  <li><strong>✅ Combina:</strong> Con <code>setIcon()</code> e altre icone</li>
  <li><strong>✅ Fai:</strong> Rendi le icone chiare e distinguibili</li>
  <li><strong>⚠️ Evita:</strong> Icone troppo simili — l''utente non noterà la differenza</li>
</ul>
<p><strong>Importante:</strong> Usa per feedback visivo. L''icona dovrebbe mostrare chiaramente che il pulsante è disabilitato.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Alla disabilitazione, l''icona cambierà. Il pulsante diventerà più informativo e chiaro per l''utente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (15, 'it', 'Pulsante maestro: aggiungi icona alla disabilitazione',
        'Imposta l''icona normale tramite setIcon(), imposta l''icona disabilitata tramite setDisabledIcon()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Italian)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
