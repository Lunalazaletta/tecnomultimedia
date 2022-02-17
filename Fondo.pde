class Fondo{
    
  //VARIABLES---------------------------------------------------------
  int numero;
  PImage [] fondo = new PImage [4];
 
  
   //CONSTRUCTOR------------------------------------------------------
  Fondo(){
    for(int i = 0; i<fondo.length; i++) {
      fondo[i] = loadImage("fondo"+i+".jpg");
    
    }
    
  }
  
  //FUNCIONES--------------------------------------------------------- 
  void dibujarFondo(int n){
  numero = n;
   imageMode(CORNERS);
  image(fondo[n],0,0);
 
  }
  
  
  
}
