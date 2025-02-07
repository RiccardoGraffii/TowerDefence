Camp campo;

void setup() {
    size(650, 650);
    campo = new Camp();
}

void draw() {
    background(255);  
    campo.draw();
}