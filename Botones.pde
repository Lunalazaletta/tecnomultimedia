class Boton {
  //VARIABLES----------------------------------------------------


  //CONSTRUCTOR----------------------------------------------------------------------------------------

  //FUNCIONES----------------------------------------------------------------------------------------
  void dibujarBoton(String txt, color filltxt, float posX, float posY, float tamx, float tamy) {
    if (mouseX > posX && mouseX > posX+tamx && mouseY > posY && mouseY > posY+tamy) {
      fill(#B7AD74, 150);
    } else {
      fill(#837C52, 100);
    }
    rect(posX, posY, tamx, tamy);
    fill(filltxt);
    textSize(15);
    textAlign(CENTER, CENTER);
    fill(255);
    text(txt, posX, posY, tamx, tamy);
    stroke(#B7AD74);
  }
  boolean tocarBoton( float posX, float posY, float ancho, float alto) {
    boolean valor;
    if (mouseX > posX && mouseX > posX+ancho && mouseY > posY && mouseY > posY+alto) {
      return true;
    } else {
      return false;
    }
  }
}
