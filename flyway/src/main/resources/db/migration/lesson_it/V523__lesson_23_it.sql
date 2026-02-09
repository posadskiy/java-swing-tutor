-- Flyway migration V5: Lesson 23
-- This migration contains lesson, tasks, and documentation for lesson 23

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (190, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare Barra degli Strumenti</h2>
<p class="intro">JToolBar fornisce accesso rapido. Pulsanti per azioni frequenti, icone per comandi, raggruppare strumenti. Senza barra degli strumenti, dovrai usare il menu.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>JToolBar</code> — barra degli strumenti</li>
  <li>Creare barra degli strumenti</li>
  <li>Aggiungere componenti alla barra</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La barra degli strumenti è necessaria per accesso rapido a funzioni usate frequentemente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea barra degli strumenti: <code>JToolBar toolbar = new JToolBar();</code></li>
  <li>Aggiungi pulsanti: <code>toolbar.add(new JButton("Pulsante 1"));</code> e <code>toolbar.add(new JButton("Pulsante 2"));</code></li>
  <li>Aggiungi al form: <code>add(toolbar, BorderLayout.NORTH);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>add()</code> per aggiungere componenti</li>
  <li><strong>✅ Ottimo:</strong> Usare pulsanti con icone, raggruppare strumenti correlati, usare separatori per raggruppare</li>
  <li><strong>⚠️ Evita:</strong> Troppi pulsanti — sovraccarica l''interfaccia</li>
</ul>
<p><strong>Importante:</strong> <code>addSeparator()</code> — aggiungere separatore. <code>add(Component, int index)</code> — aggiungere in posizione. <code>remove(Component)</code> — rimuovere componente.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà una barra degli strumenti. Questo è un pannello con pulsanti in alto (o in un altro posto). Puoi eseguire azioni rapidamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (190, 'it', 'Barra degli Strumenti Principiante: Creare Barra con Pulsanti',
        'Crea una barra degli strumenti, aggiungi due pulsanti e aggiungila al form in BorderLayout.NORTH')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (191, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Orientamento Barra degli Strumenti</h2>
<p class="intro">L''orientamento influenza l''aspetto della barra. Orizzontale — per sopra/sotto, verticale — per sinistra/destra. Puoi scegliere l''orientamento appropriato per l''interfaccia.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setOrientation(int)</code> — impostare orientamento</li>
  <li>Costanti <code>HORIZONTAL</code> e <code>VERTICAL</code></li>
  <li>Barra orizzontale e verticale</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Scegliere l''orientamento ti permette di adattare la barra a diversi tipi di interfacce.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta orientamento: <code>toolbar.setOrientation(JToolBar.VERTICAL);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> HORIZONTAL per orizzontale (predefinito), VERTICAL per verticale</li>
  <li><strong>✅ Ottimo:</strong> Scegliere orientamento in base al luogo, usare per risparmiare spazio</li>
  <li><strong>⚠️ Evita:</strong> Usare orientamento sbagliato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La barra degli strumenti avrà l''orientamento impostato. Orizzontale — sinistra a destra, verticale — sopra a sotto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (191, 'it', 'Barra degli Strumenti Maestro: Imposta Orientamento',
        'Crea una barra degli strumenti, imposta orientamento verticale tramite setOrientation(JToolBar.VERTICAL)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (192, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Barra degli Strumenti Flottante</h2>
<p class="intro">La barra flottante migliora la flessibilità. Puoi spostare la barra, posizionarla in un posto conveniente, configurare interfaccia. Senza questo, la barra sarà fissa.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setFloatable(boolean)</code> — barra flottante</li>
  <li>Capacità di spostare la barra</li>
  <li>Migliorare esperienza utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La barra flottante permette all''utente di configurare l''interfaccia secondo le proprie preferenze.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Abilita barra flottante: <code>toolbar.setFloatable(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setFloatable(true)</code> per abilitare</li>
  <li><strong>✅ Ottimo:</strong> Usare per migliorare flessibilità, permettere all''utente di configurare, migliorare esperienza utente</li>
  <li><strong>⚠️ Evita:</strong> Disabilitare senza necessità</li>
</ul>
<p><strong>Importante:</strong> <code>true</code> — abilita movimento (predefinito), <code>false</code> — fissa barra.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La barra degli strumenti può essere spostata. Puoi trascinare la barra in un altro posto, renderla flottante.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (192, 'it', 'Barra degli Strumenti Maestro: Abilita Barra Flottante',
        'Crea una barra degli strumenti, abilita barra flottante tramite setFloatable(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (193, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Effetto Rollover sulla Barra degli Strumenti</h2>
<p class="intro">L''effetto rollover migliora l''esperienza visiva. I pulsanti si evidenziano al passaggio del mouse, migliorano il feedback, rendono l''interfaccia più responsiva. Senza effetto, i pulsanti non reagiranno al passaggio del mouse.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setRollover(boolean)</code> — effetto rollover</li>
  <li>Evidenziazione pulsanti al passaggio del mouse</li>
  <li>Migliorare esperienza visiva</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''effetto rollover migliora il feedback visivo e rende l''interfaccia più responsiva.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Abilita effetto rollover: <code>toolbar.setRollover(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setRollover(true)</code> per abilitare</li>
  <li><strong>✅ Ottimo:</strong> Usare per migliorare esperienza visiva, migliorare feedback, rendere interfaccia più responsiva</li>
  <li><strong>⚠️ Evita:</strong> Disabilitare senza necessità</li>
</ul>
<p><strong>Importante:</strong> <code>true</code> — abilita evidenziazione (predefinito), <code>false</code> — disabilita evidenziazione.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Passando il mouse, i pulsanti si evidenzieranno. Puoi migliorare l''esperienza visiva e il feedback.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (193, 'it', 'Barra degli Strumenti Maestro: Abilita Effetto Rollover',
        'Crea una barra degli strumenti, abilita effetto rollover tramite setRollover(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (194, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Separatore sulla Barra degli Strumenti</h2>
<p class="intro">Il separatore raggruppa strumenti. Puoi separare strumenti correlati, migliorare organizzazione, rendere la barra più comprensibile. Senza separatori, tutti gli strumenti saranno insieme.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>addSeparator()</code> — aggiungere separatore</li>
  <li>Raggruppare strumenti</li>
  <li>Migliorare organizzazione</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I separatori aiutano a organizzare strumenti in gruppi logici.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi separatore: <code>toolbar.addSeparator();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addSeparator()</code> per aggiungere</li>
  <li><strong>✅ Ottimo:</strong> Raggruppare strumenti correlati, migliorare organizzazione, rendere barra più comprensibile</li>
  <li><strong>⚠️ Evita:</strong> Usare troppi separatori</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un separatore sulla barra degli strumenti. Questa è una linea che separa gruppi di strumenti. Puoi migliorare l''organizzazione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (194, 'it', 'Barra degli Strumenti Maestro: Aggiungere Separatore',
        'Crea una barra degli strumenti, aggiungi pulsante, aggiungi separatore tramite addSeparator(), aggiungi altro pulsante')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (195, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Bordo Barra degli Strumenti</h2>
<p class="intro">Il bordo migliora l''aspetto visivo. Puoi impostare il bordo desiderato, separare barra, migliorare design. Senza configurazione, il bordo sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setBorder(Border)</code> — impostare bordo</li>
  <li>Migliorare aspetto visivo</li>
  <li>Personalizzare aspetto</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il bordo ti permette di separare visivamente la barra e migliorare il design dell''interfaccia.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta il bordo: <code>toolbar.setBorder(BorderFactory.createEtchedBorder());</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setBorder()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare BorderFactory per creare bordi, usare per migliorare aspetto, separare barra</li>
  <li><strong>⚠️ Evita:</strong> Usare bordi troppo spessi</li>
</ul>
<p><strong>Importante:</strong> <code>BorderFactory.createEtchedBorder()</code> — bordo inciso. <code>BorderFactory.createLineBorder(Color)</code> — linea. <code>BorderFactory.createTitledBorder(String)</code> — bordo con titolo.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La barra degli strumenti avrà il bordo impostato. Puoi migliorare l''aspetto visivo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (195, 'it', 'Barra degli Strumenti Maestro: Imposta Bordo',
        'Crea una barra degli strumenti, imposta bordo tramite setBorder(BorderFactory.createEtchedBorder())')
ON CONFLICT (task_id, language_code) DO NOTHING;
