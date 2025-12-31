-- Flyway migration V5: Lesson 42
-- This migration contains lesson, tasks, and documentation for lesson 42

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (356, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare Pannelli Commutabili con CardLayout</h2>
<p class="intro">CardLayout è perfetto per interfacce multi-pagina. Procedure guidate configurazione, schede, moduli passo-passo — tutto questo richiede CardLayout. Senza questo, dovrai nascondere/mostrare componenti manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>CardLayout</code> — commutazione pannelli</li>
  <li>Metodi <code>show()</code>, <code>next()</code>, <code>previous()</code> — commutazione</li>
  <li>Creare interfaccia multi-pagina</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>CardLayout è necessario per creare interfacce multi-pagina.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea gestore: <code>CardLayout cardLayout = new CardLayout();<br>
setLayout(cardLayout);</code></li>
  <li>Aggiungi pannelli con nomi: <code>add(panel1, "card1");<br>
add(panel2, "card2");</code></li>
  <li>Commuta pannello: <code>cardLayout.show(this, "card1");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Nomi chiari per carte</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>show()</code> per commutare per nome, usare <code>next()</code> e <code>previous()</code> per navigazione</li>
  <li><strong>⚠️ Evita:</strong> Troppe carte — difficile da gestire</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Solo un pannello sarà visibile. Quando commuti, un pannello si nasconde, altro si mostra. È come sfogliare pagine.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (356, 'it', 'CardLayout Principiante: Creare Pannelli Commutabili',
        'Crea CardLayout, aggiungi due pannelli con nomi "card1" e "card2", mostra "card1"')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (357, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Navigazione Tra Carte in CardLayout</h2>
<p class="intro">La navigazione tra carte rende interfaccia interattiva. Puoi creare procedure guidate configurazione, moduli passo-passo, schede. Senza navigazione, utente non potrà commutare tra pannelli.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>next()</code> — carta successiva</li>
  <li>Metodo <code>previous()</code> — carta precedente</li>
  <li>Metodi <code>first()</code> e <code>last()</code> — prima e ultima carta</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La navigazione tra carte è necessaria per creare interfaccia interattiva.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Commuta a carta successiva: <code>cardLayout.next(this);</code></li>
  <li>O commuta a precedente: <code>cardLayout.previous(this);</code></li>
  <li>O commuta a prima: <code>cardLayout.first(this);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>next()</code> per navigazione avanti</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>previous()</code> per navigazione indietro, usare <code>first()</code> e <code>last()</code> per navigazione a bordi, usare <code>show()</code> per navigazione a carta specifica</li>
  <li><strong>⚠️ Evita:</strong> Commutare senza verificare — può causare errore</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Carte si commuteranno. Quando chiami next(), carta successiva si mostrerà, previous() — precedente. Puoi creare navigazione tra pannelli.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (357, 'it', 'CardLayout Maestro: Navigazione Tra Carte',
        'Commuta a carta successiva via next(), poi a precedente via previous()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (359, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Configurare Peso in GridBagLayout</h2>
<p class="intro">Il peso determina come si allungano componenti. Puoi specificare quali componenti otterranno spazio extra quando cambia dimensione. Senza peso, componenti non si allungheranno.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Campi <code>weightx</code> e <code>weighty</code> — pesi componenti</li>
  <li>Distribuire spazio extra</li>
  <li>Creare layout flessibili</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il peso è necessario per gestire allungamento componenti quando cambia dimensione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea vincoli: <code>GridBagConstraints gbc = new GridBagConstraints();</code></li>
  <li>Imposta pesi: <code>gbc.weightx = 1.0;<br>
gbc.weighty = 1.0;</code></li>
  <li>Aggiungi componente: <code>add(component, gbc);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> weightx per peso orizzontale</li>
  <li><strong>✅ Ottimo:</strong> Usare weighty per peso verticale, usare 1.0 per distribuzione uniforme, usare 0.0 per dimensione fissa</li>
  <li><strong>⚠️ Evita:</strong> Pesi troppo grandi — può essere imprevedibile</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componenti si allungheranno secondo peso. Quando cambia dimensione, componenti con peso otterranno spazio extra.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (359, 'it', 'GridBagLayout Maestro: Configurare Peso',
        'Crea GridBagConstraints, imposta weightx e weighty a 1.0, aggiungi componente con vincoli')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (358, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Determinare Carta Corrente in CardLayout</h2>
<p class="intro">Determinare carta corrente permette gestire navigazione. Puoi mostrare pulsanti corretti, aggiornare stato, registrare transizioni. Senza questo, non puoi sapere su quale carta è utente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Determinare carta visibile attualmente</li>
  <li>Lavorare con nomi carte</li>
  <li>Verificare stato CardLayout</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Determinare carta corrente è necessario per gestire navigazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Memorizza nomi carte: <code>String currentCard = "card1";</code></li>
  <li>Aggiorna quando commuti: <code>cardLayout.show(this, "card2");<br>
currentCard = "card2";</code></li>
  <li>O usa componenti: <code>Component[] components = getComponents();<br>
for (Component comp : components) {<br>
&nbsp;&nbsp;if (comp.isVisible()) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Carta visibile: " + comp.getName());<br>
&nbsp;&nbsp;}<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Memorizzare nome carta corrente in variabile</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>isVisible()</code> per verificare visibilità, usare <code>getName()</code> per ottenere nome componente, creare metodo <code>getCurrentCard()</code> per convenienza</li>
  <li><strong>⚠️ Evita:</strong> Verificare tutti i componenti ogni volta — può essere lento</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Potrai sapere carta corrente. Puoi verificare quale carta è visibile e eseguire azioni basate su quello.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (358, 'it', 'CardLayout Maestro: Conoscere Carta Corrente',
        'Ottieni tutti i componenti, verifica isVisible() per ciascuno, mostra nome componente visibile')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (360, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Configurare Riempimento in GridBagLayout</h2>
<p class="intro">Il riempimento determina come si allunga componente. Puoi specificare in quale direzione componente riempirà cella. Senza riempimento, componente sarà dimensione minima.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Campo <code>fill</code> — riempimento componente</li>
  <li>Costanti riempimento (NONE, HORIZONTAL, VERTICAL, BOTH)</li>
  <li>Creare componenti allungabili</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il riempimento è necessario per gestire allungamento componente in cella.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea vincoli: <code>GridBagConstraints gbc = new GridBagConstraints();</code></li>
  <li>Imposta riempimento: <code>gbc.fill = GridBagConstraints.BOTH;</code></li>
  <li>Aggiungi componente: <code>add(component, gbc);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> BOTH per riempire in entrambe direzioni</li>
  <li><strong>✅ Ottimo:</strong> Usare HORIZONTAL per orizzontale, usare VERTICAL per verticale, usare NONE per dimensione minima</li>
  <li><strong>⚠️ Evita:</strong> BOTH per tutti — può essere disordinato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componente riempirà cella. Componente si allungherà secondo riempimento.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (360, 'it', 'GridBagLayout Maestro: Configurare Riempimento',
        'Crea GridBagConstraints, imposta fill = BOTH, aggiungi componente')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (361, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Configurare Ancora in GridBagLayout</h2>
<p class="intro">L''ancora determina posizione componente. Puoi posizionare componente al centro, angoli, bordi di cella. Senza ancora, componente sarà in posizione standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Campo <code>anchor</code> — ancora componente</li>
  <li>Costanti ancora (CENTER, NORTH, SOUTH, EAST, WEST)</li>
  <li>Posizionare componente in cella</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>L''ancora è necessaria per posizionamento preciso di componente in cella.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea vincoli: <code>GridBagConstraints gbc = new GridBagConstraints();</code></li>
  <li>Imposta ancora: <code>gbc.anchor = GridBagConstraints.NORTH;</code></li>
  <li>Aggiungi componente: <code>add(component, gbc);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> CENTER per centro</li>
  <li><strong>✅ Ottimo:</strong> Usare NORTH, SOUTH per verticale, usare EAST, WEST per orizzontale, usare combinazioni (NORTHWEST, SOUTHEAST)</li>
  <li><strong>⚠️ Evita:</strong> Combinazioni troppo complesse</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componente sarà in posizione specificata. Componente si posizionerà secondo ancora.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (361, 'it', 'GridBagLayout Maestro: Configurare Ancora',
        'Crea GridBagConstraints, imposta anchor = NORTH, aggiungi componente')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (362, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Configurare Margini in GridBagLayout</h2>
<p class="intro">I margini creano spazio attorno a componente. Puoi specificare margini da sopra, sotto, sinistra, destra, migliorare layout. Senza margini, componenti saranno premuti tra loro.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>Insets</code> — margini</li>
  <li>Campo <code>insets</code> — impostare margini</li>
  <li>Creare spazio attorno a componente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I margini sono necessari per creare spazio attorno a componente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea vincoli: <code>GridBagConstraints gbc = new GridBagConstraints();</code></li>
  <li>Imposta margini: <code>gbc.insets = new Insets(5, 5, 5, 5);</code></li>
  <li>Aggiungi componente: <code>add(component, gbc);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Insets per spazi</li>
  <li><strong>✅ Ottimo:</strong> Specificare margini per tutti i lati, usare valori ragionevoli, usare per migliorare layout</li>
  <li><strong>⚠️ Evita:</strong> Margini troppo grandi — può essere eccessivo</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Margini appariranno attorno a componente. Componente avrà margini specificati.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (362, 'it', 'GridBagLayout Maestro: Configurare Margini',
        'Crea GridBagConstraints, imposta insets = new Insets(5,5,5,5), aggiungi componente')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (363, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Impostare Pannello Anteprima in JColorChooser</h2>
<p class="intro">Il pannello anteprima migliora esperienza utente. Puoi mostrare anteprima personalizzata, migliorare visualizzazione. Senza pannello, ci sarà anteprima standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setPreviewPanel()</code> — impostare pannello anteprima</li>
  <li>Pannello anteprima personalizzato</li>
  <li>Migliorare esperienza utente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il pannello anteprima è necessario per migliorare esperienza utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea pannello: <code>JPanel previewPanel = new JPanel();</code></li>
  <li>Imposta pannello: <code>colorChooser.setPreviewPanel(previewPanel);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setPreviewPanel()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare pannello personalizzato, usare per migliorare UX, migliorare visualizzazione</li>
  <li><strong>⚠️ Evita:</strong> Pannello troppo complesso</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Invece di pannello standard, ci sarà personalizzato. Puoi migliorare visualizzazione.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (363, 'it', 'Selezione Colore Maestro: Impostare Pannello Anteprima',
        'Crea JPanel, imposta via setPreviewPanel()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (364, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Mostrare Prima Carta in CardLayout</h2>
<p class="intro">La prima carta permette tornare all''inizio. Puoi andare a prima carta, migliorare navigazione. Senza questo, devi commutare manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>first()</code> — prima carta</li>
  <li>Andare a prima carta</li>
  <li>Migliorare navigazione</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Andare a prima carta è necessario per migliorare navigazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni layout: <code>CardLayout layout = (CardLayout) container.getLayout();</code></li>
  <li>Mostra prima carta: <code>layout.first(container);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>first()</code> per navigazione</li>
  <li><strong>✅ Ottimo:</strong> Usare per navigazione, combinare con <code>last()</code>, <code>next()</code>, <code>previous()</code>, migliorare navigazione</li>
  <li><strong>⚠️ Evita:</strong> Commutare senza contenitore</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Prima carta sarà mostrata. Puoi tornare all''inizio.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (364, 'it', 'CardLayout Maestro: Mostrare Prima Carta',
        'Ottieni CardLayout via getLayout(), converti a CardLayout, chiama first(container)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (365, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 10: Ottenere Modello Selezione Colore</h2>
<p class="intro">Il modello selezione permette gestire colore. Puoi ottenere accesso a modello, cambiare colore programmaticamente, migliorare funzionalità. Senza accesso, non puoi gestire colore.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>getSelectionModel()</code> — ottenere modello selezione</li>
  <li>Accesso a modello colore</li>
  <li>Migliorare funzionalità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il modello selezione è necessario per gestione programmatica di colore.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni modello: <code>ColorSelectionModel model = colorChooser.getSelectionModel();</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getSelectionModel()</code> per ottenere</li>
  <li><strong>✅ Ottimo:</strong> Usare per gestire colore, usare per cambi programmatici, migliorare funzionalità</li>
  <li><strong>⚠️ Evita:</strong> Cambiare senza necessità</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Potrai ottenere accesso a modello selezione. Puoi gestire colore programmaticamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (365, 'it', 'Selezione Colore Maestro: Ottenere Modello Selezione',
        'Ottieni modello selezione via getSelectionModel()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (366, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 11: Mostrare Ultima Carta in CardLayout</h2>
<p class="intro">L''ultima carta permette andare alla fine. Puoi andare a ultima carta, migliorare navigazione. Senza questo, devi commutare manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>last()</code> — ultima carta</li>
  <li>Andare a ultima carta</li>
  <li>Migliorare navigazione</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Andare a ultima carta è necessario per migliorare navigazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni layout: <code>CardLayout layout = (CardLayout) container.getLayout();</code></li>
  <li>Mostra ultima carta: <code>layout.last(container);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>last()</code> per navigazione</li>
  <li><strong>✅ Ottimo:</strong> Usare per navigazione, combinare con <code>first()</code>, <code>next()</code>, <code>previous()</code>, migliorare navigazione</li>
  <li><strong>⚠️ Evita:</strong> Commutare senza contenitore</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Ultima carta sarà mostrata. Puoi andare alla fine.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (366, 'it', 'CardLayout Maestro: Mostrare Ultima Carta',
        'Ottieni CardLayout via getLayout(), converti a CardLayout, chiama last(container)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (367, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 12: Mostrare Carta Successiva in CardLayout</h2>
<p class="intro">La carta successiva permette avanzare. Puoi andare a carta successiva, migliorare navigazione. Senza questo, devi commutare manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>next()</code> — carta successiva</li>
  <li>Andare a carta successiva</li>
  <li>Migliorare navigazione</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Andare a carta successiva è necessario per migliorare navigazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni layout: <code>CardLayout layout = (CardLayout) container.getLayout();</code></li>
  <li>Mostra carta successiva: <code>layout.next(container);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>next()</code> per navigazione</li>
  <li><strong>✅ Ottimo:</strong> Usare per navigazione, combinare con <code>previous()</code>, <code>first()</code>, <code>last()</code>, migliorare navigazione</li>
  <li><strong>⚠️ Evita:</strong> Commutare senza contenitore</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Carta successiva sarà mostrata. Puoi avanzare.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (367, 'it', 'CardLayout Maestro: Mostrare Carta Successiva',
        'Ottieni CardLayout via getLayout(), converti a CardLayout, chiama next(container)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (368, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 13: Impostare Colore in JColorChooser</h2>
<p class="intro">Il colore determina selezione corrente. Puoi impostare colore iniziale, ottenere selezionato, migliorare gestione. Senza impostazione, colore sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setColor()</code> — impostare colore</li>
  <li>Metodo <code>getColor()</code> — ottenere colore</li>
  <li>Gestire colore</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Impostare colore è necessario per gestire selezione colore.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta colore: <code>colorChooser.setColor(Color.RED);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setColor()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>getColor()</code> per ottenere, usare costanti Color, migliorare gestione</li>
  <li><strong>⚠️ Evita:</strong> Ignorare colore selezionato</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Colore sarà impostato. Puoi gestire selezione colore.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (368, 'it', 'Selezione Colore Maestro: Impostare Colore', 'Imposta colore RED via setColor(Color.RED)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (369, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 14: Mostrare Carta Precedente in CardLayout</h2>
<p class="intro">La carta precedente permette tornare indietro. Puoi andare a carta precedente, migliorare navigazione. Senza questo, devi commutare manualmente.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>previous()</code> — carta precedente</li>
  <li>Andare a carta precedente</li>
  <li>Migliorare navigazione</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Andare a carta precedente è necessario per migliorare navigazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni layout: <code>CardLayout layout = (CardLayout) container.getLayout();</code></li>
  <li>Mostra carta precedente: <code>layout.previous(container);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>previous()</code> per navigazione</li>
  <li><strong>✅ Ottimo:</strong> Usare per navigazione, combinare con <code>next()</code>, <code>first()</code>, <code>last()</code>, migliorare navigazione</li>
  <li><strong>⚠️ Evita:</strong> Commutare senza contenitore</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Carta precedente sarà mostrata. Puoi tornare indietro.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (369, 'it', 'CardLayout Maestro: Mostrare Carta Precedente',
        'Ottieni CardLayout via getLayout(), converti a CardLayout, chiama previous(container)')
ON CONFLICT (task_id, language_code) DO NOTHING;
