
public class NemicoGrande extends Nemico {

    float x;
    float y;
    float b;
    float h;  
    float velocita; 


    NemicoGrande(Camp campo){

        super(campo, 50);
        this.x = campo.getPercorso().get(1).getX()-50;
        this.y = campo.getPercorso().get(1).getY()+10;
        this.b = 15;
        this.h = 15;
        this.velocita = 0.7f;

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

    public void move(){


        if(getX() == 10 && getY()<=400){

            setY(getY()+velocita);

        }else{

            setX(getX()+velocita);
        }

    }

    public void draw(){

        
        fill(0, 0, 0); 
        rect(x + b / 2, y + h / 2, b, h); 

    }

}


