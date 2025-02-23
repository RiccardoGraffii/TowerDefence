Camp campo;
ArrayList<Nemico> nemici = new ArrayList<Nemico>();
ArrayList<Torre> torri = new ArrayList<Torre>();
int ultimoSpawn = 0;  
int intervalloSpawn = 2000;  
int denaro = 100; 
int ondata = 1;
int nemiciRaggiuntiFine = 0;  
int limiteNemiciPerSconfitta = 10;  
boolean gameOver = false; 

void setup() {
    size(650, 650);
    campo = new Camp();
}

void draw() {
    if (gameOver) {
        background(0);
        fill(255, 0, 0);
        textSize(50);
        text("GAME OVER", width/2 - 120, height/2);
        return;  
    }

    background(255); 
    campo.draw();    

    
    fill(0);
    textSize(20);
    text("Denaro: " + denaro, 10, 30);
    text("Ondata: " + ondata, 10, 60);
    text("Nemici raggiunti: " + nemiciRaggiuntiFine + "/" + limiteNemiciPerSconfitta, 10, 90);

    if (millis() - ultimoSpawn > intervalloSpawn) {
        int tipoNemico = (int) random(0, 3);  
        Nemico nemico;
        if (tipoNemico == 0) {
            nemico = new NemicoPiccolo(campo);
        } else if (tipoNemico == 1) {
            nemico = new NemicoMedio(campo);  
        } else {
            nemico = new NemicoGrande(campo);
        }
        nemici.add(nemico);
        ultimoSpawn = millis();  
    }

    for(Torre t : torri) {
        t.aggiorna();
        t.draw();
    }

    for (int i = nemici.size() - 1; i >= 0; i--) {
        Nemico nemico = nemici.get(i);
        nemico.move();
        nemico.draw();

        
        if (nemico.getX() >= 650) {
            nemiciRaggiuntiFine++;
            nemici.remove(i);
            if (nemiciRaggiuntiFine >= limiteNemiciPerSconfitta) {
                gameOver = true;  
            }
        }

        
        if (nemico.getVita() <= 0) {
            denaro += 10;  
            nemici.remove(i);
        }
    }

   
    if (nemici.size() == 0) {
        ondata++;
        intervalloSpawn = max(500, intervalloSpawn - 100);  
    }
}

void mousePressed() {
    if (gameOver) return;  

    for (Cella c : campo.getCelleDelCampo()) {
        if (!c.isPath()){
            if (mouseX > c.getX() && mouseX < c.getX() + c.getB() && mouseY > c.getY() && mouseY < c.getY() + c.getH()) {
                if (keyPressed && key == '2') {
                    if (denaro >= 50) {  
                        Support support = new Support(c.getX() + c.getB() / 2, c.getY() + c.getH() / 2, 80, 0, 0, campo.getCelleDelCampo(), c);
                        torri.add(support);
                        c.setTorre(support);
                        denaro -= 50;
                    }
                } else if (keyPressed && key == '3') {
                    if (denaro >= 70) {  
                        TorreAOE torreAOE = new TorreAOE(c.getX() + c.getB() / 2, c.getY() + c.getH() / 2, 100, 10, 2000);
                        torri.add(torreAOE);
                        c.setTorre(torreAOE);
                        denaro -= 70;
                    }
                } else {
                    if (denaro >= 30) {  
                        Soldato soldato = new Soldato(c.getX() + c.getB() / 2, c.getY() + c.getH() / 2, 80, 5, 1000);
                        torri.add(soldato);
                        c.setTorre(soldato);
                        denaro -= 30;
                    }
                }
                break;
            }
        }
    }
}