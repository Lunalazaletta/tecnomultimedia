/* ---------------------------Tp 5: Video Juego- LAZALETTA Luna - LEgajo: 88354/1
link del video: https://youtu.be/hxJ-6uIS7kA
*/
Juego juego;
void setup() {
  size(800,600);
  juego = new Juego();
}

void draw(){
  background(0);
  juego.dibujarJuego();
  if(keyPressed){
  juego.moverPersonaje(keyCode);
}
}
 void keyPressed(){
   juego.comienzo(keyCode);
  
 }
