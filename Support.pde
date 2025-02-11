public class Support extends Torre {

    ArrayList<Cella> celleDelCampo;
    Cella cella;

    public Support(float x, float y, float raggio, int danno, int velocitaAttaco, ArrayList<Cella> celleDelCampo, Cella cella) {
        super(x, y, raggio, danno, velocitaAttaco);
        this.celleDelCampo = celleDelCampo;
        this.cella = cella;
        super.puoAttacare = false; 
    }

    public void Potenziamento() {
        
        Cella[] celleVicine = new Cella[4];
        int index = celleDelCampo.indexOf(cella);

        if (index != -1) {
            if (index > 0){
                 celleVicine[0] = celleDelCampo.get(index - 1);
                 } // Cella a sinistra
            if (index < celleDelCampo.size() - 1){ 
                celleVicine[1] = celleDelCampo.get(index + 1);
                } // Cella a destra
            if (index >= width / 50){ 
                celleVicine[2] = celleDelCampo.get(index - width / 50);
                } // Cella sopra
            if (index < celleDelCampo.size() - width / 50){ 
            elleVicine[3] = celleDelCampo.get(index + width / 50); 
            }// Cella sotto
        }

       
        for (Cella vicina : celleVicine) {
            if (vicina != null && vicina.hasTorre() && vicina.getTorre().puoAttacare) {
                vicina.getTorre().setVelocitaAttaco(vicina.getTorre().getVelocitaAttaco() / 2);
            }
        }
    }

    public void draw() {
        fill(200, 100, 200); 
        ellipse(x, y, 30, 30); 
        noFill();
        stroke(200, 100, 200, 50); 
        ellipse(x, y, raggio * 2, raggio * 2); 
    }

   
    public void aggiorna() {
        Potenziamento(); 
    }
}