-- Flyway migration V5: Lesson 11
-- This migration contains lesson, tasks, and documentation for lesson 11

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (94, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare una lista di elementi</h2>
<p class="intro">Le liste (<code>JList</code>) mostrano molti elementi. File, prodotti, utenti — tutto questo è conveniente mostrare in una lista. Le liste rendono i dati organizzati e accessibili per la selezione.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>JList</code> — lista di elementi</li>
  <li>Creare una lista con dati</li>
  <li>Mostrare elementi in una lista</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le liste permettono di mostrare molti elementi in modo organizzato e forniscono selezione conveniente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea array di elementi: <code>String[] items = {"Elemento 1", "Elemento 2", "Elemento 3"};</code></li>
  <li>Crea lista: <code>JList&lt;String&gt; list = new JList&lt;&gt;(items);</code></li>
  <li>Aggiungi al form: <code>add(list);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Bene:</strong> Creare con array di elementi</li>
  <li><strong>✅ Eccellente:</strong> Usare <code>JList&lt;String&gt;</code> tipizzato, usare DefaultListModel per lista dinamica</li>
  <li><strong>⚠️ Evita:</strong> Lista vuota — l''utente non vedrà elementi</li>
</ul>
<p><strong>Importante:</strong> Puoi creare con array: <code>new JList&lt;&gt;(items)</code>. Puoi creare con modello: <code>new JList&lt;&gt;(model)</code>. Ottenere selezionato: <code>String selected = list.getSelectedValue();</code>. Impostare selezionato: <code>list.setSelectedIndex(0);</code>. Le liste è meglio posizionarle in JScrollPane per lo scorrimento.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà una lista di elementi sul form. È una lista verticale con elementi. Puoi selezionare un elemento facendo clic.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (94, 'it', 'Lista principiante: crea una lista di elementi',
        'Crea una lista con elementi "Elemento 1", "Elemento 2", "Elemento 3" e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (95, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Modo selezione in lista</h2>
<p class="intro">Il modo selezione determina il comportamento della lista. Un file per aprire, diversi file per eliminare — diverse attività richiedono diversi modi. Il modo corretto rende l''interfaccia intuitiva.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>setSelectionMode(int mode)</code> — impostare modo selezione</li>
  <li>Modi: <code>SINGLE_SELECTION</code>, <code>SINGLE_INTERVAL_SELECTION</code>, <code>MULTIPLE_INTERVAL_SELECTION</code></li>
  <li>Gestire selezione elementi in lista</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il modo selezione corretto rende l''interfaccia intuitiva e corrisponde alle aspettative dell''utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea lista: <code>JList&lt;String&gt; list = new JList&lt;&gt;(items);</code></li>
  <li>Imposta modo selezione: <code>list.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);</code></li>
  <li>Aggiungi al form: <code>add(list);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>SINGLE_SELECTION</code> per selezionare un elemento</li>
  <li><strong>✅ Eccellente:</strong> <code>MULTIPLE_INTERVAL_SELECTION</code> per selezione multipla, <code>SINGLE_INTERVAL_SELECTION</code> per selezionare intervallo</li>
  <li><strong>⚠️ Evita:</strong> Selezione multipla dove serve una — confonde l''utente</li>
</ul>
<p><strong>Importante:</strong> SINGLE_INTERVAL_SELECTION — selezionare un intervallo (Shift+clic). MULTIPLE_INTERVAL_SELECTION — selezionare diversi elementi (Ctrl+clic). Usa SINGLE_SELECTION per casi semplici.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La lista funzionerà nel modo selezionato. Puoi selezionare un elemento, intervallo, o diversi elementi.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (95, 'it', 'Modo selezione: uno o diversi elementi',
        'Crea una lista, imposta modo MULTIPLE_INTERVAL_SELECTION tramite setSelectionMode() e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (96, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Ottenere elemento selezionato</h2>
<p class="intro">Ottenere elemento selezionato permette di elaborare la selezione dell''utente. Puoi eseguire azione con elemento selezionato, aggiornare altri componenti. Senza questo, la lista sarà solo per visualizzazione.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>getSelectedValue()</code> — ottenere elemento selezionato</li>
  <li>Il metodo <code>getSelectedIndex()</code> — ottenere indice dell''elemento selezionato</li>
  <li>Lavorare con elementi selezionati</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Ottenere elemento selezionato è necessario per elaborare azioni dell''utente e aggiornare l''interfaccia.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea lista: <code>JList&lt;String&gt; list = new JList&lt;&gt;(items);</code></li>
  <li>Ottieni elemento selezionato: <code>String selected = list.getSelectedValue();</code></li>
  <li>Usa elemento selezionato: <code>JLabel label = new JLabel("Selezionato: " + selected);<br>
add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getSelectedValue()</code> per ottenere elemento, <code>getSelectedIndex()</code> per ottenere indice</li>
  <li><strong>✅ Eccellente:</strong> Verificare null prima di usare, usare nel gestore di eventi</li>
  <li><strong>⚠️ Evita:</strong> Ignorare null — può causare errore</li>
</ul>
<p><strong>Importante:</strong> <code>getSelectedValuesList()</code> — ottenere lista di elementi selezionati. Usa in ListSelectionListener.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Puoi ottenere elemento selezionato. Quando si seleziona, puoi scoprire quale elemento è selezionato.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (96, 'it', 'Elemento selezionato: ottieni elemento selezionato',
        'Crea una lista, ottieni elemento selezionato tramite getSelectedValue(), mostralo')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (97, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Gestire selezione elementi</h2>
<p class="intro">Gestire selezione rende la lista interattiva. Puoi reagire alla selezione dell''utente, aggiornare altri componenti, eseguire azioni. Senza gestione, la selezione non avrà effetto.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>L''interfaccia <code>ListSelectionListener</code> — ascoltatore selezione</li>
  <li>Il metodo <code>addListSelectionListener()</code> — aggiungere ascoltatore</li>
  <li>Gestire eventi selezione</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire selezione permette di reagire alle azioni dell''utente e aggiornare l''interfaccia in tempo reale.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea lista: <code>JList&lt;String&gt; list = new JList&lt;&gt;(items);</code></li>
  <li>Aggiungi ascoltatore: <code>list.addListSelectionListener(e -> {<br>
&nbsp;&nbsp;if (!e.getValueIsAdjusting()) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;String selected = list.getSelectedValue();<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Selezionato: " + selected);<br>
&nbsp;&nbsp;}<br>
});</code></li>
  <li>Aggiungi al form: <code>add(list);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>addListSelectionListener()</code> per gestire</li>
  <li><strong>✅ Eccellente:</strong> Verificare <code>getValueIsAdjusting()</code> per evitare eventi multipli, aggiornare altri componenti alla selezione, usare espressioni lambda per brevità</li>
  <li><strong>⚠️ Evita:</strong> Ignorare <code>getValueIsAdjusting()</code> — eventi multipli</li>
</ul>
<p><strong>Importante:</strong> Verifica <code>getValueIsAdjusting()</code> per evitare eventi extra. Usa per aggiornare altri componenti.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Quando si seleziona elemento, il gestore si attiverà. Puoi gestire la selezione ed eseguire azioni.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (97, 'it', 'Ascoltatore selezione: gestisci selezione elementi',
        'Crea una lista, aggiungi ListSelectionListener, verifica getValueIsAdjusting(), ottieni elemento selezionato e mostralo')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (98, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Modello lista</h2>
<p class="intro">DefaultListModel permette di gestire elementi dinamicamente. Puoi aggiungere nuovi elementi, rimuovere vecchi, cambiare lista durante l''esecuzione. Senza modello, la lista è statica.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>DefaultListModel</code> — modello lista</li>
  <li>Metodi <code>addElement()</code>, <code>removeElement()</code>, <code>getElementAt()</code></li>
  <li>Gestione dinamica di elementi lista</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>DefaultListModel permette di cambiare lista dinamicamente durante l''esecuzione dell''applicazione, il che è necessario per interfacce interattive.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea modello: <code>DefaultListModel&lt;String&gt; model = new DefaultListModel&lt;&gt;();</code></li>
  <li>Aggiungi elementi: <code>model.addElement("Elemento 1");</code><br><code>model.addElement("Elemento 2");</code></li>
  <li>Crea lista con modello: <code>JList&lt;String&gt; list = new JList&lt;&gt;(model);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> DefaultListModel per lista dinamica</li>
  <li><strong>✅ Eccellente:</strong> Usare <code>addElement()</code> per aggiungere, <code>removeElement()</code> per rimuovere, <code>getElementAt()</code> per ottenere elemento</li>
  <li><strong>⚠️ Evita:</strong> Usare array per lista dinamica — scomodo</li>
</ul>
<p><strong>Importante:</strong> <code>getSize()</code> — ottenere dimensione del modello. Usa per liste che cambiano durante l''esecuzione.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La lista funzionerà con modello. Puoi aggiungere e rimuovere elementi dinamicamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (98, 'it', 'Modello lista: lavora con DefaultListModel',
        'Crea DefaultListModel, aggiungi elementi tramite addElement(), crea lista con modello e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (99, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Lista scorrevole</h2>
<p class="intro">Lo scorrimento permette di mostrare liste lunghe. Centinaia di elementi, migliaia di record — tutto questo è conveniente vedere con scorrimento. Senza scorrimento, la lista lunga non entrerà nello schermo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>La classe <code>JScrollPane</code> — pannello scorrevole</li>
  <li>Aggiungere lista a JScrollPane</li>
  <li>Creare lista scorrevole</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Lo scorrimento è necessario per mostrare liste lunghe e migliorare l''esperienza utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea lista: <code>JList&lt;String&gt; list = new JList&lt;&gt;(items);</code></li>
  <li>Crea pannello scorrevole: <code>JScrollPane scrollPane = new JScrollPane(list);</code></li>
  <li>Aggiungi al form: <code>add(scrollPane);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Sempre usare JScrollPane per liste</li>
  <li><strong>✅ Eccellente:</strong> Configurare dimensioni del pannello scorrevole, usare <code>setPreferredSize()</code> per dimensione</li>
  <li><strong>⚠️ Evita:</strong> Lista senza scorrimento — può non entrare</li>
</ul>
<p><strong>Importante:</strong> Configura dimensioni per comodità.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La lista sarà scorrevole. Se ci sono molti elementi, apparirà la barra di scorrimento. Puoi scorrere la lista.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (99, 'it', 'Lista scorrevole: aggiungi scorrimento',
        'Crea una lista, avvolgila in JScrollPane e aggiungila al form')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (100, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Selezione multipla</h2>
<p class="intro">La selezione multipla permette di lavorare con diversi elementi. Eliminare diversi file, selezionare diversi prodotti — tutto questo richiede selezione multipla. Senza questo, dovrai selezionare uno per uno.</p>
</div>

<section class="learning-objectives">
<h3>📚 Impariamo:</h3>
<ul>
  <li>Il metodo <code>getSelectedValuesList()</code> — ottenere lista di elementi selezionati</li>
  <li>Il metodo <code>getSelectedIndices()</code> — ottenere indici di elementi selezionati</li>
  <li>Lavorare con selezione multipla</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La selezione multipla è necessaria per operazioni massive e migliorare l''efficienza del lavoro dell''utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea lista con selezione multipla: <code>JList&lt;String&gt; list = new JList&lt;&gt;(items);</code><br><code>list.setSelectionMode(ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);</code></li>
  <li>Ottieni tutti gli elementi selezionati: <code>List&lt;String&gt; selected = list.getSelectedValuesList();</code></li>
  <li>Usa elementi selezionati: <code>JLabel label = new JLabel();<br>
for (String item : selected) {<br>
&nbsp;&nbsp;label.setText("Selezionato: " + item);<br>
}<br>
add(label);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getSelectedValuesList()</code> per ottenere lista, <code>getSelectedIndices()</code> per ottenere indici</li>
  <li><strong>✅ Eccellente:</strong> Verificare che la lista non sia vuota, usare nel gestore di eventi</li>
  <li><strong>⚠️ Evita:</strong> Ignorare lista vuota</li>
</ul>
<p><strong>Importante:</strong> <code>isSelectionEmpty()</code> — verificare se c''è selezione. Verifica vuoto prima di usare. Usa per operazioni multiple.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Puoi ottenere tutti gli elementi selezionati. Con selezione multipla, puoi elaborare tutti gli elementi selezionati.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (100, 'it', 'Selezione multipla: ottieni tutti gli elementi selezionati',
        'Crea una lista con MULTIPLE_INTERVAL_SELECTION, ottieni tutti gli elementi selezionati tramite getSelectedValuesList() e mostrali')
ON CONFLICT (task_id, language_code) DO NOTHING;

-- ============================================================================
-- TASK TRANSLATIONS (Italian)
-- ============================================================================

-- Note: Task translations are inserted directly below, not migrated from task table
-- (task table does not have title/question columns)
