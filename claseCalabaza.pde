class Calabaza{
  
  //VARIABLES---------------------------------------------------------
  float cx,cy, ctam, cvelocidad;
  PImage calabaza;
  boolean calabazaAtrapada;
  boolean podridaAtrapada;
  
  
  //CONSTRUCTOR------------------------------------------------------
  Calabaza(boolean normal){
   
    ctam = random (80,100);
    cx = random(ctam/2, width);
    cy = random (-height/2,-ctam);
    cvelocidad = random(2, 7);
    calabaza = loadImage("calabaza.png");
    if(normal){
    } else {
    calabaza.filter(GRAY);
    }
    calabazaAtrapada = false;
   podridaAtrapada = false;
  }
  

  
  //FUNCIONES---------------------------------------------------------
  
  void dibujarCalabaza(){
    image(calabaza,cx,cy,ctam,ctam);
  }
  
  void moverCalabaza(){
    if (cy > height +ctam || calabazaAtrapada){
      cx = random(ctam/2, width);
      cy =random (-height/2,-ctam);
      ctam =random (50,80);
      cvelocidad = random(3,7);
      calabazaAtrapada = false;
      podridaAtrapada = false;
    }
    cy += cvelocidad;
  }
  
  void atrapar(){
    calabazaAtrapada = true;
    podridaAtrapada = true;
  }
  
  
  
}
