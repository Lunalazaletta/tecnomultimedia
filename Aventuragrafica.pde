class Aventura {

  Juego juego;
  Boton boton;
  int pantalla;
  String [] texto;
  PImage[] fondo;
  int cant = 26;
  boolean AYUDA = false;


  Aventura() {
    size(800, 600);
    //inicializo clase juego
    juego = new Juego();
    //inicializo clase botones
    boton = new Boton();
    //cargo los textos
    texto = loadStrings("data/texto.txt");
    //cargo las pantallas
    fondo = new PImage [cant];
    for (int i=0; i < cant; i ++) {
      fondo [i] = loadImage("pantalla"+i+".jpg");
      pantalla = 0;
    }
  }
  void dibujarAventura() {
    background(0);
    //-----------------------------------------------------------------------------------------------------------------------------------------
    if ( pantalla == 0) {
      //Muestro pantalla 0
      //Fondo pantalla 0
      image(fondo[pantalla], 0, 0);
      // Dibujo botón va a pantalla 1
      boton.dibujarBoton("INICIAR AVENTURA", 0, 0, 550, 800, 50);
      // Dibujo botón va a pantalla 24
      boton.dibujarBoton("CRÉDITOS", 0, 25, 25, 150, 50);
      //Escribo el texto - en este caso nada
      escribirTexto(texto[pantalla]);
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if ( pantalla == 1) {
      //Muestro pantalla 1
      //Fondo pantalla 1
      image(fondo[pantalla], 0, 0);
      // Dibujo botón va a pantalla 2
      boton.dibujarBoton("NO, FALTA PIPCKIN", 0, 400, 550, 400, 50);
      // Dibujo botón va a pantalla 17
      boton.dibujarBoton("SÍ, COMENCEMOS", 0, 0, 550, 400, 50);
      //Escribo la linea de texto de la historia (según el numero de pantalla)
      escribirTexto(texto[pantalla]);
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if ( pantalla == 2) {
      //Muestro pantalla 2
      //Fondo pantalla 2
      image(fondo[pantalla], 0, 0);
      // Dibujo botón va a pantalla 3
      boton.dibujarBoton("LE PREGUNTAS", 0, 0, 550, 800, 50);
      //Escribo la linea de texto de la historia (según el numero de pantalla)
      escribirTexto(texto[pantalla]);
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if ( pantalla == 3) {
      //Muestro pantalla 3
      //Fondo pantalla 3
      image(fondo[pantalla], 0, 0);
      // Dibujo botón va a pantalla 4
      boton.dibujarBoton("COMIENZAS EL DULCE/TRUCO", 0, 0, 550, 800, 50);
      //Escribo la linea de texto de la historia (según el numero de pantalla)
      escribirTexto(texto[pantalla]);
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if ( pantalla == 4) {
      //Muestro pantalla 4
      //Fondo pantalla 4
      image(fondo[pantalla], 0, 0);
      // Dibujo botón va a pantalla 5
      boton.dibujarBoton("VAS ", 0, 400, 550, 400, 50);
      // Dibujo botón va a pantalla 22
      boton.dibujarBoton("NO VAS ", 0, 0, 550, 400, 50);
      //Escribo la linea de texto de la historia (según el numero de pantalla)
      escribirTexto(texto[pantalla]);
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if ( pantalla == 5) {
      //Muestro pantalla 5
      //Fondo pantalla 5
      image(fondo[pantalla], 0, 0);
      // Dibujo botón va a pantalla 6
      boton.dibujarBoton("ABRES LA PUERTA", 0, 0, 550, 800, 50);
      //Escribo la linea de texto de la historia (según el numero de pantalla)
      escribirTexto(texto[pantalla]);
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if ( pantalla == 6) {
      //Muestro pantalla 6
      //Fondo pantalla 6
      image(fondo[pantalla], 0, 0);
      // Dibujo botón va a pantalla 7
      boton.dibujarBoton("DESAPARECE MONTAJOSARIO", 0, 0, 550, 800, 50);
      //Escribo la linea de texto de la historia (según el numero de pantalla)
      escribirTexto(texto[pantalla]);
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if ( pantalla == 7) {
      //Muestro pantalla 7
      //Fondo pantalla 7
      image(fondo[pantalla], 0, 0);
      // Dibujo botón va a pantalla 8
      boton.dibujarBoton("REAPARECE MONTAJOSARIO", 0, 400, 550, 400, 50);
      // Dibujo botón va a pantalla 23
      boton.dibujarBoton("LO IGNORAS Y SE VAN", 0, 0, 550, 400, 50);
      //Escribo la linea de texto de la historia (según el numero de pantalla)
      escribirTexto(texto[pantalla]);
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if ( pantalla == 8) {
      //Muestro pantalla 8
      //Fondo pantalla 8
      image(fondo[pantalla], 0, 0);
      // Dibujo botón va a pantalla 9
      boton.dibujarBoton("AYUDAS A PIPCKIN", 0, 0, 550, 800, 50);
      //Escribo la linea de texto de la historia (según el numero de pantalla)
      escribirTexto(texto[pantalla]);
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if ( pantalla == 9) {
      //Muestro pantalla 9
      //Fondo pantalla 9
      image(fondo[pantalla], 0, 0);
      // Dibujo botón va a pantalla 10
      boton.dibujarBoton("COMIENZAS EL VIAJE", 0, 0, 550, 800, 50);
      //Escribo la linea de texto de la historia (según el numero de pantalla)
      escribirTexto(texto[pantalla]);
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if ( pantalla == 10) {
      //Muestro pantalla 10
      juego.dibujarJuego();
      juego.ganaste();
      juego.perdiste();
    }

    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if ( pantalla == 16) {
      //Muestro pantalla 16
      //Fondo pantalla 16
      image(fondo[pantalla], 0, 0);
      // Dibujo botón va a pantalla 25
      boton.dibujarBoton("FIN ", 0, 0, 550, 800, 50);
      //Escribo la linea de texto de la historia (según el numero de pantalla)
      escribirTexto(texto[pantalla]);
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if ( pantalla == 17) {
      //Muestro pantalla 17
      //Fondo pantalla 17
      image(fondo[pantalla], 0, 0);
      // Dibujo botón va a pantalla 25
      boton.dibujarBoton("FIN ", 0, 400, 550, 1000, 50);
      //Escribo la linea de texto de la historia (según el numero de pantalla)
      escribirTexto(texto[pantalla]);
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if ( pantalla == 18) {
      //Muestro pantalla 18
      //Fondo pantalla 18
      image(fondo[pantalla], 0, 0);
      // Dibujo botón va a pantalla 19
      boton.dibujarBoton("IR", 0, 0, 550, 800, 50);
      //Escribo la linea de texto de la historia (según el numero de pantalla)
      escribirTexto(texto[pantalla]);
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if ( pantalla == 19) {
      //Muestro pantalla 19
      //Fondo pantalla 19
      image(fondo[pantalla], 0, 0);
      // Dibujo botón va a pantalla 20
      boton.dibujarBoton("ENTRÁS ", 0, 400, 550, 400, 50);
      // Dibujo botón va a pantalla 23
      boton.dibujarBoton("NO ENTRÁS", 0, 0, 550, 400, 50);
      //Escribo la linea de texto de la historia (según el numero de pantalla)
      escribirTexto(texto[pantalla]);
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if ( pantalla == 20) {
      //Muestro pantalla 20
      //Fondo pantalla 20
      image(fondo[pantalla], 0, 0);
      // Dibujo botón va a pantalla 21
      boton.dibujarBoton("VAS A LA COCINA", 0, 0, 550, 800, 50);
      //Escribo la linea de texto de la historia (según el numero de pantalla)
      escribirTexto(texto[pantalla]);
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------t
    else if ( pantalla == 21) {
      //Muestro pantalla 21
      //Fondo pantalla 21
      image(fondo[pantalla], 0, 0);
      // Dibujo botón va a pantalla 22
      boton.dibujarBoton("TE ACERCÁS", 0, 0, 550, 800, 50);
      //Escribo la linea de texto de la historia (según el numero de pantalla)
      escribirTexto(texto[pantalla]);
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if ( pantalla == 22) {
      //Muestro pantalla 22
      //Fondo pantalla 22
      image(fondo[pantalla], 0, 0);
      // Dibujo botón va a pantalla 23
      boton.dibujarBoton("TE ENOJAS ", 0, 400, 550, 400, 50);
      // Dibujo botón va a pantalla 24
      boton.dibujarBoton("TE REÍS", 0, 0, 550, 400, 50);
      //Escribo la linea de texto de la historia (según el numero de pantalla)
      escribirTexto(texto[pantalla]);
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if ( pantalla == 23) {
      //Muestro pantalla 23
      //Fondo pantalla 23
      image(fondo[pantalla], 0, 0);
      // Dibujo botón va a pantalla 25
      boton.dibujarBoton("FIN ", 0, 0, 550, 800, 50);
      //Escribo la linea de texto de la historia (según el numero de pantalla)
      escribirTexto(texto[pantalla]);
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if ( pantalla == 24) {
      //Muestro pantalla 24
      //Fondo pantalla 24
      image(fondo[pantalla], 0, 0);
      // Dibujo botón va a pantalla 25
      boton.dibujarBoton("FIN ", 0, 0, 550, 800, 50);
      //Escribo la linea de texto de la historia (según el numero de pantalla)
      escribirTexto(texto[pantalla]);
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if ( pantalla == 25) {
      //Muestro pantalla 25
      //Fondo pantalla 25
      image(fondo[pantalla], 0, 0);
      // Dibujo botón va a pantalla 0
      boton.dibujarBoton("VOLVER A INICIO ", 0, 50, 50, 150, 50);
      //Escribo lOS CREDITOS
      pushStyle();
      textSize(50);
      textAlign(CENTER, CENTER);
      fill(255);
      text("CRÉDITOS", 400, 150);
      textSize(20);
      text("Basado en el libro El árbol de las brujas de Ray Bradbury", 400, 460);
      text("Aventura gráfica hecha por Luna Lazaletta", 400, 500);
      popStyle();
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    //boolean como ayuda visual para ver en que pantalla estoy
    if (AYUDA) {
      fill(255);
      textAlign(CENTER);
      textSize(20);
      text("Pantalla : " + pantalla, 50, 50);
    }
  }
  void presionarBoton() {

    //-----------------------------------------------------------------------------------------------------------------------------------------
    if (pantalla == 0) {

      //toco estando en pantalla 0, me dirige hacia la pantalla 1 para INICIAR
      if ( boton.tocarBoton( 0, 550, 15, 15)) {
        pantalla = 1;
      }
      //toco estando en pantalla 0, me dirige hacia la pantalla 24 para CREDITOS
      else if (boton.tocarBoton (25, 25, 5, 5)) {
        pantalla = 24;
      }
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if (pantalla == 1) {

      //toco estando en pantalla 1, me dirige hacia la pantalla 17
      if ( boton.tocarBoton( 0, 550, 15, 15)) {
        pantalla = 18;
      }
      //toco estando en pantalla 1, me dirige hacia la pantalla 2
      if ( boton.tocarBoton( 400, 550, 15, 15)) {
        pantalla = 2;
      }
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if (pantalla ==2) {

      //toco estando en pantalla 2, me dirige hacia la pantalla 3
      if ( boton.tocarBoton( 0, 550, 15, 15)) {
        pantalla = 3;
      }
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if (pantalla ==3) {

      //toco estando en pantalla 3, me dirige hacia la pantalla 4
      if ( boton.tocarBoton( 0, 550, 15, 15)) {
        pantalla = 4;
      }
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if (pantalla ==4) {

      //toco estando en pantalla 4, me dirige hacia la pantalla 5
      if ( boton.tocarBoton(  400, 550, 15, 15)) {
        pantalla = 5;
      }
      //toco estando en pantalla 4, me dirige hacia la pantalla 22
      else if ( boton.tocarBoton( 0, 550, 15, 15)) {
        pantalla = 22;
      }
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if (pantalla == 5) {

      //toco estando en pantalla 5, me dirige hacia la pantalla 6
      if ( boton.tocarBoton( 0, 550, 15, 15)) {
        pantalla = 6;
      }
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if (pantalla == 6) {

      //toco estando en pantalla 6, me dirige hacia la pantalla 7
      if ( boton.tocarBoton( 0, 550, 15, 15)) {
        pantalla = 7;
      }
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if (pantalla == 7) {

      //toco estando en pantalla 7, me dirige hacia la pantalla 8
      if ( boton.tocarBoton( 400, 550, 15, 15)) {
        pantalla = 8;
      }
      //toco estando en pantalla 7, me dirige hacia la pantalla 23
      else if ( boton.tocarBoton( 0, 550, 15, 15)) {
        pantalla = 23;
      }
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if (pantalla == 8) {

      //toco estando en pantalla 8, me dirige hacia la pantalla 9
      if ( boton.tocarBoton( 0, 550, 15, 15)) {
        pantalla = 9;
      }
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if (pantalla == 9) {

      //toco estando en pantalla 9, me dirige hacia la pantalla 10
      if ( boton.tocarBoton( 0, 550, 15, 15)) {
        pantalla = 10;
      }
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if (pantalla == 10) {

      //toco estando en pantalla 10,me dirige hacia la pantalla 11
      if (boton.tocarBoton(100, 350, 150, 150)) {
        pantalla = 17;
      }
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if (pantalla == 17) {

      //toco estando en pantalla 17, me dirige hacia la pantalla 25
      if ( boton.tocarBoton(  400, 550, 15, 15)) {
        pantalla = 25;
      }
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if (pantalla == 18) {

      //toco estando en pantalla 18, me dirige hacia la pantalla 19
      if ( boton.tocarBoton( 0, 550, 15, 15)) {
        pantalla = 19;
      }
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if (pantalla == 19) {

      //toco estando en pantalla 19, me dirige hacia la pantalla 20
      if ( boton.tocarBoton( 400, 550, 15, 15)) {
        pantalla = 20;
      }
      //toco estando en pantalla 19, me dirige hacia la pantalla 23
      else if ( boton.tocarBoton( 0, 550, 15, 15)) {
        pantalla = 23;
      }
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if (pantalla == 20) {

      //toco estando en pantalla 20, me dirige hacia la pantalla 21
      if ( boton.tocarBoton(  0, 550, 15, 15)) {
        pantalla = 21;
      }
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if (pantalla == 21) {

      //toco estando en pantalla 21, me dirige hacia la pantalla 22
      if ( boton.tocarBoton( 0, 550, 15, 15)) {
        pantalla = 22;
      }
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if (pantalla == 22) {

      //toco estando en pantalla 22, me dirige hacia la pantalla 24
      if ( boton.tocarBoton( 0, 550, 15, 15)) {
        pantalla = 24;
      }
      //toco estando en pantalla 22, me dirige hacia la pantalla 22
      if ( boton.tocarBoton( 400, 550, 15, 15)) {
        pantalla = 23;
      }
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if (pantalla == 23) {

      //toco estando en pantalla 23, me dirige hacia la pantalla 25
      if ( boton.tocarBoton( 0, 550, 15, 15)) {
        pantalla = 25;
      }
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if (pantalla == 24) {

      //toco estando en pantalla 24, me dirige hacia la pantalla 25
      if ( boton.tocarBoton( 0, 550, 15, 15)) {
        pantalla = 25;
      }
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if (pantalla == 25) {

      //toco estando en pantalla 25, me dirige hacia la pantalla 0
      if ( boton.tocarBoton( 25, 25, 15, 15)) {
        pantalla = 0;
      }
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------
    else if (pantalla == 16) {

      //toco estando en pantalla 16, me dirige hacia la pantalla 25
      if ( boton.tocarBoton( 0, 550, 15, 15)) {
        pantalla = 25;
      }
    }

  }
  //-----------------------------------------------------------------------------------------------------------------------------------------

  void escribirTexto(String texto_) {
    textSize(18);
    textAlign(CENTER);
    fill(255);
    text(texto_, 200, 15, 400, 200);
  }

  void teclaPresionada(int k) {
    juego.moverPersonaje(k);
    juego.moverPersonaje(k);
    juego.actualizarJuego(k);
  }
}
