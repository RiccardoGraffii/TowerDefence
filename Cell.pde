public class Cella {

    int h;  
    int b;  
    int x;   
    int y;  

    public Cella() {
        this.x = 0;
        this.y = 0;
        this.b = 50;
        this.h = 50;
    }

    public Cella(int x, int y, int b, int h) {
        this.x = x;
        this.y = y;
        this.b = b;
        this.h = h;
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

    public void draw() {
        if (mouseX >= getX() && mouseX <= getX() + getB() && mouseY >= getY() && mouseY <= getY() + getH()) {
            fill(125, 150, 75);  
        } else {
            fill(100, 100, 70); 
        }
        rect(x, y, b, h);
    }
}