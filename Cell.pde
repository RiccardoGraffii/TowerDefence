public class Cella {
    int h;  
    int b;  
    int x; 
    int y; 
    boolean isPath; 
    Torre torre;
    boolean hasTorre;


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
        this.hasTorre = false;
    }

    public boolean hasTorre() {
        return hasTorre;
    }

    public Torre getTorre() {
        return this.torre;
    }

    public void setTorre(Torre torre) {
        this.torre = torre;
        this.hasTorre = true;
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
            fill(255, 255, 255); 
        } else if (mouseX >= getX() && mouseX <= getX() + getB() && mouseY >= getY() && mouseY <= getY() + getH()) {
            fill(100, 100, 70);  
        } else {
            fill(125, 150, 75);  
        }
        noStroke();
        rect(x, y, b, h);
    }

    public boolean equals(Object obj) {

        Cella cella = (Cella) obj;
        return getX() == cella.getX() && getY() == cella.getY() && getB() == cella.getB() && getH() == cella.getH();
              
    }



}