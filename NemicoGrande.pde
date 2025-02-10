
public class NemicoGrande extends Nemico {

     
    float velocita; 


    NemicoGrande(Camp campo){

        super(campo, 50);
        this.x = campo.getPercorso().get(1).getX()-50;
        this.y = campo.getPercorso().get(1).getY()+10;
        this.b = 15;
        this.h = 15;
        this.velocita = 0.7f;

    }

  
    public void move(){


        if(getX() >= 250+(getB()/2) && getY()<=360){

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


