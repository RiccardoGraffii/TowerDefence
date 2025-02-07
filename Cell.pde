public class Cell {

    int h;
    int b;
    int x;
    int y;

    public Cell () {

        this.x = 0;
        this.y = 0;
        this.b = 50;
        this.h = 50;
                
    }


    public Cell (int x, int y, int b, int h) {

        this.x = x;
        this.y = y;
        this.b = b;
        this.h = h;
        
    }

    public String getX() {
        return this.x;
    }

    public void setX(int x) {
        this.x = x;
    }
    
    public String getY() {
        return this.y;
    }
    
    public void setY(int y) {
        this.y = y;
    }

    public String getB() {
        return this.b;
    }
    
    public void setB(int b) {
        this.b = b;
    }

    public String getH() {
        return this.h;
    }
    
    public void setH(int h) {
        this.h = h;
    }

    public void draw(){

        if(mouseX >= getX() && mouseX <= getX() + getH() && mouseY >= getY() && mouseY <= getY() + getB();){

            fill(125, 150, 75);
            rect(x, y, width, height);

        }else{

            fill(100, 100, 70);
            rect(x, y, width, height);


        }

    

    }




}
