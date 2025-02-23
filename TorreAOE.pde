public class TorreAOE extends Torre implements Attaca {
    public TorreAOE(float x, float y, float raggio, int danno, int velocitaAttaco) {
        super(x, y, raggio, danno, velocitaAttaco);
        super.puoAttacare = true;
    }

    @Override
    public void draw() {
        fill(255, 100, 100);  // Colore rosso
        ellipse(x, y, 30, 30);
        noFill();
        stroke(255, 100, 100, 50);  // Colore rosso trasparente
        ellipse(x, y, raggio * 2, raggio * 2);
    }

    @Override
    public void aggiorna() {
        if (millis() - ultimoDanno > velocitaAttaco) {
            for (Nemico n : nemici) {
                if (dist(n.getX(), n.getY(), x, y) < raggio) {
                    n.setVita(n.getVita() - danno);  // Danno a tutti i nemici nel raggio
                }
            }
            ultimoDanno = millis();
        }
    }
}