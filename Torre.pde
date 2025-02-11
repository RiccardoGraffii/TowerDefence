public abstract class Torre {
    float x, y;
    float raggio;
    int danno;
    int ultimoDanno;
    int costo;
    int velocitaAttaco;
    boolean puoAttacare;

    public Torre(float x, float y, float raggio, int danno, int velocitaAttaco) {
        this.x = x;
        this.y = y;
        this.raggio = raggio;
        this.danno = danno;
        this.ultimoDanno = millis();
        this.velocitaAttaco = velocitaAttaco;
        this.puoAttacare = false; 
    }

    public float getX() {
        return this.x;
    }

    public float getY() {
        return this.y;
    }

    public int getDanno() {
        return this.danno;
    }

    public int getUltimoDanno() {
        return this.ultimoDanno;
    }

    public int getCosto() {
        return this.costo;
    }

    public int getVelocitaAttaco() {
        return this.velocitaAttaco;
    }

    public void setY(float y) {
        this.y = y;
    }

    public void setX(float x) {
        this.x = x;
    }

    public void setDanno(int danno) {
        this.danno = danno;
    }

    public void setUltimoDanno(int ultimoDanno) {
        this.ultimoDanno = ultimoDanno;
    }

    public void setCosto(int costo) {
        this.costo = costo;
    }

    public void setVelocitaAttaco(int velocitaAttaco) {
        this.velocitaAttaco = velocitaAttaco;
    }

    public boolean puoAttacare() {
        return this.puoAttacare;
    }

    public abstract void draw();
    public abstract void aggiorna();
}