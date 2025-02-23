# TowerDefence
introduzione
Il progetto consiste nello sviluppo di un gioco di tipo Tower Defense realizzato in Processing, un linguaggio di programmazione basato su Java. L’obiettivo del gioco è difendere una base da ondate di nemici che cercano di raggiungere la fine di un percorso predefinito. Il giocatore deve posizionare strategicamente delle torri lungo il percorso per fermare i nemici. Se un numero eccessivo di nemici raggiunge la fine del percorso, il gioco termina con una sconfitta. Il progetto è stato sviluppato suddividendo il codice in diversi file, ognuno dei quali gestisce una specifica funzionalità.

Struttura del Codice
Il codice è organizzato in diversi file, ognuno con un ruolo ben definito:

Main.pde: File principale che gestisce il ciclo di gioco, lo spawn dei nemici, l’aggiornamento delle torri e il controllo delle condizioni di vittoria/sconfitta.

Camp.pde: Gestisce la creazione del campo di gioco, composto da una griglia di celle. Alcune celle formano il percorso che i nemici devono seguire.

Cella.pde: Rappresenta una singola cella del campo. Ogni cella può contenere una torre o far parte del percorso.

Nemico.pde, NemicoPiccolo.pde, NemicoMedio.pde, NemicoGrande.pde: Questi file definiscono i nemici. Sono presenti tre tipologie di nemici, ciascuna con caratteristiche diverse in termini di vita, velocità e dimensioni.

Torre.pde, Soldato.pde, Support.pde, TorreAOE.pde: Gestiscono le torri. Le torri possono attaccare i nemici, potenziare altre torri vicine o infliggere danni in un’area.

Proiettile.pde: Definisce i proiettili sparati dalle torri per colpire i nemici. I proiettili sono visibili e si muovono verso il bersaglio.

Funzionamento del Gioco
Il gioco inizia con una griglia di celle, alcune delle quali formano un percorso che i nemici devono seguire. Il giocatore dispone di una quantità iniziale di denaro per acquistare e posizionare torri su celle vuote. Le torri attaccano automaticamente i nemici che entrano nel loro raggio d’azione. I nemici spawnano in modo casuale e seguono il percorso fino alla fine. Se un nemico raggiunge la fine del percorso, il contatore dei nemici raggiunti aumenta. Se questo contatore supera un limite prestabilito, il gioco termina con una sconfitta.

Meccaniche Principali
Spawn dei Nemici: I nemici spawnano a intervalli regolari e appartengono a una delle tre tipologie disponibili: piccolo, medio o grande. Ogni tipologia ha caratteristiche diverse in termini di vita, velocità e dimensioni.

Torri: Il giocatore può posizionare tre tipi di torri:

Torre Soldato: Attacca un singolo nemico alla volta, sparando proiettili visibili.

Torre di Supporto: Potenzia le torri vicine, riducendo il loro tempo di attacco.

Torre AOE: Infligge danni a tutti i nemici nel suo raggio d’azione.

Proiettili: Le torri soldato sparano proiettili che si muovono verso il nemico più vicino. I proiettili sono visibili e scompaiono dopo aver colpito il bersaglio.

Difficoltà Progressiva: La difficoltà aumenta man mano che il gioco procede, con intervalli di spawn dei nemici che si riducono e ondate sempre più impegnative.

Sfide e Soluzioni
Durante lo sviluppo, ho incontrato alcune difficoltà, in particolare nella gestione dei proiettili. Inizialmente, i proiettili non si muovevano correttamente verso i nemici e non scomparivano dopo aver colpito il bersaglio. Per risolvere questo problema, ho creato una classe dedicata (Proiettile.pde) che gestisce il movimento e la collisione dei proiettili. Inoltre, ho ottimizzato il codice per garantire che i proiettili vengano rimossi correttamente dopo aver inflitto danni al bersaglio.

