import java.util.ArrayList;

public class Camp {
    ArrayList<Cella> celleDelCampo = new ArrayList<Cella>();
    int b = 50; 
    int h = 50;  


    public Camp() {
        riempimentoCampo();
    }

    public ArrayList<Cella> getCelleDelCampo() {
        return this.celleDelCampo;
    }

    public void setCelleDelCampo(ArrayList<Cella> celleDelCampo) {
        this.celleDelCampo = celleDelCampo;
    }

    public void riempimentoCampo() {
        for (int y = 0; y < height; y += h) {
            for (int x = 0; x < width; x += b) {
                Cella cella = new Cella(x, y, b, h);
                celleDelCampo.add(cella);
            }
        }
    }

    public void draw() {
        for (int i = 0; i < celleDelCampo.size(); i++) {
            noStroke();
            celleDelCampo.get(i).draw();
        }
    }
}