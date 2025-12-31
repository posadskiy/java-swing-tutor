-- Flyway migration V5: Lesson 1
-- This migration contains lesson, tasks, and documentation for lesson 1

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (1, 'it', '<div class="lesson-header">
<h2>🎮 Ciao!</h2>
<p class="intro">Benvenuto al corso per imparare la libreria <strong>Java Swing</strong>! Impareremo a creare interfacce visive di qualsiasi complessità: finestre, pulsanti, cursori e molto altro.</p>
</div>

<section class="learning-objectives">
<h3>📚 Sul corso:</h3>
<ul>
  <li>Apprendimento della libreria Java Swing</li>
  <li>Creazione di interfacce visive per applicazioni</li>
  <li>Padronanza dei componenti: finestre, pulsanti, campi di input e altri elementi</li>
</ul>
</section>

<section class="importance">
<h3>💎 Come lavorare con il corso:</h3>
<p>In questa finestra appariranno informazioni di riferimento per completare i compiti. <strong>È importante leggere fino alla fine e cercare di capire!</strong> A sinistra c''è la finestra con il compito.</p>
</section>

<section class="implementation">
<h3>⚔️ Primo compito:</h3>
<p>Fai clic sul pulsante <strong>"Verifica"</strong> — il primo compito verrà immediatamente conteggiato. Questo è un ringraziamento per aver letto questo testo.</p>
</section>

<section class="result">
<h3>👀 Pronto per iniziare?</h3>
<p>Quindi, iniziamo! C''è molto materiale interessante e utile davanti a noi. Buona fortuna con il tuo apprendimento!</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

-- Insert into translation table
INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (1, 'it', 'Introduzione', '<p>Fai clic sul pulsante <strong>"Verifica"</strong>')
ON CONFLICT (task_id, language_code) DO NOTHING;
