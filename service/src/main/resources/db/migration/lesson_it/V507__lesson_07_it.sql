-- Flyway migration V5: Lesson 7
-- This migration contains lesson, tasks, and documentation for lesson 7

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (62, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare una casella di controllo</h2>
<p class="intro">Le caselle di controllo (<code>JCheckBox</code>) permettono all''utente di selezionare opzioni. "Salva password", "Notifiche", "Avvio automatico" — tutto questo è implementato attraverso caselle di controllo. Puoi abilitare o disabilitare un''opzione con un clic.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>JCheckBox</code> — casella di controllo per selezionare opzioni</li>
  <li>Creare una casella di controllo</li>
  <li>Uso base delle caselle di controllo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le caselle di controllo permettono all''utente di selezionare opzioni. Senza di esse, l''utente non può configurare l''applicazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea una casella di controllo: <code>JCheckBox checkBox = new JCheckBox("Abilita opzione");</code></li>
  <li>Aggiungi al form: <code>add(checkBox);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Creare con testo: <code>new JCheckBox("Testo")</code></li>
  <li><strong>✅ Eccellente:</strong> Testo chiaro che spiega l''opzione</li>
  <li><strong>⚠️ Evita:</strong> Casella vuota senza testo — non è chiaro cosa fa</li>
</ul>
<p><strong>Importante:</strong> La casella di controllo può essere selezionata (abilitata) o deselezionata (disabilitata). Verificare stato: <code>checkBox.isSelected()</code>. Impostare stato: <code>checkBox.setSelected(true)</code>. Usa testi chiari. Puoi usare un''icona insieme al testo.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà una casella di controllo con testo sul form. È un quadrato con un segno di spunta (se selezionata) o vuoto (se non selezionata). L''utente può fare clic per abilitare o disabilitare l''opzione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (62, 'it', 'Casella di controllo principiante: crea un interruttore',
        'Crea una casella di controllo con testo "Abilita" e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (63, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Stato della casella di controllo</h2>
<p class="intro">La gestione programmatica dello stato permette di impostare valori predefiniti. Se un''opzione deve essere abilitata all''avvio, puoi selezionare la casella di controllo programmaticamente. Questo migliora l''esperienza utente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setSelected(boolean selected)</code> — impostare stato</li>
  <li>Il metodo <code>isSelected()</code> — verificare stato</li>
  <li>Gestire stato della casella di controllo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La gestione dello stato permette di impostare valori predefiniti e migliorare l''esperienza utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea una casella di controllo: <code>JCheckBox checkBox = new JCheckBox("Abilita");</code></li>
  <li>Seleziona la casella: <code>checkBox.setSelected(true);</code></li>
  <li>Aggiungi al form: <code>add(checkBox);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setSelected(true)</code> per abilitare di default</li>
  <li><strong>✅ Eccellente:</strong> Verificare stato prima dell''azione: <code>if (checkBox.isSelected())</code></li>
  <li><strong>⚠️ Evita:</strong> Selezionare tutte le caselle — l''utente non capirà cosa si può cambiare</li>
</ul>
<p><strong>Importante:</strong> <code>setSelected(false)</code> — deselezionare. <code>isSelected()</code> — restituirà <code>true</code> se selezionata. Usa per impostare valori predefiniti. Puoi alternare stato: <code>checkBox.setSelected(!checkBox.isSelected())</code>.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La casella di controllo sarà selezionata. Apparirà un segno di spunta nel quadrato. L''utente può deselezionarla con un clic.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (63, 'it', 'Stato della casella di controllo: seleziona o deseleziona',
        'Crea una casella di controllo, selezionala e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (64, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Carattere di visualizzazione password</h2>
<p class="intro">Il carattere di visualizzazione personalizzato rende l''interfaccia unica. Puoi usare punti, quadrati, qualsiasi carattere. Senza impostazione, ci sarà un asterisco standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setEchoChar()</code> — impostare carattere di visualizzazione</li>
  <li>Configurare visualizzazione visiva della password</li>
  <li>Creare carattere personalizzato</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Personalizzare il carattere di visualizzazione permette di creare uno stile di interfaccia unico e migliorare la percezione visiva.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta carattere: <code>passwordField.setEchoChar(''●'');</code></li>
  <li>Aggiungi al form: <code>add(passwordField);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Caratteri visibili: ●, •, *</li>
  <li><strong>✅ Eccellente:</strong> Il carattere deve essere chiaro</li>
</ul>
<p><strong>Importante:</strong> Il carattere deve essere visibile. Puoi usare qualsiasi carattere Unicode.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Invece del carattere standard, verrà usato quello specificato. Questa è la personalizzazione del carattere di visualizzazione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (64, 'it', 'Campo password maestro: cambia carattere di visualizzazione',
        'Imposta carattere di visualizzazione ● tramite setEchoChar()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (65, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Verifica sicurezza password</h2>
<p class="intro">La verifica sicurezza migliora la sicurezza. Puoi valutare quanto è sicura una password e avvisare l''utente. Senza verifica, l''utente può usare una password debole.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Verificare lunghezza password</li>
  <li>Verificare presenza di diversi tipi di caratteri</li>
  <li>Valutare sicurezza password</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La verifica sicurezza password migliora la sicurezza dell''applicazione e aiuta l''utente a creare una password più sicura.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni password: <code>char[] password = passwordField.getPassword();</code></li>
  <li>Verifica lunghezza: <code>JLabel label = new JLabel();<br>
if (password.length &lt; 8) {<br>
&nbsp;&nbsp;label.setText("Password debole!");<br>
}<br>
add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Verifica lunghezza password</li>
  <li><strong>✅ Eccellente:</strong> Verificare presenza di cifre, lettere, caratteri speciali, mostrare indicazione visiva</li>
  <li><strong>⚠️ Evita:</strong> Requisiti troppo rigorosi — può essere scomodo</li>
</ul>
<p><strong>Importante:</strong> Verifica lunghezza (minimo 8 caratteri). Verifica diversità di caratteri. Mostra messaggi chiari. Usa espressioni regolari.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Puoi verificare la sicurezza della password. Quando si inserisce, puoi valutare la forza della password e avvisare l''utente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (65, 'it', 'Campo password maestro: verifica sicurezza password',
        'Ottieni password tramite getPassword(), verifica lunghezza minore di 8, mostra messaggio')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (66, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Prevenire copia password</h2>
<p class="intro">Prevenire la copia migliora la sicurezza. La password non può essere copiata, il che protegge da fughe. Senza prevenzione, la password può essere copiata.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Disabilitare copia tramite DocumentFilter</li>
  <li>Proteggere password da copia</li>
  <li>Migliorare sicurezza</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Prevenire la copia protegge la password da fughe e migliora la sicurezza generale dell''applicazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni documento: <code>AbstractDocument doc = (AbstractDocument) passwordField.getDocument();</code></li>
  <li>Imposta filtro: <code>doc.setDocumentFilter(new DocumentFilter() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public void remove(FilterBypass fb, int offset, int length) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;// Prevenire eliminazione<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> DocumentFilter per prevenzione</li>
  <li><strong>✅ Eccellente:</strong> Prevenire copia, taglio, migliorare sicurezza</li>
  <li><strong>⚠️ Evita:</strong> Restrizioni troppo rigorose — può essere scomodo</li>
</ul>
<p><strong>Importante:</strong> Usa per sicurezza e migliorare protezione password.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La copia sarà prevenuta. La password non può essere copiata.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (66, 'it', 'Campo password maestro: previeni copia',
        'Ottieni documento, crea DocumentFilter, sovrascrivi remove() per prevenire eliminazione')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (67, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Cambiare carattere di visualizzazione</h2>
<p class="intro">Il carattere di visualizzazione determina come viene mostrata la password. Puoi cambiare il carattere da * a un altro, creare visualizzazione personalizzata. Senza cambio, ci sarà un carattere standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setEchoChar()</code> — impostare carattere</li>
  <li>Cambiare carattere di visualizzazione</li>
  <li>Creare visualizzazione personalizzata</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Personalizzare il carattere di visualizzazione permette di creare uno stile di interfaccia unico.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Cambia carattere: <code>passwordField.setEchoChar(''●'');</code></li>
  <li>Aggiungi al form: <code>add(passwordField);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Caratteri visibili</li>
  <li><strong>✅ Eccellente:</strong> Personalizzare visualizzazione</li>
</ul>
<p><strong>Importante:</strong> Usa caratteri visibili per migliorare l''aspetto visivo.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il carattere di visualizzazione sarà cambiato. Questa è la personalizzazione del carattere.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (67, 'it', 'Campo password maestro: cambia carattere di visualizzazione',
        'Cambia carattere di visualizzazione a ● tramite setEchoChar()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (68, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Mostrare password</h2>
<p class="intro">Mostrare password migliora l''esperienza utente. Puoi mostrare temporaneamente la password per verifica, migliorare la comodità. Senza mostrare, non puoi verificare la password.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>getEchoChar()</code> — ottenere carattere</li>
  <li>Visualizzazione temporanea password</li>
  <li>Creare funzione mostra/nascondi</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La visualizzazione temporanea password permette all''utente di verificare la password inserita, migliorando l''usabilità.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni carattere: <code>char echoChar = passwordField.getEchoChar();</code></li>
  <li>Mostra temporaneamente password: <code>passwordField.setEchoChar((char) 0);</code></li>
  <li>Nascondi di nuovo: <code>passwordField.setEchoChar(echoChar);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getEchoChar()</code> per ottenere, <code>setEchoChar(0)</code> per mostrare</li>
  <li><strong>✅ Eccellente:</strong> Ripristinare carattere, usare per alternare</li>
  <li><strong>⚠️ Evita:</strong> Mostrare costantemente — non è sicuro</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La password sarà mostrata temporaneamente. Puoi verificare la password, poi nasconderla di nuovo.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (68, 'it', 'Campo password maestro: mostra password',
        'Ottieni carattere tramite getEchoChar(), imposta 0 tramite setEchoChar() per mostrare, poi ripristina carattere')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (69, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Verifica forza password</h2>
<p class="intro">La verifica forza password migliora la sicurezza. Puoi verificare lunghezza, complessità, migliorare protezione. Senza verifica, la password può essere debole.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>getPassword()</code> — ottenere password</li>
  <li>Verificare forza password</li>
  <li>Migliorare sicurezza</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La verifica forza password aiuta l''utente a creare una password più sicura e migliora la sicurezza generale dell''applicazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni password: <code>char[] password = passwordField.getPassword();</code></li>
  <li>Verifica forza: <code>boolean isStrong = password.length >= 8 && new String(password).matches(".*[A-Z].*") && new String(password).matches(".*[0-9].*");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getPassword()</code> per ottenere</li>
  <li><strong>✅ Eccellente:</strong> Verificare lunghezza, complessità, migliorare sicurezza</li>
  <li><strong>⚠️ Evita:</strong> Memorizzare password in String — usa char[]</li>
</ul>
<p><strong>Importante:</strong> Verifica lunghezza (minimo 8). Verifica presenza di maiuscole, cifre. Non memorizzare in String per sicurezza.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Puoi verificare la forza della password. Puoi validare la password e migliorare la sicurezza.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (69, 'it', 'Campo password maestro: verifica forza password',
        'Ottieni password tramite getPassword(), verifica lunghezza >= 8 e presenza di lettere maiuscole')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (70, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Copiare password</h2>
<p class="intro">Copiare password migliora la funzionalità. Puoi copiare la password negli appunti, migliorare l''esperienza utente. Senza copiare, devi inserire manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>getPassword()</code> — ottenere password</li>
  <li>Copiare password negli appunti</li>
  <li>Migliorare funzionalità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Copiare password negli appunti migliora l''esperienza utente e permette di usare la password in altri luoghi.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni password: <code>char[] password = passwordField.getPassword();</code></li>
  <li>Copia negli appunti: <code>StringSelection selection = new StringSelection(new String(password));<br>
Toolkit.getDefaultToolkit().getSystemClipboard().setContents(selection, null);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getPassword()</code> per ottenere, Clipboard per copiare</li>
  <li><strong>✅ Eccellente:</strong> Usare per migliorare UX e funzionalità</li>
  <li><strong>⚠️ Considera:</strong> Richiedere permesso prima di copiare</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La password sarà copiata negli appunti. Puoi usarla in altri luoghi.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (70, 'it', 'Campo password maestro: copia password',
        'Ottieni password tramite getPassword(), crea StringSelection, imposta in Clipboard tramite setContents()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (71, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 10: Impostare carattere di visualizzazione</h2>
<p class="intro">Il carattere di visualizzazione determina la maschera. Puoi impostare un carattere personalizzato invece dello standard, migliorare l''aspetto visivo. Senza impostazione, il carattere sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setEchoChar()</code> — impostare carattere di visualizzazione</li>
  <li>Personalizzare carattere di maschera</li>
  <li>Migliorare aspetto visivo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Personalizzare il carattere di visualizzazione permette di creare uno stile di interfaccia unico e migliorare la percezione visiva.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta carattere: <code>passwordField.setEchoChar(''*'');</code></li>
  <li>Aggiungi al form: <code>add(passwordField);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Caratteri standard: *, ●</li>
  <li><strong>✅ Eccellente:</strong> Personalizzare visualizzazione</li>
</ul>
<p><strong>Importante:</strong> Usa caratteri visibili per migliorare l''aspetto visivo.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Il carattere di visualizzazione sarà impostato. Questa è la personalizzazione del carattere.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (71, 'it', 'Campo password maestro: imposta carattere di visualizzazione',
        'Imposta carattere * tramite setEchoChar()')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Italian)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
