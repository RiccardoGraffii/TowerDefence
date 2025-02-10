
public class NemicoMedio extends Nemico {

      
    float velocita; 


    NemicoMedio(Camp campo){

        super(campo, 25);
        this.x = campo.getPercorso().get(1).getX()-50;
        this.y = campo.getPercorso().get(1).getY()+20;
        this.b = 10;
        this.h = 10;
        this.velocita = 1;

    }

     

    public void move(){


        if(getX() >= 270 && getY()<=375){

            setY(getY()+velocita);

        }else{

            setX(getX()+velocita);
        }

    }

    public void draw(){

        if(getVita()>0){
        fill(0, 0, 0); 
        ellipse(x + b / 2, y + h / 2, b, h); 

    }

}}


