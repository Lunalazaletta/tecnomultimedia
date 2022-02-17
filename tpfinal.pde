Aventura aventura;


void setup(){
  size(800,600);
  aventura = new Aventura();
}

void draw(){
  background(0);
  aventura.dibujarAventura();
}

void mousePressed(){
  aventura.presionarBoton();
}

void keyPressed(){
  aventura.teclaPresionada(keyCode);
}
