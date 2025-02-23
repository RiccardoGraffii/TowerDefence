public class Soldato extends Torre implements Attaca {
    ArrayList<Proiettile> proiettili = new ArrayList<Proiettile>();  

    public Soldato(float x, float y, float raggio, int danno, int velocitaAttaco) {
        super(x, y, raggio, danno, velocitaAttaco);
        super.puoAttacare = true; 
    }

    @Override
    public void draw() {
        fill(100, 255, 100);  
        ellipse(x, y, 30, 30); 
        noFill();
        stroke(200, 200, 0, 50);  
        ellipse(x, y, raggio * 2, raggio * 2);  

        
        for (Proiettile p : proiettili) {
            p.draw();
        }
    }

    @Override
    public void aggiorna() {
        
        for (int i = proiettili.size() - 1; i >= 0; i--) {
            Proiettile p = proiettili.get(i);
            if (p.aggiorna()) {
                proiettili.remove(i);  
        }

        
        if (millis() - ultimoDanno > velocitaAttaco) {
            Nemico bersaglio = trovaBersaglio(); 
            if (bersaglio != null) {
               
                Proiettile proiettile = new Proiettile(x, y, 5, bersaglio, danno);
                proiettili.add(proiettile);
                ultimoDanno = millis();  
            }
        }
    }


    private Nemico trovaBersaglio() {
        Nemico bersaglio = null;
        float distanzaMinima = raggio; 

        for (Nemico n : nemici) {
            float distanza = dist(n.getX(), n.getY(), x, y);
            if (distanza < distanzaMinima) {
                distanzaMinima = distanza;
                bersaglio = n;  
            }
        }

        return bersaglio;  
    }
}
}