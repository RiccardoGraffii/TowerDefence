public class Cella {
    int h;  // Altezza della cella
    int b;  // Larghezza della cella
    int x;  // Posizione x della cella
    int y;  // Posizione y della cella
    boolean isPath;  // Indica se la cella fa parte del percorso

    public Cella() {
        this.x = 0;
        this.y = 0;
        this.b = 50;
        this.h = 50;
        this.isPath = false;
    }

    public Cella(int x, int y, int b, int h) {
        this.x = x;
        this.y = y;
        this.b = b;
        this.h = h;
        this.isPath = false;
    }

    public int getX() {
        return this.x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return this.y;
    }

    public void setY(int y) {
        this.y = y;
    }

    public int getB() {
        return this.b;
    }

    public void setB(int b) {
        this.b = b;
    }

    public int getH() {
        return this.h;
    }

    public void setH(int h) {
        this.h = h;
    }

    public boolean isPath() {
        return this.isPath;
    }

    public void setPath(boolean isPath) {
        this.isPath = isPath;
    }

    public void draw() {
        if (isPath) {
            fill(255, 255, 255);  // Colore per le celle del percorso (bianco)
        } else if (mouseX >= getX() && mouseX <= getX() + getB() && mouseY >= getY() && mouseY <= getY() + getH()) {
            fill(100, 100, 70);  // Colore quando il mouse è sopra la cella
        } else {
            fill(125, 150, 75);  // Colore di default
        }
        noStroke();
        rect(x, y, b, h);
    }
}