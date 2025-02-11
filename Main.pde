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
    for (Cella c : campo.getCelleDelCampo()) {
        if (!c.isPath()){
            if (mouseX > c.getX() && mouseX < c.getX() + c.getB() && mouseY > c.getY() && mouseY < c.getY() + c.getH()) {
                if (keyPressed && key == '2') {
                    Support support = new Support(c.getX() + c.getB() / 2, c.getY() + c.getH() / 2, 80, 0, 0, campo.getCelleDelCampo(), c);
                    torri.add(support);
                    c.setTorre(support);
                } else {
                    Soldato soldato = new Soldato(c.getX() + c.getB() / 2, c.getY() + c.getH() / 2, 80, 5, 1000);
                    torri.add(soldato);
                    c.setTorre(soldato);
                }
                break;
            }
        }
    }
}