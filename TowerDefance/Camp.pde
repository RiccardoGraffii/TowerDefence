// Campo.pde
public class Campo {
    int x = 0;
    int y = 0;
    int b = 50;
    int h = 50;
    int i = 0;
    posizione[] posizioneQuadrati;
    
    public Campo() {
        int cols = width / b;
        int rows = height / h;
        posizioneQuadrati = new posizione[cols * rows];
        for (int j = 0; j < posizioneQuadrati.length; j++) {
            posizioneQuadrati[j] = new Posizione(); 
        }
    }

    public void draw() {
        fill(39, 200, 180);
        x = 0;
        y = 0;
        i = 0;
        
        while (y < height - 50) {
            if (x >= width) {
                x = 0;  
                y += 50; 
            }
            
            rect(x, y, b, h);
            
            posizioneQuadrati[i].setY(y);
            posizioneQuadrati[i].setX(x);
            i++;
            x += 50;
        }
    }
}
