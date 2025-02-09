import java.util.ArrayList;

public class Camp {
    ArrayList<Cella> celleDelCampo = new ArrayList<Cella>();
    ArrayList<Cella> percorso = new ArrayList<Cella>(); 
    int b = 50;  
    int h = 50;  

    public Camp() {
        riempimentoCampo();
    }

    public ArrayList<Cella> getCelleDelCampo() {
        return this.celleDelCampo;
    }

    public ArrayList<Cella> getPercorso() {
        return this.percorso;
    }

    public void setCelleDelCampo(ArrayList<Cella> celleDelCampo) {
        this.celleDelCampo = celleDelCampo;
    }

    public void riempimentoCampo() {
        for (int y = 0; y < height; y += h) {
            if (y == 300) {    
                for (int x = 0; x < width; x += b) {
                    if (x <= 250) {
                        Cella cella = new Cella(x, y, b, h);
                        cella.setPath(true);
                        celleDelCampo.add(cella);
                        percorso.add(cella);  
                    } else {
                        Cella cella = new Cella(x, y, b, h);
                        celleDelCampo.add(cella);
                    }
                }
            } else if (y == 350) {
                for (int x = 0; x < width; x += b) {
                    if (x >= 250) {
                        Cella cella = new Cella(x, y, b, h);
                        cella.setPath(true);
                        celleDelCampo.add(cella);
                        percorso.add(cella); 
                    } else {
                        Cella cella = new Cella(x, y, b, h);
                        celleDelCampo.add(cella);
                    }
                }
            } else {
                for (int x = 0; x < width; x += b) {
                    Cella cella = new Cella(x, y, b, h);
                    celleDelCampo.add(cella);
                }
            }
        }
    }

    public void draw() {
        for (int i = 0; i < celleDelCampo.size(); i++) {
            celleDelCampo.get(i).draw();
        }
    }
}