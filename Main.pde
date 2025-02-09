Camp campo;
ArrayList<Nemico> nemici = new ArrayList<Nemico>();
int ultimoSpawn = 0;  
int intervalloSpawn = 2000;  

void setup() {
    size(650, 650);
    campo = new Camp();
}

void draw() {
    background(255); 
    campo.draw();    

    
    if (millis() - ultimoSpawn > intervalloSpawn) {
        Nemico nemico = new NemicoGrande(campo);  
        nemici.add(nemico);
        ultimoSpawn = millis();  
    }

  
    for (Nemico nemico : nemici) {
        nemico.move();
        nemico.draw();
    }
}