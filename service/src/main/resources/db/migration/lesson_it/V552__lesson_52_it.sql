-- Flyway migration V5: Lesson 52
-- This migration contains lesson, tasks, and documentation for lesson 52

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (453, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Impostare Look and Feel del Sistema</h2>
<p class="intro">Look and Feel determina aspetto interfaccia. Puoi impostare stile sistema, fare interfaccia sembrare programma nativo. Senza impostare, Metal standard sarà usato.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>UIManager</code> — gestore aspetto</li>
  <li>Metodo <code>setLookAndFeel(String)</code> — impostare L&F</li>
  <li>Look and Feel del Sistema</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Look and Feel del Sistema è necessario per creare aspetto interfaccia nativo.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta L&F sistema: <code>UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());</code></li>
  <li>Aggiorna componenti: <code>SwingUtilities.updateComponentTreeUI(frame);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getSystemLookAndFeelClassName()</code> per sistema</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>updateComponentTreeUI()</code> per aggiornare, usare per aspetto nativo, impostare prima di creare componenti</li>
  <li><strong>⚠️ Evita:</strong> Impostare dopo creare — può non funzionare</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Interfaccia avrà stile sistema. Componenti sembreranno nativi.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (453, 'it', 'Look and Feel Principiante: Imposta L&F Sistema',
        'Imposta L&F sistema via UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName()), aggiorna componenti via SwingUtilities.updateComponentTreeUI()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (454, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Impostare Metal Look and Feel</h2>
<p class="intro">Metal è stile classico Java. Puoi usare stile standard che funziona uguale ovunque. Senza impostare, Metal è usato di default.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metal Look and Feel — stile classico Java</li>
  <li>Impostare Metal L&F</li>
  <li>Usare stile standard</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Metal Look and Feel è necessario per usare stile standard Java.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta Metal L&F: <code>UIManager.setLookAndFeel("javax.swing.plaf.metal.MetalLookAndFeel");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Nome completo classe</li>
  <li><strong>✅ Ottimo:</strong> Usare per stile standard, usare per compatibilità, aggiornare componenti dopo impostare</li>
  <li><strong>⚠️ Evita:</strong> Usare stile obsoleto</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Interfaccia avrà stile Metal. Questo è stile classico Java.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (454, 'it', 'Look and Feel Maestro: Imposta Metal L&F',
        'Imposta Metal L&F via UIManager.setLookAndFeel("javax.swing.plaf.metal.MetalLookAndFeel"), aggiorna componenti')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (455, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Impostare Nimbus Look and Feel</h2>
<p class="intro">Nimbus è stile moderno Java. Puoi usare bel stile moderno, migliorare aspetto visivo. Senza impostare, Metal sarà usato.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Nimbus Look and Feel — stile moderno</li>
  <li>Impostare Nimbus L&F</li>
  <li>Usare stile moderno</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Nimbus Look and Feel è necessario per usare stile interfaccia moderno.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta Nimbus L&F: <code>UIManager.setLookAndFeel("javax.swing.plaf.nimbus.NimbusLookAndFeel");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Nome completo classe</li>
  <li><strong>✅ Ottimo:</strong> Usare per stile moderno, usare per migliorare aspetto, aggiornare componenti dopo impostare</li>
  <li><strong>⚠️ Evita:</strong> Usare su sistemi vecchi — può non funzionare</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Interfaccia avrà stile Nimbus. Questo è stile moderno bello.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (455, 'it', 'Look and Feel Maestro: Imposta Nimbus L&F',
        'Imposta Nimbus L&F via UIManager.setLookAndFeel("javax.swing.plaf.nimbus.NimbusLookAndFeel"), aggiorna componenti')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (456, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Ottenere Lista di Look and Feel Disponibili</h2>
<p class="intro">La lista permette conoscere stili disponibili. Puoi mostrare lista all''utente, scegliere stile, configurare interfaccia. Senza lista, non puoi sapere quali stili sono disponibili.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getInstalledLookAndFeels()</code> — lista L&F</li>
  <li>Ottenere informazioni su stili</li>
  <li>Vedere stili disponibili</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La lista è necessaria per vedere e scegliere stili disponibili.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni lista: <code>UIManager.LookAndFeelInfo[] lafs = UIManager.getInstalledLookAndFeels();</code></li>
  <li>Vedi lista: <code>for (UIManager.LookAndFeelInfo laf : lafs) {<br>
&nbsp;&nbsp;label.setText(laf.getName() + ": " + laf.getClassName());<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getInstalledLookAndFeels()</code> per ottenere</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>getName()</code> per nome, usare <code>getClassName()</code> per classe, mostrare lista all''utente</li>
  <li><strong>⚠️ Evita:</strong> Ignorare lista</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Lista di stili disponibili sarà mostrata. Puoi sapere quali stili sono disponibili.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (456, 'it', 'Look and Feel Maestro: Ottieni Lista di L&F Disponibili',
        'Ottieni lista L&F via UIManager.getInstalledLookAndFeels(), mostra nome e classe di ogni stile')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (457, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Impostare Look and Feel Personalizzato</h2>
<p class="intro">L&F personalizzato permette creare stile unico. Puoi usare librerie terze parti, creare tuo stile, migliorare aspetto visivo. Senza L&F personalizzato, puoi solo usare standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Creare L&F personalizzato</li>
  <li>Impostare stile personalizzato</li>
  <li>Usare librerie terze parti</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L&F personalizzato è necessario per creare stile interfaccia unico.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta L&F personalizzato: <code>UIManager.setLookAndFeel("com.example.CustomLookAndFeel");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Nome completo classe</li>
  <li><strong>✅ Ottimo:</strong> Usare librerie terze parti, creare tuo stile, aggiornare componenti dopo impostare</li>
  <li><strong>⚠️ Evita:</strong> Usare classe inesistente</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Interfaccia avrà stile personalizzato. Puoi creare aspetto unico.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (457, 'it', 'Look and Feel Maestro: Imposta L&F Personalizzato',
        'Imposta L&F personalizzato via UIManager.setLookAndFeel("com.example.CustomLookAndFeel"), aggiorna componenti')
ON CONFLICT (task_id, language_code) DO NOTHING;
