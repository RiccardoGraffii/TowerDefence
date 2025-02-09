public abstract class Nemico {
    int vita;
    Camp campo;       

    public Nemico(Camp campo, int vita) {
        this.campo = campo;
        this.vita = vita;
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