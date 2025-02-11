public class Soldato extends Torre implements Attaca {

    public Soldato(float x, float y, float raggio, int danno, int velocitaAttaco) {
        super(x, y, raggio, danno, velocitaAttaco);
        super.puoAttacare = true; 
    }

    @Override
    public void draw() {
        fill(100, 255, 100); 
        ellipse(x, y, 30, 30);
        noFill();
        stroke(200, 200, 0, 50); // D
        ellipse(x, y, raggio * 2, raggio * 2); 
    }

    @Override
    public void aggiorna() {
        if (millis() - ultimoDanno > velocitaAttaco) {
            for (Nemico n : nemici) {
                if (dist(n.getX(), n.getY(), x, y) < raggio) {
                    n.setVita(n.getVita() - danno); 
                }
            }
            ultimoDanno = millis(); 
        }
    }
}