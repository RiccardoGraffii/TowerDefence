# TowerDefence

## Introduzione:
Il progetto prevede la creazione di un gioco del genere Tower Defense in Processing, un linguaggio di programmazione basato su Java. Il fine del gioco è quello di proteggere una base dalle ondate di nemici che si sforzano di raggiungere il punto di fine di un percorso già prefissato. Il giocatore dovrà dover posizionare torri in maniera strategica lungo il percorso per fermare i nemici. Se un numero eccessivo di nemici raggiunge la fine del percorso, il gioco termina con una sconfitta. Il progetto è stato sviluppato suddividendo il codice in diversi file, ognuno dei quali gestisce una specifica funzionalità; Ognuno delle quali gestisce meccaniche fondamentali per il gioco, come ad esempio Torre.pde serve ad dare una prima forma abbozzata delle torri, che poi rimodellate con una migliore precisione tramite il polimorfismo.

## Gameplay del Gioco
Il gioco inizia con una tabella di celle, alcune delle quali definiscono un percorso che i nemici devono seguire. Il giocatore dispone di un ammontare iniziale di soldi, che deve spendere su torri da disporre sulle celle disponibili. Le torri attaccano i nemici casuale che cadono nel loro raggio di attacco. Lo spawn dei nemici è casuale e seguono il percorso fino a fine percorso. Se un nemico raggiunge la fine del percorso, il contatore dei nemici raggiunti aumenta. Se questo contatore supera un limite prestabilito, il gioco termina con una sconfitta.
Utilizzo del Polimorfismo
Il polimorfismo in questo codice è una parte fondamentale indiscutibilmente senza essa il mio codice sarebbe molto più ripetitivo e con una minore leggibilità sono state utili anche le classi astratte, utilizzate per Nemico.pde e Torre.pde, e le interfacce utilizzate implementare l’attacco nelle torre o meno.

## Sfide e Soluzioni Durante lo sviluppo
Ho incontrato alcune sfide, in particolare per quanto riguarda la gestione dei proiettili. Dopo aver speso diverse ore per capire come fare in modo che i proiettili inseguano e colpiscano il bersaglio mi sono affidato ad internet è insieme ad delle intelligenze artificiali o modellato e capito il codice che adesso troviamo all’interno del codice.
Per fare una breve spiegazione il codice è un oggetto normalissimo la situazione si complica nella funzione aggiorna infatti in questa parte di codice troviamo il metodo con cui i proiettili scelgono il bersaglio e la sua traiettoria, questo viene calcolato tramite la formula di pitagora della differenza tra la coordinate X e Y del bersaglio e la coordinate X e Y del proiettile.
Un altro problema è stato stampare il percorso ma dopo un vari tentativi ho trovato la seguente soluzione ossia aggiungere una variabile booleana che diceva se face parte del percorso o meno e nel caso lo fosse allora veniva colorata di bianco.

Conclusioni Il progetto è stata un'ottima opportunità per approfondire le mie conoscenze di programmazione, in particolare nel contesto di programmazione a oggetti. 

Ecco L'UML del progetto:



![immagine_UML](https://github.com/user-attachments/assets/f7385ac9-052a-430f-9816-ccc878a86bd1)
