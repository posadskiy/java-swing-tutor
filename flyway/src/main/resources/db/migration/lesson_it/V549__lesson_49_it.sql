-- Flyway migration V5: Lesson 49
-- This migration contains lesson, tasks, and documentation for lesson 49

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (437, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Gestire Selezione Elementi con ItemListener</h2>
<p class="intro">ItemListener permette rispondere a selezione. Puoi gestire selezione in casella, pulsante radio, casella combinata, aggiornare altri componenti. Senza gestione, selezione non avrà effetto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Interfaccia <code>ItemListener</code> — ascoltatore selezione</li>
  <li>Metodo <code>itemStateChanged(ItemEvent)</code> — gestire cambio</li>
  <li>Usare con JCheckBox, JRadioButton, JComboBox</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>ItemListener è necessario per gestire selezione elementi e aggiornare altri componenti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi ascoltatore: <code>checkBox.addItemListener(e -> {<br>
&nbsp;&nbsp;if (e.getStateChange() == ItemEvent.SELECTED) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Selezionato!");<br>
&nbsp;&nbsp;} else {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Deselezionato!");<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addItemListener()</code> per gestire</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>getStateChange()</code> per verificare, usare ItemEvent.SELECTED e DESELECTED, aggiornare altri componenti</li>
  <li><strong>⚠️ Evita:</strong> Ignorare stato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando cambia selezione, gestore si attiverà. Puoi gestire selezione e aggiornare altri componenti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (437, 'it', 'ItemListener Principiante: Gestire Selezione Elementi',
        'Crea casella, aggiungi ItemListener, verifica getStateChange() == ItemEvent.SELECTED, mostra messaggio')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (438, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Gestire Cambiamenti con ChangeListener</h2>
<p class="intro">ChangeListener permette rispondere a cambiamenti. Puoi gestire cambio cursore, selettore, barra progresso, aggiornare altri componenti. Senza gestione, cambiamenti non avranno effetto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Interfaccia <code>ChangeListener</code> — ascoltatore cambiamenti</li>
  <li>Metodo <code>stateChanged(ChangeEvent)</code> — gestire cambio</li>
  <li>Usare con JSlider, JSpinner, JProgressBar</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>ChangeListener è necessario per gestire cambiamenti valori e aggiornare altri componenti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi ascoltatore: <code>slider.addChangeListener(e -> {<br>
&nbsp;&nbsp;int value = slider.getValue();<br>
&nbsp;&nbsp;label.setText("Valore: " + value);<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addChangeListener()</code> per gestire</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>getValue()</code> per ottenere valore, aggiornare altri componenti, eseguire azioni al cambiare</li>
  <li><strong>⚠️ Evita:</strong> Ignorare cambiamenti</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando cambia valore, gestore si attiverà. Puoi gestire cambio e aggiornare altri componenti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (438, 'it', 'ChangeListener Principiante: Gestire Cambiamenti',
        'Crea cursore, aggiungi ChangeListener, ottieni valore via getValue(), mostralo')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (439, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Gestire Selezione in Casella Combinata con ItemListener</h2>
<p class="intro">Gestire selezione permette rispondere a selezione elemento. Puoi aggiornare altri componenti, caricare dati, eseguire azioni. Senza gestione, selezione non avrà effetto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Gestire selezione in JComboBox</li>
  <li>Ottenere elemento selezionato</li>
  <li>Rispondere a cambio selezione</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire selezione è necessario per rispondere a selezione elemento in casella combinata.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi ascoltatore: <code>comboBox.addItemListener(e -> {<br>
&nbsp;&nbsp;if (e.getStateChange() == ItemEvent.SELECTED) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;Object item = e.getItem();<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Selezionato: " + item);<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addItemListener()</code> per gestire</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>getItem()</code> per ottenere elemento, aggiornare altri componenti, caricare dati alla selezione</li>
  <li><strong>⚠️ Evita:</strong> Ignorare selezione</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando selezioni elemento, gestore si attiverà. Puoi gestire selezione e aggiornare altri componenti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (439, 'it', 'ItemListener Maestro: Gestire Selezione in Casella Combinata',
        'Crea casella combinata con elementi, aggiungi ItemListener, ottieni elemento via getItem(), mostralo')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (440, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Gestire Cambiamenti in Selettore con ChangeListener</h2>
<p class="intro">Gestire cambiamenti permette rispondere a cambio valore. Puoi aggiornare altri componenti, eseguire validazione, eseguire azioni. Senza gestione, cambio non avrà effetto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Gestire cambiamenti in JSpinner</li>
  <li>Ottenere valore selettore</li>
  <li>Rispondere a cambio valore</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire cambiamenti è necessario per rispondere a cambio valore in selettore.</p>
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
  <li><strong>✅ Ottimo:</strong> Usare <code>getValue()</code> per ottenere valore, aggiornare altri componenti, eseguire validazione</li>
  <li><strong>⚠️ Evita:</strong> Ignorare cambiamenti</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando cambia valore, gestore si attiverà. Puoi gestire cambio e aggiornare altri componenti.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (440, 'it', 'ChangeListener Maestro: Gestire Cambiamenti in Selettore',
        'Crea selettore, aggiungi ChangeListener, ottieni valore via getValue(), mostralo')
ON CONFLICT (task_id, language_code) DO NOTHING;
