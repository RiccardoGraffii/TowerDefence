
public class NemicoPiccolo extends Nemico {

    float x;
    float y;
    float b;
    float h;  
    float velocita;
    boolean staCurvando;


    NemicoPiccolo(Camp campo){

        super(campo, 10);
        this.x = campo.getPercorso().get(1).getX()-50;
        this.y = campo.getPercorso().get(1).getY()+20;
        this.b = 10;
        this.h = 10;
        this.velocita = 1.5f;
        this. staCurvando = false;

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


        if(getX() >= 270 && getY()<=375){

            setY(getY()+velocita);
            staCurvando = true;
            

        }else{

            setX(getX()+velocita);
            staCurvando = false;
        }

    }

    public void draw(){

        fill(0, 0, 255);
        if(staCurvando){
            
            
            triangle(x, y-5, x+5, y+5, x+10, y-5);


        }else{
         
        triangle(x, y-5, x, y+5, x+10, y); 

    }
    }

}


