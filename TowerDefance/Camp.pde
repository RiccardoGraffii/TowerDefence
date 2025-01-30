public class Campo{

    int x = 0;
    int y = 0;
    int b = 50;
    int h = 50;

    public void draw() {

        fill(39, 200, 180);


        while (this.y < height) {

            if (this.x >= width) {
                this.x = 0;  
                this.y += 50; 
            }

            
            rect(x, y, b, h);

           
            this.x += 50;
        }
    }
}
