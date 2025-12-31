-- Flyway migration V5: Lesson 31
-- This migration contains lesson, tasks, and documentation for lesson 31

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (253, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Creare Struttura Gerarchica</h2>
<p class="intro">Gli alberi mostrano dati gerarchici. Sistema di file, struttura organizzativa, categorie di prodotti — tutto questo è conveniente mostrare in albero. Gli alberi rendono le strutture complesse comprensibili.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>JTree</code> — albero per dati gerarchici</li>
  <li>Creare albero con nodi</li>
  <li>Mostrare struttura gerarchica</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gli alberi sono necessari per mostrare dati gerarchici in formato conveniente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea nodo radice: <code>DefaultMutableTreeNode root = new DefaultMutableTreeNode("Radice");</code></li>
  <li>Aggiungi nodi figli: <code>root.add(new DefaultMutableTreeNode("Nodo 1"));</code> e <code>root.add(new DefaultMutableTreeNode("Nodo 2"));</code></li>
  <li>Crea albero: <code>JTree tree = new JTree(root);</code></li>
  <li>Avvolgi in JScrollPane e aggiungi: <code>JScrollPane scrollPane = new JScrollPane(tree);</code> e <code>add(scrollPane);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> DefaultMutableTreeNode per nodi</li>
  <li><strong>✅ Ottimo:</strong> Avvolgere in JScrollPane per scorrimento, creare gerarchia multilivello</li>
  <li><strong>⚠️ Evita:</strong> Senza JScrollPane — gli alberi grandi non scorrono</li>
</ul>
<p><strong>Importante:</strong> Sempre avvolgere in JScrollPane per scorrimento. I nodi possono essere espansi/contratti cliccando.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Apparirà un albero con nodi. Questa è una struttura gerarchica con nodo radice e figli. Puoi espandere nodi per vedere contenuto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (253, 'it', 'Albero Principiante: Creare Struttura Gerarchica',
        'Crea albero con nodo radice "Radice" e due nodi figli, avvolgi in JScrollPane e aggiungi al modulo')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (254, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Configurare Larghezza Colonne</h2>
<p class="intro">Configurare larghezza colonne rende la tabella conveniente. I testi lunghi non si taglieranno, le colonne corte non occuperanno spazio extra. Senza configurazione, la tabella può sembrare disordinata.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setPreferredWidth()</code> — impostare larghezza colonna</li>
  <li>Classe <code>TableColumn</code> — colonna di tabella</li>
  <li>Configurare dimensioni colonne</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Configurare larghezza colonne è necessario per migliorare leggibilità e aspetto della tabella.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni modello colonne: <code>TableColumnModel columnModel = table.getColumnModel();</code></li>
  <li>Ottieni colonna: <code>TableColumn column = columnModel.getColumn(0);</code></li>
  <li>Imposta larghezza: <code>column.setPreferredWidth(150);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setPreferredWidth()</code> per larghezza preferita</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>setMinWidth()</code> e <code>setMaxWidth()</code> per vincoli, configurare larghezza per tutte le colonne</li>
  <li><strong>⚠️ Evita:</strong> Colonne troppo strette — il testo si taglierà</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Le colonne della tabella saranno della larghezza necessaria. I testi lunghi saranno completamente visibili, le colonne corte non occuperanno spazio extra.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (254, 'it', 'Tabella Maestro: Configurare Larghezza Colonne',
        'Ottieni modello colonne, ottieni prima colonna, imposta larghezza preferita 150')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (255, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Espandere e Contrarre Nodi</h2>
<p class="intro">Gestire espansione nodi rende l''albero conveniente. Puoi aprire automaticamente i rami necessari, nascondere quelli non necessari. Senza questo, l''utente dovrà aprire manualmente ogni nodo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>expandPath()</code> — espandere percorso</li>
  <li>Metodo <code>collapsePath()</code> — contrarre percorso</li>
  <li>Classe <code>TreePath</code> — percorso al nodo</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire espansione è necessario per navigazione conveniente dell''albero.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni percorso al nodo: <code>TreePath path = new TreePath(node.getPath());</code></li>
  <li>Espandi percorso: <code>tree.expandPath(path);</code></li>
  <li>O contrai percorso: <code>tree.collapsePath(path);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>expandPath()</code> per espandere</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>expandRow()</code> per espandere per indice riga, usare <code>expandAll()</code> per espandere tutti i nodi</li>
  <li><strong>⚠️ Evita:</strong> Espandere tutti i nodi contemporaneamente — può essere lento</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>I nodi dell''albero si espanderanno e contrarranno. Puoi gestire programmaticamente la visibilità dei nodi.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (255, 'it', 'Albero Maestro: Espandere e Contrarre Nodi',
        'Ottieni percorso al nodo, espandi percorso nell''albero')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (256, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Abilitare Modifica Celle</h2>
<p class="intro">La modifica di celle rende la tabella interattiva. Puoi cambiare dati direttamente nella tabella, senza aprire moduli separati. Senza questo, dovrai creare dialoghi separati per modificare.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>isCellEditable()</code> — permettere modifica</li>
  <li>Classe <code>DefaultTableModel</code> — modello tabella</li>
  <li>Abilitare modifica celle</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>La modifica di celle è necessaria per creare tabelle interattive con capacità di cambiare dati.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea modello: <code>DefaultTableModel model = new DefaultTableModel(data, columns) {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public boolean isCellEditable(int row, int column) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;return true;<br>
&nbsp;&nbsp;}<br>
};</code></li>
  <li>Imposta modello: <code>table.setModel(model);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Sovrascrivere <code>isCellEditable()</code> nel modello</li>
  <li><strong>✅ Ottimo:</strong> Permettere modifica solo per colonne specifiche, aggiungere validazione durante modifica</li>
  <li><strong>⚠️ Evita:</strong> Permettere modifica di tutte le celle — può essere non sicuro</li>
</ul>
<p><strong>Importante:</strong> Puoi usare diversi editori per diversi tipi di dati. Aggiungere TableModelListener per tracciare cambiamenti.</p>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Le celle della tabella potranno essere modificate. Doppio clic su cella aprirà l''editore. Puoi cambiare valori direttamente nella tabella.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (256, 'it', 'Tabella Maestro: Abilitare Modifica Celle',
        'Crea DefaultTableModel, sovrascrivi isCellEditable() per restituire true, imposta modello alla tabella')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (257, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Gestire Selezione Nodi</h2>
<p class="intro">Gestire selezione nodi rende l''albero interattivo. Puoi mostrare dettagli del nodo selezionato, eseguire azioni, aggiornare altri componenti. Senza questo, l''albero sarà solo per visualizzare.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Interfaccia <code>TreeSelectionListener</code> — gestire selezione</li>
  <li>Ottenere nodo selezionato</li>
  <li>Gestire selezione nodi</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire selezione è necessario per creare alberi interattivi con reazione ad azioni dell''utente.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiungi ascoltatore: <code>tree.addTreeSelectionListener(e -> {<br>
&nbsp;&nbsp;TreePath path = e.getNewLeadSelectionPath();<br>
&nbsp;&nbsp;if (path != null) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;DefaultMutableTreeNode node = (DefaultMutableTreeNode) path.getLastPathComponent();<br>
&nbsp;&nbsp;&nbsp;&nbsp;label.setText("Selezionato: " + node.getUserObject());<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Verificare path per null prima di usare</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>getLastPathComponent()</code> per ottenere nodo, gestire selezione multipla</li>
  <li><strong>⚠️ Evita:</strong> Ignorare null — può essere errore</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Selezionando nodo, il gestore si attiverà. Puoi ottenere il nodo selezionato e eseguire azioni.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (257, 'it', 'Albero Maestro: Gestire Selezione Nodi',
        'Aggiungi TreeSelectionListener, ottieni percorso del nodo selezionato, ottieni nodo e mostra il suo oggetto')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (258, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Configurare Selezione Righe</h2>
<p class="intro">La modalità di selezione determina quante righe possono essere selezionate. Selezione singola per dettagli, multipla per operazioni — tutto questo richiede configurare modalità. Senza questo, sarà disponibile solo selezione singola.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setSelectionMode()</code> — modalità selezione</li>
  <li>Costanti modalità selezione</li>
  <li>Configurare selezione righe</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Configurare modalità selezione è necessario per controllare comportamento della tabella quando si selezionano righe.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni modello selezione: <code>ListSelectionModel selectionModel = table.getSelectionModel();</code></li>
  <li>Imposta modalità: <code>selectionModel.setSelectionMode(ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> SINGLE_SELECTION per singola</li>
  <li><strong>✅ Ottimo:</strong> Usare MULTIPLE_INTERVAL_SELECTION per multipla, usare SINGLE_INTERVAL_SELECTION per intervallo</li>
  <li><strong>⚠️ Evita:</strong> Selezione multipla dove serve singola</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Puoi selezionare righe multiple. Con selezione multipla, puoi selezionare diverse righe simultaneamente.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (258, 'it', 'Tabella Maestro: Configurare Selezione Righe',
        'Ottieni modello selezione tramite getSelectionModel(), imposta MULTIPLE_INTERVAL_SELECTION')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (259, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Configurare Visualizzazione Nodi</h2>
<p class="intro">Il renderer personalizzato permette cambiare aspetto nodi. Puoi aggiungere icone, colori, formattazione. Senza questo, tutti i nodi saranno mostrati uguali.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Interfaccia <code>TreeCellRenderer</code> — renderer nodi</li>
  <li>Metodo <code>setCellRenderer()</code> — impostare renderer</li>
  <li>Creare visualizzazione personalizzata</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il renderer personalizzato è necessario per migliorare rappresentazione visiva dei nodi dell''albero.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea renderer: <code>tree.setCellRenderer(new DefaultTreeCellRenderer() {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;public Component getTreeCellRendererComponent(...) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;Component c = super.getTreeCellRendererComponent(...);<br>
&nbsp;&nbsp;&nbsp;&nbsp;c.setForeground(Color.BLUE);<br>
&nbsp;&nbsp;&nbsp;&nbsp;return c;<br>
&nbsp;&nbsp;}<br>
});</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Estendere DefaultTreeCellRenderer</li>
  <li><strong>✅ Ottimo:</strong> Configurare colore, font, icone, formattazione condizionale a seconda del nodo</li>
  <li><strong>⚠️ Evita:</strong> Formattazione troppo complessa — può essere lenta</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>I nodi saranno mostrati con formattazione personalizzata. Puoi aggiungere colori, icone, cambiare font.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (259, 'it', 'Albero Maestro: Configurare Visualizzazione Nodi',
        'Crea DefaultTreeCellRenderer, sovrascrivi getTreeCellRendererComponent(), imposta colore testo blu, imposta renderer')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (266, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 8: Aggiungere Acceleratore a Voce Menu</h2>
<p class="intro">L''acceleratore accelera l''accesso. Puoi assegnare scorciatoia per voce menu, migliorare prestazioni. Senza acceleratore, devi usare il menu.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setAccelerator()</code> — impostare acceleratore</li>
  <li>Scorciatoie per voci menu</li>
  <li>Migliorare accessibilità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gli acceleratori sono necessari per accesso rapido alle funzioni attraverso scorciatoie.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea acceleratore: <code>KeyStroke keyStroke = KeyStroke.getKeyStroke(KeyEvent.VK_S, InputEvent.CTRL_DOWN_MASK);</code></li>
  <li>Imposta acceleratore: <code>menuItem.setAccelerator(keyStroke);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setAccelerator()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare KeyStroke per creare, usare combinazioni standard, migliorare accessibilità</li>
  <li><strong>⚠️ Evita:</strong> Duplicare acceleratori</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>L''acceleratore apparirà accanto alla voce menu. Puoi usare scorciatoia per accesso rapido.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (266, 'it', 'Voce Menu Maestro: Aggiungere Acceleratore',
        'Crea KeyStroke per Ctrl+S, imposta tramite setAccelerator()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (260, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 9: Configurare Larghezza Colonne (Esteso)</h2>
<p class="intro">La larghezza colonne determina leggibilità. Puoi impostare larghezza necessaria, migliorare visualizzazione. Senza configurazione, le colonne saranno larghezza standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setPreferredWidth()</code> — impostare larghezza colonna</li>
  <li>Metodo <code>setAutoResizeMode()</code> — modalità ridimensionamento</li>
  <li>Configurare dimensioni colonne</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Configurare larghezza colonne è necessario per migliorare leggibilità della tabella.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni modello colonne: <code>TableColumnModel columnModel = table.getColumnModel();</code></li>
  <li>Imposta larghezza: <code>TableColumn column = columnModel.getColumn(0);</code> e <code>column.setPreferredWidth(150);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>getColumnModel()</code> per ottenere</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>setPreferredWidth()</code> per larghezza, usare <code>setMinWidth()</code> e <code>setMaxWidth()</code>, adattare al contenuto</li>
  <li><strong>⚠️ Evita:</strong> Colonne troppo strette</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Le colonne saranno della larghezza necessaria. La tabella sembrerà ordinata.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (260, 'it', 'Tabella Maestro: Configurare Larghezza Colonne',
        'Ottieni modello colonne, ottieni colonna 0, imposta larghezza 150 tramite setPreferredWidth()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (267, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 10: Impostare Mnemonica in Voce Menu</h2>
<p class="intro">La mnemonica migliora l''accessibilità. Puoi assegnare scorciatoia per voce menu, migliorare navigazione. Senza mnemonica, devi usare il mouse.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setMnemonic()</code> — impostare mnemonica</li>
  <li>Scorciatoie per voci menu</li>
  <li>Migliorare accessibilità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le mnemoniche sono necessarie per migliorare accessibilità e navigazione attraverso tastiera.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta mnemonica: <code>menuItem.setMnemonic(KeyEvent.VK_S);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setMnemonic()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare KeyEvent.VK_* per tasti, usare per migliorare accessibilità, migliorare navigazione</li>
  <li><strong>⚠️ Evita:</strong> Duplicare mnemoniche</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Nel testo della voce menu, la lettera mnemonica sarà sottolineata. Premendo Alt+tasto, la voce si attiva.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (267, 'it', 'Voce Menu Maestro: Impostare Mnemonica', 'Imposta mnemonica VK_S tramite setMnemonic()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (262, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 11: Configurare Altezza Righe</h2>
<p class="intro">L''altezza righe determina leggibilità. Puoi impostare altezza necessaria, migliorare visualizzazione. Senza configurazione, l''altezza sarà standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setRowHeight()</code> — impostare altezza</li>
  <li>Creare righe uniformi</li>
  <li>Migliorare leggibilità</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Configurare altezza righe è necessario per migliorare leggibilità della tabella.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta altezza: <code>table.setRowHeight(30);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setRowHeight()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare valori ragionevoli, adattare al contenuto, usare per uniformità</li>
  <li><strong>⚠️ Evita:</strong> Altezza troppo piccola — può essere illeggibile</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Le righe saranno dell''altezza necessaria. La tabella sembrerà ordinata.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (262, 'it', 'Tabella Maestro: Configurare Altezza Righe', 'Imposta altezza righe 30 tramite setRowHeight(30)')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (268, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 12: Aggiungere Suggerimento a Voce Menu</h2>
<p class="intro">Il suggerimento migliora l''informatività. Puoi aggiungere descrizione della voce menu, migliorare comprensione. Senza suggerimento, l''utente può non capire lo scopo.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setToolTipText()</code> — impostare suggerimento</li>
  <li>Migliorare informatività</li>
  <li>Creare interfaccia comprensibile</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I suggerimenti sono necessari per migliorare informatività e comprensione degli scopi degli elementi dell''interfaccia.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta suggerimento: <code>menuItem.setToolTipText("Salva documento");</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setToolTipText()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare testi chiari, usare per migliorare informatività, migliorare comprensione</li>
  <li><strong>⚠️ Evita:</strong> Suggerimenti troppo lunghi</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Passando il mouse, apparirà un suggerimento. Puoi migliorare l''informatività.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (268, 'it', 'Voce Menu Maestro: Aggiungere Suggerimento',
        'Imposta suggerimento "Salva documento" tramite setToolTipText()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (261, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 13: Espandere Percorso nell''Albero</h2>
<p class="intro">Espandere percorso mostra nodi. Puoi espandere programmaticamente i nodi necessari, mostrare struttura. Senza espansione, i nodi saranno contratti.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>TreePath</code> — percorso al nodo</li>
  <li>Metodo <code>expandPath()</code> — espandere percorso</li>
  <li>Navigazione albero</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Espandere percorso è necessario per gestione programmatica della visibilità dei nodi dell''albero.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni percorso: <code>TreePath path = tree.getPathForRow(0);</code></li>
  <li>Espandi percorso: <code>tree.expandPath(path);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>expandPath()</code> per espandere</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>getPathForRow()</code> per ottenere percorso, usare <code>collapsePath()</code> per contrarre, usare <code>expandRow()</code> per espandere riga</li>
  <li><strong>⚠️ Evita:</strong> Espandere tutti i nodi — può essere lento</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>I nodi saranno espansi. Puoi vedere nodi figli.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (261, 'it', 'Albero Maestro: Espandere Percorso',
        'Ottieni percorso tramite getPathForRow(0), espandi tramite expandPath()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (264, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 14: Configurare Ridimensionamento Automatico</h2>
<p class="intro">La modalità di ridimensionamento determina comportamento. Puoi configurare come cambieranno le colonne quando cambia la dimensione della finestra. Senza configurazione, verrà usata modalità standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setAutoResizeMode()</code> — impostare modalità</li>
  <li>Costanti modalità (OFF, ALL_COLUMNS, NEXT_COLUMN, SUBSEQUENT_COLUMNS, LAST_COLUMN)</li>
  <li>Gestire ridimensionamento colonne</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Configurare modalità ridimensionamento è necessario per controllare comportamento della tabella quando cambia dimensione finestra.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta modalità: <code>table.setAutoResizeMode(JTable.AUTO_RESIZE_ALL_COLUMNS);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setAutoResizeMode()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare AUTO_RESIZE_ALL_COLUMNS per tutte, usare AUTO_RESIZE_OFF per disabilitare, usare AUTO_RESIZE_LAST_COLUMN per ultima</li>
  <li><strong>⚠️ Evita:</strong> Modalità sbagliata — può essere scomoda</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La modalità di ridimensionamento sarà configurata. Le colonne cambieranno secondo la modalità.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (264, 'it', 'Tabella Maestro: Configurare Ridimensionamento Automatico',
        'Imposta modalità AUTO_RESIZE_ALL_COLUMNS tramite setAutoResizeMode()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (263, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 15: Contrarre Percorso nell''Albero</h2>
<p class="intro">Contrarre percorso nasconde nodi. Puoi nascondere nodi figli, semplificare struttura. Senza contrarre, tutti i nodi saranno visibili.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>collapsePath()</code> — contrarre percorso</li>
  <li>Nascondere nodi figli</li>
  <li>Migliorare navigazione</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Contrarre percorso è necessario per semplificare struttura dell''albero e migliorare navigazione.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Ottieni percorso: <code>TreePath path = tree.getPathForRow(0);</code></li>
  <li>Contrai percorso: <code>tree.collapsePath(path);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>collapsePath()</code> per contrarre</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>getPathForRow()</code> per ottenere percorso, usare <code>collapseRow()</code> per contrarre riga, usare per semplificare struttura</li>
  <li><strong>⚠️ Evita:</strong> Contrarre tutti i nodi — può essere scomodo</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>I nodi saranno contratti. I nodi figli saranno nascosti. Puoi semplificare la struttura.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (263, 'it', 'Albero Maestro: Contrarre Percorso',
        'Ottieni percorso tramite getPathForRow(0), contrai tramite collapsePath()')
ON CONFLICT (task_id, language_code) DO NOTHING;
INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (265, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 16: Gestire Visibilità Radice</h2>
<p class="intro">La visibilità radice determina struttura. Puoi mostrare o nascondere nodo radice, migliorare rappresentazione dell''albero. Senza configurazione, la radice sarà visibile.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setRootVisible()</code> — mostrare radice</li>
  <li>Gestire visibilità nodo radice</li>
  <li>Migliorare struttura albero</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Gestire visibilità radice è necessario per migliorare rappresentazione di struttura dell''albero.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Mostra radice: <code>tree.setRootVisible(true);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setRootVisible(true)</code> per mostrare</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>setRootVisible(false)</code> per nascondere, usare per migliorare struttura, adattare a necessità</li>
  <li><strong>⚠️ Evita:</strong> Nascondere radice senza necessità</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>La radice sarà visibile o nascosta. Puoi gestire visibilità del nodo radice.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (265, 'it', 'Albero Maestro: Mostrare Radice', 'Mostra radice tramite setRootVisible(true)')
ON CONFLICT (task_id, language_code) DO NOTHING;
