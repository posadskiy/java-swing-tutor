-- Flyway migration V5: Lesson 37
-- This migration contains lesson, tasks, and documentation for lesson 37

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

-- Task 1: Creating BorderLayout
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (313, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Posizionare Componenti ai Bordi</h2>
<p class="intro">BorderLayout usa spazio efficientemente. Barra strumenti in alto, barra stato in basso, menu a sinistra, contenuto al centro — questo è layout standard. Senza BorderLayout, è difficile creare interfaccia strutturata.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>BorderLayout</code> — layout bordi</li>
  <li>Regioni: NORTH, SOUTH, EAST, WEST, CENTER</li>
  <li>Posizionare componenti in diverse regioni</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>BorderLayout è necessario per creare interfaccia strutturata.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta BorderLayout: <code>setLayout(new BorderLayout());</code></li>
  <li>Aggiungi componenti a regioni: <code>add(new JButton("North"), BorderLayout.NORTH);</code><br>
<code>add(new JButton("South"), BorderLayout.SOUTH);</code><br>
<code>add(new JButton("Center"), BorderLayout.CENTER);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Costanti: NORTH, SOUTH, EAST, WEST, CENTER</li>
  <li><strong>✅ Ottimo:</strong> CENTER prende tutto spazio rimanente, NORTH e SOUTH si allungano orizzontalmente, EAST e WEST si allungano verticalmente</li>
  <li><strong>⚠️ Evita:</strong> Usare stringhe invece di costanti — meno leggibile</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componenti saranno posizionati ai bordi. Pulsante "Alto" sarà in alto, "Basso" in basso, "Centro" prenderà mezzo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (313, 'it', 'Layout Principiante: Posizionare Componenti ai Bordi',
        'Imposta BorderLayout, aggiungi pulsanti a regioni NORTH, SOUTH e CENTER')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 2: All Regions
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (314, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Usare Tutte le Regioni BorderLayout</h2>
<p class="intro">Tutte le regioni creano interfaccia strutturata. Menu a sinistra, barra strumenti a destra, intestazione in alto, stato in basso, contenuto al centro — questa è interfaccia professionale. Senza tutte le regioni, interfaccia sarà incompleta.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Tutte le regioni BorderLayout</li>
  <li>Posizionare componenti in EAST e WEST</li>
  <li>Creare interfaccia completa</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Usare tutte le regioni è necessario per creare interfaccia completa.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta BorderLayout: <code>setLayout(new BorderLayout());</code></li>
  <li>Aggiungi componenti a tutte le regioni: <code>add(new JButton("North"), BorderLayout.NORTH);</code><br>
<code>add(new JButton("South"), BorderLayout.SOUTH);</code><br>
<code>add(new JButton("West"), BorderLayout.WEST);</code><br>
<code>add(new JButton("East"), BorderLayout.EAST);</code><br>
<code>add(new JButton("Center"), BorderLayout.CENTER);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Tutte le regioni per interfaccia completa</li>
  <li><strong>✅ Ottimo:</strong> WEST e EAST solitamente per menu e pannelli, NORTH per intestazioni e barre strumenti, SOUTH per barre stato, CENTER per contenuto principale</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componenti saranno posizionati in tutte le regioni. Pulsanti saranno ai bordi e al centro.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (314, 'it', 'Layout Maestro: Usare Tutte le Regioni',
        'Imposta BorderLayout, aggiungi pulsanti a tutte le cinque regioni: NORTH, SOUTH, EAST, WEST, CENTER')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 3: Gaps
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (315, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Aggiungere Spazi Tra Regioni</h2>
<p class="intro">Gli spazi migliorano leggibilità. Componenti non si fondono tra loro, c''è separazione visiva. Senza spazi, interfaccia sembra sovraccarica.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Costruttore <code>BorderLayout(int hgap, int vgap)</code> — con spazi</li>
  <li>Spazi orizzontali e verticali</li>
  <li>Migliorare separazione visiva</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gli spazi sono necessari per migliorare leggibilità e separazione visiva di componenti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea BorderLayout con spazi: <code>setLayout(new BorderLayout(10, 10));</code></li>
  <li>Aggiungi componenti: <code>add(new JButton("North"), BorderLayout.NORTH);</code><br>
<code>add(new JButton("Center"), BorderLayout.CENTER);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Stessi spazi (10, 10)</li>
  <li><strong>✅ Ottimo:</strong> Usare spazi diversi (5, 10) per effetti diversi, usare spazi piccoli (5-10 pixel)</li>
  <li><strong>⚠️ Evita:</strong> Spazi troppo grandi — spazio è perso</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Spazi appariranno tra regioni. Componenti saranno visualmente separati.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (315, 'it', 'Layout Maestro: Aggiungere Spazi Tra Regioni',
        'Crea BorderLayout con spazi di 10 pixel orizzontalmente e verticalmente, aggiungi componenti a NORTH e CENTER')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 4: Preferred Sizes
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (316, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Considerare Dimensioni Preferite</h2>
<p class="intro">Le dimensioni preferite rendono interfaccia corretta. Componenti ottengono dimensione necessaria, non si allungano e non si restringono. Senza considerare dimensioni, componenti possono sembrare errati.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Dimensioni preferite di componenti</li>
  <li>Come BorderLayout usa getPreferredSize()</li>
  <li>NORTH e SOUTH usano altezza preferita</li>
  <li>EAST e WEST usano larghezza preferita</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Considerare dimensioni preferite è necessario per visualizzazione corretta di componenti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea componente con dimensione preferita: <code>JButton button = new JButton("Button");</code><br>
<code>button.setPreferredSize(new Dimension(100, 30));</code></li>
  <li>Aggiungi a regione: <code>add(button, BorderLayout.NORTH);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Impostare dimensione preferita per componenti</li>
  <li><strong>✅ Ottimo:</strong> NORTH e SOUTH usano altezza preferita, EAST e WEST usano larghezza preferita, CENTER prende tutto spazio rimanente</li>
  <li><strong>⚠️ Evita:</strong> Ignorare dimensioni preferite — può sembrare errato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componenti avranno dimensioni corrette. BorderLayout considererà dimensioni preferite.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (316, 'it', 'Layout Maestro: Considerare Dimensioni Preferite',
        'Crea pulsante, imposta dimensione preferita 100x30, aggiungi a regione NORTH')
ON CONFLICT (task_id, language_code) DO NOTHING;
