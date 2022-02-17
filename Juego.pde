class Juego {
  //VARIABLES---------------------------------------------------------
  String estado;
  Personaje personaje;
  Fondo fondo;
  Calabaza calabaza;
  Calabaza[] calabazas = new Calabaza[5];
  Calabaza[] podridas = new Calabaza[2];
  int atrapadas;
  int vidas = 5;
  int f;

  //CONSTRUCTOR---------------------------------------------------------
  Juego() {
    estado = "pantalla principal";
    fondo = new Fondo();
    personaje = new Personaje();
    calabaza = new Calabaza( true);
    for ( int i=0; i <calabazas.length; i++) {
      calabazas [i] = new Calabaza(true);
    }
    for ( int i=0; i <podridas.length; i++) {
      podridas [i] = new Calabaza(false);
    }
    textSize(25);
  }

  //FUNCIONES---------------------------------------------------------
  void dibujarJuego() {
    if (estado.equals("pantalla principal")) {
      f = 0;
      fondo.dibujarFondo(f);
      textSize(15);
      fill(255);
      text("ESPERA!! Antes de COMENZAR EL VIAJE DEBES RECOLECTAR 15 calabazas", 400, 100);
      text("Sino Mortajosario no va a poder llevarte por el recorrido en la historia del Halloween", 400, 150);
      fill(255, 0, 0);
      textSize(25);
      text("Presiona ENTER para comenzar el juego...", 400, 500);
    }

    if (estado.equals("ENTER")) {
      f = 1;
      fondo.dibujarFondo(f);
    }

    if (estado.equals("jugar")) {
      f = 1;
      fondo.dibujarFondo(f);
      personaje.dibujarPersonaje();
      calabaza.dibujarCalabaza();
      calabaza.moverCalabaza();
      for ( int i=0; i <calabazas.length; i++) {
        calabazas[i].dibujarCalabaza();
        calabazas[i].moverCalabaza();
      }
      for ( int i=0; i <podridas.length; i++) {
        podridas[i].dibujarCalabaza();
        podridas[i].moverCalabaza();
      }
      atraparCalabaza();
      atraparPodrida();
      fill(255);
      text(atrapadas, 50, 50);
      text(vidas, 750, 50);
    }
    if (vidas == 0) {
      estado = "Perdiste";
    }
    if (atrapadas == 15) {
      estado = "Ganaste";
    }
    if (estado.equals("Perdiste")) {
      f = 3;
      fondo.dibujarFondo(f);
      textSize(15);
      text(" Perdiste, presiona ENTER para volver a empezar...", 400, 550);
    }
    if (estado.equals("ENTER")) {
      f = 4;
      fondo.dibujarFondo(f);
    }
    if (estado.equals("Ganaste")) {
      f = 2;
      fondo.dibujarFondo(f);
      textSize(25);
      text(" Ganaste, muy bien ya puedes empezar tu viaje", 400, 150);
      text("Clickea en cualquier lado de la pantalla para comenzar el viaje", 400, 550);
    }
  }

  void moverPersonaje(int k) {
    personaje.moverPersonaje(k);
    calabaza.moverCalabaza();
  }


  void atraparCalabaza() {
    for ( int i=0; i <calabazas.length; i++) {
      float distan = dist (personaje.px, personaje.py, calabazas[i].cx, calabazas[i].cy );
      if (distan<personaje.ptam/4+calabaza.ctam) {
        calabazas[i].atrapar();
        atrapadas ++;
      }
    }
  }

  void atraparPodrida() {
    for ( int i=0; i <podridas.length; i++) {
      float distancia = dist (personaje.px, personaje.py, podridas[i].cx, podridas[i].cy );
      if (distancia<personaje.ptam/4+calabaza.ctam) {
        podridas[i].atrapar();
        vidas --;
      }
    }
  }

  void actualizarJuego(int k) {
    if (k ==ENTER && estado != "jugar") {
      estado = "jugar";
      f = 2;
      vidas = 5;
      atrapadas = 0;
      personaje = new Personaje();
      calabaza = new Calabaza( true);
      for ( int i=0; i <calabazas.length; i++) {
        calabazas [i] = new Calabaza(true);
      }
      for ( int i=0; i <podridas.length; i++) {
        podridas [i] = new Calabaza(false);
      }
    }
  }

  void ganaste(){
    if (atrapadas == 15 && estado!= "Ganaste"){
      estado = "ganaste";
      f = 0;
      
    }
  }
  void perdiste() {
    if (vidas == 0 && estado !="Perdiste") {
      f = 3;
    }
  }
}
