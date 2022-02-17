class Personaje{
  //VARIABLES---------------------------------------------------------
  int px, py, ptam;
  PImage personaje;
  
  
  //CONSTRUCTOR------------------------------------------------------
  Personaje(){
    ptam =250;
    px = width/2;
    py = height-ptam/2;
    personaje = loadImage("personaje.png");
  }
  
  
  //FUNCIONES---------------------------------------------------------
  void dibujarPersonaje(){
    noFill();
    noStroke();
    rectMode(CENTER);
    rect(px,py,ptam,ptam);
    imageMode(CENTER);
    image(personaje, px, py, ptam, ptam);
  }
  void moverPersonaje(int k){
  if(k == RIGHT && px<width-ptam/8){
       px += 5; 
  }
  if(k == LEFT && px>ptam/8){
     px -= 5; 
  }
  }
}