Conclusioni
Il progetto ha rappresentato un’ottima opportunità per approfondire le mie conoscenze di programmazione, in particolare nell’ambito della programmazione a oggetti e della gestione di interazioni complesse tra diversi elementi del gioco. Nonostante alcune difficoltà iniziali, sono riuscito a realizzare un gioco funzionante e bilanciato, con un sistema di difficoltà progressiva e una varietà di nemici e torri.

In futuro, potrei espandere il gioco aggiungendo nuove funzionalità, come:

Nuove tipologie di torri e nemici.

Un sistema di livelli con obiettivi specifici e mappe diverse.

Power-up temporanei per il giocatore.
Ecco L'UML del progetto:

[Uploading Towe<mxfile host="app.diagrams.net" agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36" version="26.0.16">
  <diagram name="Pagina-1" id="4OSP0d4U2DoptkKvzvWI">
    <mxGraphModel dx="712" dy="825" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="827" pageHeight="1169" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="X0tEky27uWJWpGrTgzVk-5" value="Interface: Attacca" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=26;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=1;marginBottom=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="400" y="650" width="160" height="64" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-7" value="" style="line;strokeWidth=1;fillColor=none;align=left;verticalAlign=middle;spacingTop=-1;spacingLeft=3;spacingRight=3;rotatable=0;labelPosition=right;points=[];portConstraint=eastwest;strokeColor=inherit;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-5">
          <mxGeometry y="26" width="160" height="8" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-8" value="+ aggiorna(void)" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-5">
          <mxGeometry y="34" width="160" height="30" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-22" value="Camp" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=26;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=1;marginBottom=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="220" y="20" width="230" height="230" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-23" value="- celleDelCampo: ArrayList&amp;lt;Cella&amp;gt;&lt;div&gt;- percorso: ArrayList&lt;span style=&quot;background-color: transparent; color: light-dark(rgb(0, 0, 0), rgb(255, 255, 255));&quot;&gt;&amp;lt;Cella&amp;gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;background-color: transparent; color: light-dark(rgb(0, 0, 0), rgb(255, 255, 255));&quot;&gt;- b: int&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;background-color: transparent; color: light-dark(rgb(0, 0, 0), rgb(255, 255, 255));&quot;&gt;- h: int&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;background-color: transparent; color: light-dark(rgb(0, 0, 0), rgb(255, 255, 255));&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-22">
          <mxGeometry y="26" width="230" height="74" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-24" value="" style="line;strokeWidth=1;fillColor=none;align=left;verticalAlign=middle;spacingTop=-1;spacingLeft=3;spacingRight=3;rotatable=0;labelPosition=right;points=[];portConstraint=eastwest;strokeColor=inherit;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-22">
          <mxGeometry y="100" width="230" height="20" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-25" value="+ Camp()&lt;div&gt;+ riempimentoDelCampo(void)&lt;/div&gt;&lt;div&gt;+draw(void)&lt;/div&gt;" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-22">
          <mxGeometry y="120" width="230" height="110" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-26" value="Main" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=26;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=1;marginBottom=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="20" y="260" width="230" height="330" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-27" value="- campo: Camp&lt;div&gt;- nemici: ArrayList&amp;lt;Nemico&amp;gt;&lt;/div&gt;&lt;div&gt;- torri: ArrayList&amp;lt;Torre&amp;gt;&lt;/div&gt;&lt;div&gt;- ultimoSpawn: int&lt;/div&gt;&lt;div&gt;- intervalloSpawn: int&lt;/div&gt;&lt;div&gt;- denaro: int&lt;/div&gt;&lt;div&gt;- ondata: int&lt;/div&gt;&lt;div&gt;- nemiciRaggiuntiFine: int&lt;/div&gt;&lt;div&gt;- limiteNemiciPerSconfitta: int&lt;/div&gt;&lt;div&gt;- gameOver: boolean&lt;/div&gt;" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-26">
          <mxGeometry y="26" width="230" height="194" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-28" value="" style="line;strokeWidth=1;fillColor=none;align=left;verticalAlign=middle;spacingTop=-1;spacingLeft=3;spacingRight=3;rotatable=0;labelPosition=right;points=[];portConstraint=eastwest;strokeColor=inherit;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-26">
          <mxGeometry y="220" width="230" height="8" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-29" value="+ setup():void&lt;div&gt;+ draw(): void&lt;/div&gt;&lt;div&gt;+ mousePressed(): void&lt;/div&gt;" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-26">
          <mxGeometry y="228" width="230" height="102" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-34" value="Cella" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=26;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=1;marginBottom=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="510" y="20" width="160" height="230" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-35" value="- h: int&lt;div&gt;- b: int&amp;nbsp;&lt;/div&gt;&lt;div&gt;- x: int&amp;nbsp;&lt;/div&gt;&lt;div&gt;- y: int&lt;/div&gt;&lt;div&gt;- isPath: boolean&lt;/div&gt;&lt;div&gt;- torre: Torre&lt;/div&gt;&lt;div&gt;-hasTorre: boolean&lt;/div&gt;" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-34">
          <mxGeometry y="26" width="160" height="124" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-36" value="" style="line;strokeWidth=1;fillColor=none;align=left;verticalAlign=middle;spacingTop=-1;spacingLeft=3;spacingRight=3;rotatable=0;labelPosition=right;points=[];portConstraint=eastwest;strokeColor=inherit;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-34">
          <mxGeometry y="150" width="160" height="8" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-37" value="+ draw(): void&lt;div&gt;+ equals(Object): boolean&lt;/div&gt;" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-34">
          <mxGeometry y="158" width="160" height="72" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-38" value="NemicoGrande" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=26;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=1;marginBottom=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="520" y="520" width="160" height="60" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-39" value="+ velocita: float" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-38">
          <mxGeometry y="26" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-40" value="" style="line;strokeWidth=1;fillColor=none;align=left;verticalAlign=middle;spacingTop=-1;spacingLeft=3;spacingRight=3;rotatable=0;labelPosition=right;points=[];portConstraint=eastwest;strokeColor=inherit;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-38">
          <mxGeometry y="52" width="160" height="8" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-42" value="Proiettile" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=26;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=1;marginBottom=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry y="650" width="160" height="220" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-43" value="+ x: float&lt;div&gt;+ y: float&lt;/div&gt;&lt;div&gt;+ velocita: float&lt;/div&gt;&lt;div&gt;+ bersaglio: Nemico&lt;/div&gt;&lt;div&gt;+ danno: int&lt;/div&gt;" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-42">
          <mxGeometry y="26" width="160" height="84" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-44" value="" style="line;strokeWidth=1;fillColor=none;align=left;verticalAlign=middle;spacingTop=-1;spacingLeft=3;spacingRight=3;rotatable=0;labelPosition=right;points=[];portConstraint=eastwest;strokeColor=inherit;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-42">
          <mxGeometry y="110" width="160" height="8" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-45" value="+ aggiorna(): boolean&lt;div&gt;+ draw(): void&lt;/div&gt;" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-42">
          <mxGeometry y="118" width="160" height="102" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-50" value="Abstract Torre" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=26;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=1;marginBottom=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="200" y="650" width="160" height="230" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-51" value="- x: int&lt;div&gt;- y: int&lt;/div&gt;&lt;div&gt;- raggio: float&lt;/div&gt;&lt;div&gt;- danno: int&lt;/div&gt;&lt;div&gt;- ultimoDanno: int&lt;/div&gt;&lt;div&gt;- costo: int&lt;/div&gt;&lt;div&gt;- veloctaDanno: int&amp;nbsp;&lt;/div&gt;&lt;div&gt;- puoAttaccare: boolean&lt;/div&gt;" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-50">
          <mxGeometry y="26" width="160" height="134" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-52" value="" style="line;strokeWidth=1;fillColor=none;align=left;verticalAlign=middle;spacingTop=-1;spacingLeft=3;spacingRight=3;rotatable=0;labelPosition=right;points=[];portConstraint=eastwest;strokeColor=inherit;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-50">
          <mxGeometry y="160" width="160" height="8" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-53" value="+ draw(): void&lt;div&gt;+ aggiorna(): void&lt;/div&gt;" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-50">
          <mxGeometry y="168" width="160" height="62" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-70" value="Abstract Nemico" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=26;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=1;marginBottom=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="316" y="260" width="160" height="230" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-71" value="- h: int&lt;div&gt;- b: int&amp;nbsp;&lt;/div&gt;&lt;div&gt;- x: int&amp;nbsp;&lt;/div&gt;&lt;div&gt;- y: int&lt;/div&gt;&lt;div&gt;- vita: int&lt;/div&gt;&lt;div&gt;- campo: Camp&lt;/div&gt;" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-70">
          <mxGeometry y="26" width="160" height="124" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-72" value="" style="line;strokeWidth=1;fillColor=none;align=left;verticalAlign=middle;spacingTop=-1;spacingLeft=3;spacingRight=3;rotatable=0;labelPosition=right;points=[];portConstraint=eastwest;strokeColor=inherit;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-70">
          <mxGeometry y="150" width="160" height="8" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-73" value="+ draw(): void&lt;div&gt;+ move(): void&lt;/div&gt;" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-70">
          <mxGeometry y="158" width="160" height="72" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-79" value="NemicoMedio" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=26;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=1;marginBottom=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="330" y="520" width="160" height="60" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-80" value="+ velocita: float" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-79">
          <mxGeometry y="26" width="160" height="26" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-81" value="" style="line;strokeWidth=1;fillColor=none;align=left;verticalAlign=middle;spacingTop=-1;spacingLeft=3;spacingRight=3;rotatable=0;labelPosition=right;points=[];portConstraint=eastwest;strokeColor=inherit;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-79">
          <mxGeometry y="52" width="160" height="8" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-87" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0.5;entryY=0;entryDx=0;entryDy=0;" edge="1" parent="1" source="X0tEky27uWJWpGrTgzVk-73" target="X0tEky27uWJWpGrTgzVk-38">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-88" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=1;entryY=0.5;entryDx=0;entryDy=0;" edge="1" parent="1" source="X0tEky27uWJWpGrTgzVk-73" target="X0tEky27uWJWpGrTgzVk-79">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="500" y="454" />
              <mxPoint x="500" y="550" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-89" value="NemicoPicolo" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=26;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=1;marginBottom=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="710" y="520" width="160" height="78" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-90" value="+ velocita: float&lt;div&gt;+ staCurvando: boolean&lt;/div&gt;" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-89">
          <mxGeometry y="26" width="160" height="44" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-91" value="" style="line;strokeWidth=1;fillColor=none;align=left;verticalAlign=middle;spacingTop=-1;spacingLeft=3;spacingRight=3;rotatable=0;labelPosition=right;points=[];portConstraint=eastwest;strokeColor=inherit;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-89">
          <mxGeometry y="70" width="160" height="8" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-92" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0.25;entryY=0;entryDx=0;entryDy=0;" edge="1" parent="1" source="X0tEky27uWJWpGrTgzVk-73" target="X0tEky27uWJWpGrTgzVk-89">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-93" value="Soldato" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=26;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=1;marginBottom=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="80" y="960" width="260" height="110" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-94" value="&lt;div&gt;- proiettili: ArrayList&amp;lt;Proiettile&amp;gt;&lt;/div&gt;" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-93">
          <mxGeometry y="26" width="260" height="34" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-95" value="" style="line;strokeWidth=1;fillColor=none;align=left;verticalAlign=middle;spacingTop=-1;spacingLeft=3;spacingRight=3;rotatable=0;labelPosition=right;points=[];portConstraint=eastwest;strokeColor=inherit;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-93">
          <mxGeometry y="60" width="260" height="8" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-96" value="+ trovaBersaglio(): Nemico" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-93">
          <mxGeometry y="68" width="260" height="42" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-97" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0.688;entryY=-0.047;entryDx=0;entryDy=0;entryPerimeter=0;dashed=1;dashPattern=8 8;" edge="1" parent="1" source="X0tEky27uWJWpGrTgzVk-8" target="X0tEky27uWJWpGrTgzVk-93">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="480" y="900" />
              <mxPoint x="259" y="900" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-99" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0.35;entryY=-0.015;entryDx=0;entryDy=0;entryPerimeter=0;" edge="1" parent="1" source="X0tEky27uWJWpGrTgzVk-51" target="X0tEky27uWJWpGrTgzVk-93">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-100" value="TorreAOE" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=26;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=1;marginBottom=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="360" y="960" width="260" height="34" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-102" value="" style="line;strokeWidth=1;fillColor=none;align=left;verticalAlign=middle;spacingTop=-1;spacingLeft=3;spacingRight=3;rotatable=0;labelPosition=right;points=[];portConstraint=eastwest;strokeColor=inherit;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-100">
          <mxGeometry y="26" width="260" height="8" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-104" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0.5;entryY=0;entryDx=0;entryDy=0;dashed=1;dashPattern=12 12;" edge="1" parent="1" source="X0tEky27uWJWpGrTgzVk-8" target="X0tEky27uWJWpGrTgzVk-100">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="490" y="780" />
              <mxPoint x="490" y="780" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-105" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=1;exitY=0.5;exitDx=0;exitDy=0;entryX=0.104;entryY=0.018;entryDx=0;entryDy=0;entryPerimeter=0;" edge="1" parent="1" source="X0tEky27uWJWpGrTgzVk-51" target="X0tEky27uWJWpGrTgzVk-100">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="390" y="743" />
              <mxPoint x="390" y="962" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-107" value="Support" style="swimlane;fontStyle=1;align=center;verticalAlign=top;childLayout=stackLayout;horizontal=1;startSize=26;horizontalStack=0;resizeParent=1;resizeParentMax=0;resizeLast=0;collapsible=1;marginBottom=0;whiteSpace=wrap;html=1;" vertex="1" parent="1">
          <mxGeometry x="650" y="960" width="260" height="150" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-108" value="&lt;div&gt;- celleDelCampo: ArrayList&amp;lt;Cella&amp;gt;&lt;/div&gt;" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-107">
          <mxGeometry y="26" width="260" height="34" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-109" value="" style="line;strokeWidth=1;fillColor=none;align=left;verticalAlign=middle;spacingTop=-1;spacingLeft=3;spacingRight=3;rotatable=0;labelPosition=right;points=[];portConstraint=eastwest;strokeColor=inherit;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-107">
          <mxGeometry y="60" width="260" height="8" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-110" value="+ Potenziamento(): Void&lt;div&gt;+ draw(): Void&lt;/div&gt;&lt;div&gt;+ aggiorna(): void&lt;/div&gt;" style="text;strokeColor=none;fillColor=none;align=left;verticalAlign=top;spacingLeft=4;spacingRight=4;overflow=hidden;rotatable=0;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;whiteSpace=wrap;html=1;" vertex="1" parent="X0tEky27uWJWpGrTgzVk-107">
          <mxGeometry y="68" width="260" height="82" as="geometry" />
        </mxCell>
        <mxCell id="X0tEky27uWJWpGrTgzVk-111" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0.25;entryY=0;entryDx=0;entryDy=0;" edge="1" parent="1" source="X0tEky27uWJWpGrTgzVk-53" target="X0tEky27uWJWpGrTgzVk-107">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
rDefenceUML.drawio…]()

