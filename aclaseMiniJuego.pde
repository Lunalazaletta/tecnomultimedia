class Juego{
  //VARIABLES---------------------------------------------------------
  String estado;
  Personaje personaje;
  Pantallas pant;
  Calabaza calabaza;
  Calabaza[] calabazas = new Calabaza[5];
  Calabaza[] podridas = new Calabaza[2];
  int atrapadas;
  int vidas = 5;
  int pantalla;
  
  //CONSTRUCTOR---------------------------------------------------------
    Juego(){
       estado = "pantalla principal";
        pant = new Pantallas();
        personaje = new Personaje();
        calabaza = new Calabaza( true);
        for ( int i=0; i <calabazas.length; i++){
          calabazas [i] = new Calabaza(true);
        }
          for ( int i=0; i <podridas.length; i++){
          podridas [i] = new Calabaza(false);
        }
        textSize(25);
    }
    
    //FUNCIONES---------------------------------------------------------
    void dibujarJuego(){
     pant.dibujarPantallas(pantalla);
     if (estado.equals("pantalla principal")){
       pantalla = 0;
       fill(0);
       text("Presiona ENTER para comenzar el juego...",100, 500);
     }
     
     if(estado.equals("ENTER")){
       pantalla = 1;
     }
     
    if(estado.equals("jugar")){
      pantalla = 1;
     personaje.dibujarPersonaje();
     calabaza.dibujarCalabaza();
     calabaza.moverCalabaza();
      for ( int i=0; i <calabazas.length; i++){
          calabazas[i].dibujarCalabaza();
          calabazas[i].moverCalabaza();
          
      }
        for ( int i=0; i <podridas.length; i++){
          podridas[i].dibujarCalabaza();
          podridas[i].moverCalabaza();
          
      }
      atraparCalabaza();
      atraparPodrida();
      fill(255);
      text(atrapadas,50,50);
      text(vidas,750,50);
    }
    if (vidas == 0){
      estado = "Perdiste";
    }
    if (atrapadas == 15){
      estado = "Ganaste";
    }
    if (estado.equals("Perdiste")){
      pantalla = 3;
      text(" Perdiste, presiona ENTER para volver a empezar...", 100,550);
    }
    if(estado.equals("ENTER")){
      pantalla = 1;
    }
    if(estado.equals("Ganaste")){
      pantalla = 2;
      text(" Ganaste, presiona botón ENTER para volver a jugar...", 100,550);
    }
    if(estado.equals("UP")){
      pantalla = 0;
    }
    }
    
   void moverPersonaje(int k){
     personaje.moverPersonaje(k);
   }
   
   
     void atraparCalabaza(){
      for ( int i=0; i <calabazas.length; i++){
    float distan = dist (personaje.px, personaje.py,calabazas[i].cx,calabazas[i].cy );
    if(distan<personaje.ptam/4+calabaza.ctam){
    calabazas[i].atrapar();
    atrapadas ++;
    }
      }
     }
   
   void atraparPodrida(){
     for ( int i=0; i <podridas.length; i++){
    float distancia = dist (personaje.px, personaje.py,podridas[i].cx,podridas[i].cy );
    if(distancia<personaje.ptam/4+calabaza.ctam){
    podridas[i].atrapar();
    vidas --;
    }
     }
   }
     
     void comienzo(int k){
       if(k ==ENTER && estado != "jugar"){
         estado = "jugar";
         pantalla = 2;
        vidas = 5;
        atrapadas = 0;
         personaje = new Personaje();
        calabaza = new Calabaza( true);
        for ( int i=0; i <calabazas.length; i++){
          calabazas [i] = new Calabaza(true);
        }
          for ( int i=0; i <podridas.length; i++){
          podridas [i] = new Calabaza(false);
        }
       }
     }
 
     

  
}
