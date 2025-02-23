public class Proiettile {
    float x, y;  
    float velocita;  
    Nemico bersaglio; 
    int danno;  

    public Proiettile(float x, float y, float velocita, Nemico bersaglio, int danno) {
        this.x = x;
        this.y = y;
        this.velocita = velocita;
        this.bersaglio = bersaglio;
        this.danno = danno;
    }

   
    public boolean aggiorna() {
        if (bersaglio == null || bersaglio.getVita() <= 0) {
            return true; 
        }

        
        float dx = bersaglio.getX() - x;
        float dy = bersaglio.getY() - y;
        float distanza = sqrt(dx * dx + dy * dy);

    
        dx /= distanza;
        dy /= distanza;

        
        x += dx * velocita;
        y += dy * velocita;

      
        if (distanza < 5) {
            bersaglio.setVita(bersaglio.getVita() - danno); 
            return true;  
        }

        return false; 
    }

    
    public void draw() {
        fill(255, 0, 0); 
        ellipse(x, y, 5, 5);  
    }
}