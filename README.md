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



![immagine_UML](https://github.com/user-attachments/assets/f7385ac9-052a-430f-9816-ccc878a86bd1)
