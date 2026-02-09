-- Flyway migration V5: Lesson 34
-- This migration contains lesson, tasks, and documentation for lesson 34

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

-- Task 1: Message Dialog
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (287, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Mostrare Messaggio all''Utente</h2>
<p class="intro">Le finestre di dialogo informano l''utente. Errore, avviso, informazione — tutto questo richiede dialogo. Senza dialoghi, l''utente non saprà su eventi importanti.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>JOptionPane</code> — finestre di dialogo</li>
  <li>Metodo <code>showMessageDialog()</code> — mostrare messaggio</li>
  <li>Tipi di messaggio: INFORMATION, WARNING, ERROR, QUESTION, PLAIN</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le finestre di dialogo sono necessarie per informare l''utente su eventi importanti e stati dell''applicazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Mostra messaggio informativo: <code>JOptionPane.showMessageDialog(null, "Ciao, mondo!", "Titolo", JOptionPane.INFORMATION_MESSAGE);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>INFORMATION_MESSAGE</code> per informazione</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>WARNING_MESSAGE</code> per avvisi, usare <code>ERROR_MESSAGE</code> per errori, usare <code>QUESTION_MESSAGE</code> per domande, specificare componente genitore invece di <code>null</code></li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà una finestra di dialogo con messaggio. La finestra sarà modale — devi chiuderla prima di continuare il lavoro.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (287, 'it', 'Dialogo Principiante: Mostrare Messaggio',
        'Mostra finestra di dialogo informativa con testo "Ciao, mondo!" e titolo "Saluto"')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 2: Confirmation Dialog
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (288, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Richiedere Conferma</h2>
<p class="intro">I dialoghi di conferma proteggono da errori. Eliminare file, uscire dal programma, salvare modifiche — tutto questo richiede conferma. Senza conferma, l''utente può eseguire accidentalmente azione irreversibile.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>showConfirmDialog()</code> — dialogo di conferma</li>
  <li>Tipi di opzione: YES_NO_OPTION, YES_NO_CANCEL_OPTION, OK_CANCEL_OPTION</li>
  <li>Risultati: YES_OPTION, NO_OPTION, CANCEL_OPTION, CLOSED_OPTION</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I dialoghi di conferma sono necessari per prevenire azioni irreversibili accidentali.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Mostra dialogo di conferma: <code>int result = JOptionPane.showConfirmDialog(null, "Sei sicuro?", "Conferma", JOptionPane.YES_NO_OPTION);</code></li>
  <li>Verifica risultato: <code>if (result == JOptionPane.YES_OPTION) {<br>
&nbsp;&nbsp;label.setText("Utente ha scelto Sì");<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>YES_NO_OPTION</code> per scelta semplice</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>YES_NO_CANCEL_OPTION</code> per tre opzioni, usare <code>OK_CANCEL_OPTION</code> per conferma azione, verificare risultato prima di eseguire azione</li>
</ul>
<p><strong>Importante:</strong> Sempre verificare risultato prima di eseguire azione. Usare testi di domanda chiari.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un dialogo con pulsanti "Sì" e "No". Puoi scegliere opzione, e risultato sarà restituito.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (288, 'it', 'Dialogo Maestro: Chiedere Conferma',
        'Mostra dialogo di conferma con domanda "Sei sicuro?" e verifica se utente ha scelto "Sì"')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 3: Input Dialog
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (289, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Ottenere Input dall''Utente</h2>
<p class="intro">I dialoghi di input ottengono dati dall''utente. Nome, password, impostazioni — tutto questo richiede input. Senza dialogo di input, devi creare finestre separate.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>showInputDialog()</code> — dialogo di input</li>
  <li>Ottenere testo dall''utente</li>
  <li>Gestire cancellazione (restituisce <code>null</code>)</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I dialoghi di input sono necessari per ottenere dati dall''utente senza creare finestre separate.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Mostra dialogo di input: <code>String name = JOptionPane.showInputDialog(null, "Inserisci il tuo nome:", "Input", JOptionPane.QUESTION_MESSAGE);</code></li>
  <li>Verifica risultato: <code>if (name != null && !name.isEmpty()) {<br>
&nbsp;&nbsp;label.setText("Ciao, " + name + "!");<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Verificare per <code>null</code> (utente ha premuto Annulla)</li>
  <li><strong>✅ Ottimo:</strong> Verificare per stringa vuota (utente non ha inserito nulla), usare valore iniziale, usare elenco a discesa invece di campo di testo</li>
</ul>
<p><strong>Importante:</strong> Sempre verificare per <code>null</code> e stringa vuota.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un dialogo con campo di testo. Puoi inserire testo e premere OK. Il testo inserito sarà restituito.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (289, 'it', 'Dialogo Maestro: Ottenere Input dall''Utente',
        'Mostra dialogo di input con domanda "Inserisci il tuo nome:" e mostra risultato in console')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- Task 4: Option Dialog
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (290, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Creare Dialogo con Pulsanti Personalizzati</h2>
<p class="intro">Le opzioni personalizzate danno più controllo. Puoi creare le tue opzioni di risposta, usare icone, configurare aspetto. Senza opzioni personalizzate, limitato a pulsanti standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>showOptionDialog()</code> — dialogo con opzioni personalizzate</li>
  <li>Array di opzioni per pulsanti</li>
  <li>Indice di opzione selezionata</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le opzioni personalizzate sono necessarie per creare dialoghi con opzioni di risposta non standard.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea array di opzioni: <code>String[] options = {"Salva", "Annulla", "Non salvare"};</code></li>
  <li>Mostra dialogo: <code>int choice = JOptionPane.showOptionDialog(null, "Cosa fare?", "Scelta", JOptionPane.YES_NO_CANCEL_OPTION, JOptionPane.QUESTION_MESSAGE, null, options, options[0]);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Nomi di opzioni chiari</li>
  <li><strong>✅ Ottimo:</strong> Specificare opzione predefinita (ultimo parametro), usare icone per opzioni, verificare indice di opzione selezionata</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un dialogo con pulsanti personalizzati. Puoi scegliere una delle opzioni. L''indice dell''opzione selezionata sarà restituito.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (290, 'it', 'Dialogo Maestro: Creare Pulsanti Personalizzati',
        'Crea dialogo con tre opzioni: "Salva", "Annulla", "Non salvare" e mostra indice di opzione selezionata')
ON CONFLICT (task_id, language_code) DO NOTHING;
