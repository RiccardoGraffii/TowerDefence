public class Nemico {

    int vita;
    Camp campo;  
    int x;
    int y;
    int b;
    int h;  

    public Nemico(Camp campo, int vita){

        this.campo = campo;
        this.vita = vita;
        this.h= 12.5;
        this.b = 12.5;
        this.x = -1;
        this.h = -1
        
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

    public int getVita() {
        return this.vita;
    }

    public void setVita(int vita) {
        this.vita = vita;
    }

    public Camp getCampo() {
        return this.campo;
    }

    
    
    public void move{

        if(getCampo().getCelleDelCampo().get(i).isPath()){

            setX(getCampo().getCelleDelCampo().get(i).getX());
            setY(getCampo().getCelleDelCampo().get(i).getY());
            rect(x, y, b, h);
        }



    }


}
