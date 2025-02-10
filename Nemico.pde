public abstract class Nemico {
    int vita;
    Camp campo; 
    float x;
    float y;
    float b;
    float h;       

    public Nemico(Camp campo, int vita) {
        this.campo = campo;
        this.vita = vita;
    }
   
    public float getX() {
        return this.x;
    }

    public void setX(float x) {
        this.x = x;
    }

    public float getY() {
        return this.y;
    }

    public void setY(float y) {
        this.y = y;
    }

    public float getB() {
        return this.b;
    }

    public void setB(float b) {
        this.b = b;
    }

    public float getH() {
        return this.h;
    }

    public void setH(float h) {
        this.h = h;
    }




    public int getVita() {
        return this.vita;
    }

    public void setVita(int vita) {
        this.vita = vita;
    }

    public Camp getCampo() {
        return this.campo;
    }

    public abstract void move();
        


    public abstract void draw();
}