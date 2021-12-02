/* --------------------------------------- Trabajo práctico 4: AVENTURA GRÁFICA - Luna LAZALETTA - Legajo: 88354/1----------------------------------------
 link del video: https://youtu.be/sHO68Qok8fE
 */
int pantalla;
String [] texto;
PImage[] fondo;
int cant = 25;
boolean AYUDA = false;

void setup() {
  size(800, 600);
  //cargo los textos
  texto = loadStrings("data/texto.txt");
  //cargo las pantallas
  fondo = new PImage [cant];
  for (int i=0; i < cant; i ++) {
    fondo [i] = loadImage("pantalla"+i+".jpg");
    pantalla = 0;
  }
}
void draw() {
  background(0);
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 0) {
    //Muestro pantalla 0
    //Fondo pantalla 0
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 1
    dibujarBoton("INICIAR AVENTURA", 275, 525, 275, 525, 250, 50);
    // Dibujo botón va a pantalla 24
    dibujarBoton("CRÉDITOS", 25, 25, 25, 25, 150, 50);
    //Escribo el texto - en este caso nada
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 1) {
    //Muestro pantalla 1
    //Fondo pantalla 1
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 2
    dibujarBoton("NO, FALTA PIPCKIN", 625, 525, 625, 525, 150, 50);
    // Dibujo botón va a pantalla 17
    dibujarBoton("SÍ, COMENCEMOS", 25, 525, 25, 525, 150, 50);
    //Escribo la linea de texto de la historia (según el numero de pantalla)
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 2) {
    //Muestro pantalla 2
    //Fondo pantalla 2
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 3
    dibujarBoton("LE PREGUNTAS", 625, 525, 625, 525, 150, 50);
    //Escribo la linea de texto de la historia (según el numero de pantalla)
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 3) {
    //Muestro pantalla 3
    //Fondo pantalla 3
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 4
    dibujarBoton("COMIENZAS EL DULCE/TRUCO", 625, 525, 625, 525, 150, 50);
    //Escribo la linea de texto de la historia (según el numero de pantalla)
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 4) {
    //Muestro pantalla 4
    //Fondo pantalla 4
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 5
    dibujarBoton("VAS ", 625, 525, 625, 525, 150, 50);
    // Dibujo botón va a pantalla 22
    dibujarBoton("NO VAS ", 25, 525, 25, 525, 150, 50);
    //Escribo la linea de texto de la historia (según el numero de pantalla)
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 5) {
    //Muestro pantalla 5
    //Fondo pantalla 5
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 6
    dibujarBoton("ABRES LA PUERTA", 625, 525, 625, 525, 150, 50);
    //Escribo la linea de texto de la historia (según el numero de pantalla)
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 6) {
    //Muestro pantalla 6
    //Fondo pantalla 6
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 7
    dibujarBoton("DESAPARECE MONTAJOSARIO", 625, 525, 625, 525, 150, 50);
    //Escribo la linea de texto de la historia (según el numero de pantalla)
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 7) {
    //Muestro pantalla 7
    //Fondo pantalla 7
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 8
    dibujarBoton("REAPARECE MONTAJOSARIO", 625, 525, 625, 525, 150, 50);
    // Dibujo botón va a pantalla 23
    dibujarBoton("LO IGNORAS Y SE VAN", 25, 525, 25, 525, 150, 50);
    //Escribo la linea de texto de la historia (según el numero de pantalla)
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 8) {
    //Muestro pantalla 8
    //Fondo pantalla 8
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 9
    dibujarBoton("AYUDAS A PIPCKIN", 625, 525, 625, 525, 150, 50);
    //Escribo la linea de texto de la historia (según el numero de pantalla)
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 9) {
    //Muestro pantalla 9
    //Fondo pantalla 9
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 10
    dibujarBoton("COMIENZAS EL VIAJE", 625, 525, 625, 525, 150, 50);
    //Escribo la linea de texto de la historia (según el numero de pantalla)
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 10) {
    //Muestro pantalla 10
    //Fondo pantalla 10
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 14
    dibujarBoton("TERMINAS EL VIAJE", 275, 525, 275, 525, 250, 50);
    // Dibujo botón va a pantalla 13
    dibujarBoton("ESQUELETO", 100, 425, 100, 425, 150, 50);
    // Dibujo botón va a pantalla 11
    dibujarBoton("MOMIA", 325, 425, 325, 425, 150, 50);
    // Dibujo botón va a pantalla 12
    dibujarBoton("BRUJA", 540, 425, 540, 425, 150, 50);
    //Escribo la linea de texto de la historia (según el numero de pantalla)
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 11) {
    //Muestro pantalla 11
    //Fondo pantalla 11
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 10
    dibujarBoton("SIGUES EL VIAJE", 275, 525, 275, 525, 250, 50);
    // Dibujo botón va a pantalla 13
    dibujarBoton("ESQUELETO", 100, 425, 100, 425, 250, 50);
    // Dibujo botón va a pantalla 12
    dibujarBoton("BRUJA", 450, 425, 450, 425, 250, 50);
    //Escribo la linea de texto de la historia (según el numero de pantalla)
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 12) {
    //Muestro pantalla 12
    //Fondo pantalla 12
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 10
    dibujarBoton("SIGUES EL VIAJE", 275, 525, 275, 525, 250, 50);
    // Dibujo botón va a pantalla 13
    dibujarBoton("ESQUELETO", 100, 425, 100, 425, 250, 50);
    // Dibujo botón va a pantalla 11
    dibujarBoton("MOMIA", 450, 425, 450, 425, 250, 50);
    //Escribo la linea de texto de la historia (según el numero de pantalla)
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 13) {
    //Muestro pantalla 13
    //Fondo pantalla 13
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 10
    dibujarBoton("SIGUES EL VIAJE", 275, 525, 275, 525, 250, 50);
    // Dibujo botón va a pantalla 11
    dibujarBoton("MOMIA", 100, 425, 100, 425, 250, 50);
    // Dibujo botón va a pantalla 12
    dibujarBoton("BRUJA", 450, 425, 450, 425, 250, 50);
    //Escribo la linea de texto de la historia (según el numero de pantalla)
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 14) {
    //Muestro pantalla 14
    //Fondo pantalla 14
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 15
    dibujarBoton("SE LO DAS ", 625, 525, 625, 525, 150, 50);
    // Dibujo botón va a pantalla 16
    dibujarBoton("NO SE LO DAS", 25, 525, 25, 525, 150, 50);
    //Escribo la linea de texto de la historia (según el numero de pantalla)
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 15) {
    //Muestro pantalla 15
    //Fondo pantalla 15
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 24
    dibujarBoton("FIN ", 275, 525, 275, 525, 250, 50);
    //Escribo la linea de texto de la historia (según el numero de pantalla)
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 16) {
    //Muestro pantalla 16
    //Fondo pantalla 16
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 24
    dibujarBoton("FIN ", 275, 525, 275, 525, 250, 50);
    //Escribo la linea de texto de la historia (según el numero de pantalla)
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 17) {
    //Muestro pantalla 17
    //Fondo pantalla 17
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 18
    dibujarBoton("IR", 25, 525, 25, 525, 150, 50);
    //Escribo la linea de texto de la historia (según el numero de pantalla)
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 18) {
    //Muestro pantalla 18
    //Fondo pantalla 18
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 19
    dibujarBoton("ENTRÁS ", 625, 525, 625, 525, 150, 50);
    // Dibujo botón va a pantalla 22
    dibujarBoton("NO ENTRÁS", 25, 525, 25, 525, 150, 50);
    //Escribo la linea de texto de la historia (según el numero de pantalla)
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 19) {
    //Muestro pantalla 19
    //Fondo pantalla 19
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 20
    dibujarBoton("VAS A LA COCINA", 625, 525, 625, 525, 150, 50);
    //Escribo la linea de texto de la historia (según el numero de pantalla)
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------t
  if ( pantalla == 20) {
    //Muestro pantalla 20
    //Fondo pantalla 20
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 21
    dibujarBoton("TE ACERCÁS", 625, 525, 625, 525, 150, 50);
    //Escribo la linea de texto de la historia (según el numero de pantalla)
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 21) {
    //Muestro pantalla 21
    //Fondo pantalla 21
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 22
    dibujarBoton("TE ENOJAS ", 625, 525, 625, 525, 150, 50);
    // Dibujo botón va a pantalla 23
    dibujarBoton("TE REÍS", 25, 525, 25, 525, 150, 50);
    //Escribo la linea de texto de la historia (según el numero de pantalla)
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 22) {
    //Muestro pantalla 22
    //Fondo pantalla 22
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 24
    dibujarBoton("FIN ", 275, 525, 275, 525, 250, 50);
    //Escribo la linea de texto de la historia (según el numero de pantalla)
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 23) {
    //Muestro pantalla 23
    //Fondo pantalla 23
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 24
    dibujarBoton("FIN ", 275, 525, 275, 525, 250, 50);
    //Escribo la linea de texto de la historia (según el numero de pantalla)
    escribirTexto(texto[pantalla]);
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if ( pantalla == 24) {
    //Muestro pantalla 24
    //Fondo pantalla 24
    image(fondo[pantalla], 0, 0);
    // Dibujo botón va a pantalla 0
    dibujarBoton("VOLVER A INICIO ", 25, 25, 25, 25, 150, 50);
    //Escribo lOS CREDITOS
    pushStyle();
    textSize(50);
    textAlign(CENTER, CENTER);
    fill(255);
    text("CRÉDITOS", 400, 150);
    textSize(20);
    text("Basado en el libro El árbol de las brujas de Ray Bradbury", 400, 460);
    text("Aventura gráfica hecha por Luna Lazaletta", 400,500);
    popStyle();
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  //boolean como ayuda visual para ver en que pantalla estoy
  if (AYUDA) {
    fill(0);
    textAlign(CENTER);
    textSize(20);
    text("Pantalla : " + pantalla, 50, 50);
  }
}

void mousePressed() {
  //-----------------------------------------------------------------------------------------------------------------------------------------
  if (pantalla == 0) {
    
    //toco estando en pantalla 0, me dirige hacia la pantalla 1 para INICIAR
    if ( tocarBoton( mouseX, mouseY, 275, 525, 5, 5)) {
      pantalla = 1;
    } 
    //toco estando en pantalla 0, me dirige hacia la pantalla 24 para CREDITOS
    else if ( tocarBoton( mouseX, mouseY, 25, 25, 15, 15)) {
      pantalla = 24;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla == 1) {
    
    //toco estando en pantalla 1, me dirige hacia la pantalla 17
    if ( tocarBoton( mouseX, mouseY, 25, 525, 15, 15)) {
      pantalla = 17;
    }
    //toco estando en pantalla 1, me dirige hacia la pantalla 2
    if ( tocarBoton( mouseX, mouseY, 625, 525, 15, 15)) {
      pantalla = 2;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla ==2) {
    
    //toco estando en pantalla 2, me dirige hacia la pantalla 3
    if ( tocarBoton( mouseX, mouseY, 625, 525, 15, 15)) {
      pantalla = 3;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla ==3) {
    
    //toco estando en pantalla 3, me dirige hacia la pantalla 4
    if ( tocarBoton( mouseX, mouseY, 625, 525, 15, 15)) {
      pantalla = 4;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla ==4) {
    
    //toco estando en pantalla 4, me dirige hacia la pantalla 5
    if ( tocarBoton( mouseX, mouseY, 625, 525, 15, 15)) {
      pantalla = 5;
    }
    //toco estando en pantalla 4, me dirige hacia la pantalla 22
    else if ( tocarBoton( mouseX, mouseY, 25, 525, 15, 15)) {
      pantalla = 22;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla == 5) {
    
    //toco estando en pantalla 5, me dirige hacia la pantalla 6
    if ( tocarBoton( mouseX, mouseY, 625, 525, 15, 15)) {
      pantalla = 6;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla == 6) {
    
    //toco estando en pantalla 6, me dirige hacia la pantalla 7
    if ( tocarBoton( mouseX, mouseY, 625, 525, 15, 15)) {
      pantalla = 7;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla == 7) {
    
    //toco estando en pantalla 7, me dirige hacia la pantalla 8
    if ( tocarBoton( mouseX, mouseY, 625, 525, 15, 15)) {
      pantalla = 8;
    } 
    //toco estando en pantalla 7, me dirige hacia la pantalla 23
    else if ( tocarBoton( mouseX, mouseY, 25, 525, 15, 15)) {
      pantalla = 23;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla == 8) {
    
    //toco estando en pantalla 8, me dirige hacia la pantalla 9
    if ( tocarBoton( mouseX, mouseY, 625, 525, 15, 15)) {
      pantalla = 9;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla == 9) {
    
    //toco estando en pantalla 9, me dirige hacia la pantalla 10
    if ( tocarBoton( mouseX, mouseY, 625, 525, 15, 15)) {
      pantalla = 10;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla == 10) {
    
    //toco estando en pantalla 10, me dirige hacia la pantalla 13
    if ( tocarBoton( mouseX, mouseY, 100, 425, 15, 15)) {
      pantalla = 13;
    }
    //toco estando en pantalla 10, me dirige hacia la pantalla 11
    if ( tocarBoton( mouseX, mouseY, 325, 425, 15, 15)) {
      pantalla = 11;
    }
    //toco estando en pantalla 10, me dirige hacia la pantalla 12
    if ( tocarBoton( mouseX, mouseY, 540, 425, 15, 15)) {
      pantalla = 12;
    }
    //toco estando en pantalla 10, me dirige hacia la pantalla 14
    if ( tocarBoton( mouseX, mouseY, 275, 525, 15, 15)) {
      pantalla = 14;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla == 11) {
    
    //toco estando en pantalla 11, me dirige hacia la pantalla 13
    if ( tocarBoton( mouseX, mouseY, 100, 425, 15, 15)) {
      pantalla = 13;
    }
    //toco estando en pantalla 11, me dirige hacia la pantalla 12
    if ( tocarBoton( mouseX, mouseY, 450, 425, 15, 15)) {
      pantalla = 12;
    }
    //toco estando en pantalla 11, me dirige hacia la pantalla 10
    if ( tocarBoton( mouseX, mouseY, 275, 525, 15, 15)) {
      pantalla = 10;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla == 12) {
    
    //toco estando en pantalla 12, me dirige hacia la pantalla 13
    if ( tocarBoton( mouseX, mouseY, 100, 425, 15, 15)) {
      pantalla = 13;
    }
    //toco estando en pantalla 12, me dirige hacia la pantalla 11
    if ( tocarBoton( mouseX, mouseY, 450, 425, 15, 15)) {
      pantalla = 11;
    }
    //toco estando en pantalla 12, me dirige hacia la pantalla 10
    if ( tocarBoton( mouseX, mouseY, 275, 525, 15, 15)) {
      pantalla = 10;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla == 13) {
    
    //toco estando en pantalla 13, me dirige hacia la pantalla 11
    if ( tocarBoton( mouseX, mouseY, 100, 425, 15, 15)) {
      pantalla = 11;
    }
    //toco estando en pantalla 13, me dirige hacia la pantalla 12
    if ( tocarBoton( mouseX, mouseY, 450, 425, 15, 15)) {
      pantalla = 12;
    }
    //toco estando en pantalla 13, me dirige hacia la pantalla 10
    if ( tocarBoton( mouseX, mouseY, 275, 525, 15, 15)) {
      pantalla = 10;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla == 14) {
    
    //toco estando en pantalla 14, me dirige hacia la pantalla 16
    if ( tocarBoton( mouseX, mouseY, 25, 525, 15, 15)) {
      pantalla = 16;
    }
    //toco estando en pantalla 14, me dirige hacia la pantalla 15
    if ( tocarBoton( mouseX, mouseY, 625, 525, 15, 15)) {
      pantalla = 15;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla == 17) {
    
    //toco estando en pantalla 17, me dirige hacia la pantalla 18
    if ( tocarBoton( mouseX, mouseY, 25, 525, 15, 15)) {
      pantalla = 18;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla == 18) {
    
    //toco estando en pantalla 18, me dirige hacia la pantalla 19
    if ( tocarBoton( mouseX, mouseY, 625, 525, 15, 15)) {
      pantalla = 19;
    } 
    //toco estando en pantalla 18, me dirige hacia la pantalla 22
    else if ( tocarBoton( mouseX, mouseY, 25, 525, 15, 15)) {
      pantalla = 22;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla == 19) {
    
    //toco estando en pantalla 19, me dirige hacia la pantalla 20
    if ( tocarBoton( mouseX, mouseY, 25, 525, 15, 15)) {
      pantalla = 20;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla == 20) {
    
    //toco estando en pantalla 20, me dirige hacia la pantalla 21
    if ( tocarBoton( mouseX, mouseY, 25, 525, 15, 15)) {
      pantalla = 21;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla == 21) {
    
    //toco estando en pantalla 21, me dirige hacia la pantalla 23
    if ( tocarBoton( mouseX, mouseY, 25, 525, 15, 15)) {
      pantalla = 23;
    }
    //toco estando en pantalla 21, me dirige hacia la pantalla 22
    if ( tocarBoton( mouseX, mouseY, 625, 525, 15, 15)) {
      pantalla = 22;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla == 22) {
    
    //toco estando en pantalla 22, me dirige hacia la pantalla 24
    if ( tocarBoton( mouseX, mouseY, 275, 525, 15, 15)) {
      pantalla = 24;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla == 23) {
    
    //toco estando en pantalla 23, me dirige hacia la pantalla 24
    if ( tocarBoton( mouseX, mouseY, 275, 525, 15, 15)) {
      pantalla = 24;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla == 24) {
    
    //toco estando en pantalla 24, me dirige hacia la pantalla 0
    if ( tocarBoton( mouseX, mouseY, 25, 25, 15, 15)) {
      pantalla = 0;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla == 15) {
    
    //toco estando en pantalla 15, me dirige hacia la pantalla 24
    if ( tocarBoton( mouseX, mouseY, 25, 25, 15, 15)) {
      pantalla = 24;
    }
  }
  //-----------------------------------------------------------------------------------------------------------------------------------------
  else if (pantalla == 16) {
    
    //toco estando en pantalla 16, me dirige hacia la pantalla 24
    if ( tocarBoton( mouseX, mouseY, 25, 25, 15, 15)) {
      pantalla = 24;
    }
  }
}
//-----------------------------------------------------------------------------------------------------------------------------------------

void dibujarBoton(String txt, float x, float y, float posx, float posy, float tamx, float tamy) {
  stroke(127);
  strokeWeight(3);
  fill(0);
  rect(posx, posy, tamx, tamy);
  pushStyle();
  textSize(15);
  textAlign(CENTER, CENTER);
  fill(255);
  text(txt, x, y, tamx, tamy);
  popStyle();
}

//-----------------------------------------------------------------------------------------------------------------------------------------

boolean tocarBoton( float x, float y, float tocX, float tocY, float ancho, float alto) {
  boolean valor;
  if ( x > tocX && y > tocY && x > tocX+ancho && y > tocY+alto) {
    valor = true;
  } else {
    valor = false;
  }

  return valor;
}

//-----------------------------------------------------------------------------------------------------------------------------------------

void escribirTexto(String texto_) {
  textSize(18);
  textAlign(CENTER);
  fill(255);
  text(texto_, 200, 15, 400, 200);
}
