public abstract class Torre {
    float x, y;     
    float raggio;  
    int danno;      
    int ultimoDanno;
    int costo;

    
    public Torre(float x, float y, float raggio, int danno) {
        this.x = x;
        this.y = y;
        this.raggio = raggio;
        this.danno = danno;
        this.ultimoDanno = millis();
    }
    
    public void aggiorna(){
        
        if(millis() - ultimoDanno > 500) {
            for(Nemico n : nemici) {
                if(dist(n.getX(), n.getY(), x, y) < raggio) {
                    n.setVita(n.getVita() - danno);
                }
            }
            ultimoDanno = millis();
        }
    }
    
    public  void draw();
}