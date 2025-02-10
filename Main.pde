Camp campo;
ArrayList<Nemico> nemici = new ArrayList<Nemico>();
ArrayList<Torre> torri = new ArrayList<Torre>();
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
        Nemico nemico = new NemicoPiccolo(campo);  
        nemici.add(nemico);
        ultimoSpawn = millis();  
    }

    for(Torre t : torri) {
        t.aggiorna();
        t.draw();
    }

    for (Nemico nemico : nemici) {
        nemico.move();
        nemico.draw();

    }
}

void mousePressed() {
   
    for(Cella c : campo.getCelleDelCampo()) {
        if(c.isPath()){;
        
        if(mouseX > c.getX() && mouseX < c.getX()+c.getB() &&
           mouseY > c.getY() && mouseY < c.getY()+c.getH()) {
            torri.add(new Torre(c.getX() + c.getB()/2, c.getY() + c.getH()/2, 80, 5      
            ));
            break;
        }
    }
}
}