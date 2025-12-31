-- Flyway migration V5: Lesson 50
-- This migration contains lesson, tasks, and documentation for lesson 50

-- ============================================================================
-- TASKS AND DOCUMENTATION
-- ============================================================================

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (441, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 1: Sovrascrivere paintComponent per Rendering Personalizzato</h2>
<p class="intro">Il rendering personalizzato permette creare grafica unica. Grafici, diagrammi, giochi, animazioni — tutto questo richiede rendering personalizzato. Senza questo, puoi solo usare componenti standard.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>paintComponent(Graphics)</code> — rendering personalizzato</li>
  <li>Sovrascrivere metodo in JComponent</li>
  <li>Creare grafica personalizzata</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Il rendering personalizzato è necessario per creare grafica unica.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea classe estendendo JComponent: <code>class MyComponent extends JComponent {<br>
&nbsp;&nbsp;@Override<br>
&nbsp;&nbsp;protected void paintComponent(Graphics g) {<br>
&nbsp;&nbsp;&nbsp;&nbsp;super.paintComponent(g);<br>
&nbsp;&nbsp;&nbsp;&nbsp;g.drawString("Ciao!", 10, 20);<br>
&nbsp;&nbsp;}<br>
}</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Chiamare sempre <code>super.paintComponent(g)</code></li>
  <li><strong>✅ Ottimo:</strong> Usare Graphics2D per grafica migliorata, usare per grafica personalizzata, usare per animazioni</li>
  <li><strong>⚠️ Evita:</strong> Non chiamare super.paintComponent() — può esserci problema con sfondo</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componente sarà renderizzato personalmente. Puoi creare grafica unica.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (441, 'it', 'Rendering Personalizzato Principiante: Sovrascrivi paintComponent',
        'Crea classe estendendo JComponent, sovrascrivi paintComponent(), chiama super.paintComponent(g), disegna stringa via drawString()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (442, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 2: Usare Graphics2D per Grafica Migliorata</h2>
<p class="intro">Graphics2D fornisce capacità migliorate. Antialiasing, gradienti, trasformazioni, forme migliorate. Senza Graphics2D, grafica sarà base.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>Graphics2D</code> — grafica migliorata</li>
  <li>Convertire Graphics a Graphics2D</li>
  <li>Usare capacità migliorate</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Graphics2D è necessario per creare grafica migliorata con capacità aggiuntive.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Converti Graphics a Graphics2D: <code>Graphics2D g2d = (Graphics2D) g;</code></li>
  <li>Abilita antialiasing: <code>g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> Graphics2D per grafica migliorata</li>
  <li><strong>✅ Ottimo:</strong> Abilitare antialiasing per linee smooth, usare per gradienti, usare per trasformazioni</li>
  <li><strong>⚠️ Evita:</strong> Usare Graphics invece di Graphics2D</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Grafica sarà migliorata. Linee saranno smooth, gradienti belli.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (442, 'it', 'Rendering Personalizzato Maestro: Usa Graphics2D',
        'Sovrascrivi paintComponent(), converti Graphics a Graphics2D, abilita antialiasing via setRenderingHint()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (443, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 3: Disegnare Forme con Graphics2D</h2>
<p class="intro">Le forme sono base di grafica. Puoi disegnare rettangoli, ovali, linee, creare immagini complesse. Senza forme, non puoi creare grafica.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodi <code>drawRect()</code>, <code>fillRect()</code> — rettangoli</li>
  <li>Metodi <code>drawOval()</code>, <code>fillOval()</code> — ovali</li>
  <li>Metodo <code>drawLine()</code> — linee</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Disegnare forme è necessario per creare grafica.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Disegna rettangolo: <code>g2d.drawRect(10, 10, 100, 50);</code></li>
  <li>O riempito: <code>g2d.fillRect(10, 10, 100, 50);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>drawRect()</code> per contorno</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>fillRect()</code> per riempito, usare <code>drawOval()</code> e <code>fillOval()</code> per ovali, usare <code>drawLine()</code> per linee</li>
  <li><strong>⚠️ Evita:</strong> Disegnare fuori dai limiti componente</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Forme appariranno su componente. Puoi disegnare rettangoli, ovali, linee.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (443, 'it', 'Rendering Personalizzato Maestro: Disegna Forme',
        'Sovrascrivi paintComponent(), disegna rettangolo riempito via fillRect(10, 10, 100, 50)')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (444, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 4: Usare Colori in Graphics2D</h2>
<p class="intro">I colori rendono grafica vibrante. Puoi impostare colore per disegnare, creare immagini colorate, migliorare aspetto visivo. Senza colori, grafica sarà in bianco e nero.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>setColor(Color)</code> — impostare colore</li>
  <li>Usare colori standard e personalizzati</li>
  <li>Creare grafica colorata</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I colori sono necessari per creare grafica colorata.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Imposta colore: <code>g2d.setColor(Color.RED);</code></li>
  <li>O personalizzato: <code>g2d.setColor(new Color(255, 0, 0));</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>setColor()</code> per impostare</li>
  <li><strong>✅ Ottimo:</strong> Usare colori standard Color.*, usare <code>new Color(r, g, b)</code> per personalizzati, usare per grafica colorata</li>
  <li><strong>⚠️ Evita:</strong> Usare colori troppo brillanti</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Grafica sarà colorata. Puoi usare diversi colori per disegnare.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (444, 'it', 'Rendering Personalizzato Maestro: Usa Colori',
        'Sovrascrivi paintComponent(), imposta colore Color.RED via setColor(), disegna rettangolo')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (445, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 5: Usare Gradienti in Graphics2D</h2>
<p class="intro">I gradienti creano transizioni smooth. Puoi creare bel gradiente da un colore a altro, migliorare aspetto visivo. Senza gradienti, transizioni saranno brusche.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Classe <code>GradientPaint</code> — gradiente</li>
  <li>Metodo <code>setPaint(Paint)</code> — impostare gradiente</li>
  <li>Creare transizioni smooth</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>I gradienti sono necessari per creare transizioni smooth di colori.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Crea gradiente: <code>GradientPaint gradient = new GradientPaint(0, 0, Color.RED, 100, 0, Color.BLUE);</code></li>
  <li>Imposta gradiente: <code>g2d.setPaint(gradient);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> GradientPaint per creare</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>setPaint()</code> per impostare, usare per transizioni smooth, migliorare aspetto visivo</li>
  <li><strong>⚠️ Evita:</strong> Usare colori troppo contrastanti</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Grafica avrà gradiente. Puoi creare transizione smooth da un colore a altro.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (445, 'it', 'Rendering Personalizzato Maestro: Usa Gradienti',
        'Sovrascrivi paintComponent(), crea gradiente new GradientPaint(0, 0, Color.RED, 100, 0, Color.BLUE), imposta via setPaint(), disegna rettangolo')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (446, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 6: Disegnare Immagini con Graphics2D</h2>
<p class="intro">Le immagini rendono grafica più ricca. Puoi mostrare immagini, icone, foto, creare interfacce visivamente attraenti. Senza immagini, grafica sarà solo vettoriale.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>drawImage(Image, int, int, ImageObserver)</code> — disegnare immagine</li>
  <li>Caricare immagini</li>
  <li>Mostrare immagini su componente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Le immagini sono necessarie per creare interfacce visivamente attraenti.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Carica immagine: <code>Image image = Toolkit.getDefaultToolkit().getImage("image.png");</code></li>
  <li>Disegna immagine: <code>g2d.drawImage(image, 10, 10, this);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>drawImage()</code> per disegnare</li>
  <li><strong>✅ Ottimo:</strong> Usare ImageIO.read() per caricare, usare per mostrare immagini, scalare immagini</li>
  <li><strong>⚠️ Evita:</strong> Usare immagini troppo grandi</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Immagine apparirà su componente. Puoi mostrare immagini, icone, foto.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (446, 'it', 'Rendering Personalizzato Maestro: Disegna Immagini',
        'Sovrascrivi paintComponent(), carica immagine via ImageIO.read(), disegna via drawImage()')
ON CONFLICT (task_id, language_code) DO NOTHING;

INSERT INTO documentation_translation (documentation_id, language_code, text)
VALUES (447, 'it', '<div class="lesson-header">
<h2>🎮 Lezione 7: Aggiornare Rendering con repaint()</h2>
<p class="intro">Aggiornare rendering è necessario per animazioni. Puoi aggiornare componente dopo cambio, creare animazioni, aggiornare grafica. Senza aggiornamento, cambiamenti non saranno visibili.</p>
</div>

<section class="learning-objectives">
<h3>📚 Imparando:</h3>
<ul>
  <li>Metodo <code>repaint()</code> — aggiornare rendering</li>
  <li>Metodo <code>repaint(int, int, int, int)</code> — aggiornare area</li>
  <li>Gestire aggiornamento componente</li>
</ul>
</section>

<section class="importance">
<h3>💎 Perché è necessario:</h3>
<p>Aggiornare rendering è necessario per mostrare cambiamenti e creare animazioni.</p>
</section>

<section class="implementation">
<h3>⚔️ Implementazione:</h3>
<ol>
  <li>Aggiorna componente intero: <code>component.repaint();</code></li>
  <li>O area: <code>component.repaint(x, y, width, height);</code></li>
</ol>
</section>

<section class="best-practices">
<h3>💡 Raccomandazioni:</h3>
<ul>
  <li><strong>✅ Usa:</strong> <code>repaint()</code> per aggiornare</li>
  <li><strong>✅ Ottimo:</strong> Usare <code>repaint(x, y, w, h)</code> per area, usare per animazioni, aggiornare dopo cambiamenti</li>
  <li><strong>⚠️ Evita:</strong> Chiamare troppo spesso — può essere lento</li>
</ul>
</section>

<section class="result">
<h3>👀 Risultato:</h3>
<p>Componente si aggiornerà. Puoi creare animazioni, aggiornare grafica.</p>
</section>')
ON CONFLICT (documentation_id, language_code) DO NOTHING;

INSERT INTO task_translation (task_id, language_code, title, question)
VALUES (447, 'it', 'Rendering Personalizzato Maestro: Aggiorna Rendering',
        'Crea componente con paintComponent(), chiama repaint() per aggiornare')
ON CONFLICT (task_id, language_code) DO NOTHING;
