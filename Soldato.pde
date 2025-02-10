
public class Soldato extends Torre{

    public soldato (float x, float y, float raggio, int danno) {
        super(x, y, raggio, danno)
    }



    public void draw(){
        fill(100, 255, 100);
        ellipse(x, y, 30, 30);     
        noFill();
        stroke(200, 200, 0, 50);
        ellipse(x, y, raggio*2, raggio*2);

    }

}



