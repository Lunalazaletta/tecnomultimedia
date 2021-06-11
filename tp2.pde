PFont titulo, produccion, disney;
PImage dalmatas;
float manchas = random(800,600);
int pantalla;
int pantalla2;
float x = 0;
float x1 = 800;
float velocidad =1.0;
float posX = 0;
float y1 = 0;
float velocidad2 = 1.5;
float manchas2 = random(800,300);
void setup(){
  size(800,600);
  titulo = loadFont("MonotypeCorsiva-48.vlw");
  disney = loadFont("PalaceScriptMT-48.vlw");
  produccion = loadFont("Serif.plain-48.vlw");
 dalmatas = loadImage("dalmata.png");
   pantalla = 0;
}
 void draw(){
  //------------------------------------------------------------------------------
  if ( pantalla == 0){
      background(255);
      fill(255,0,0);
  textFont(titulo,100);
  textAlign(CENTER);
  text("C r u e l l a",width/2,height/2);
  textFont(disney,60);
  text("Disney",570,340);
 }
 
  //------------------------------------------------------------------------------
   pantalla++;
  if(pantalla > 200 && pantalla < 600){
 fill(0);
  noStroke();
  ellipse(random(manchas), random(manchas),90,90);
  ellipse(random(manchas),random(manchas),70,70);
  ellipse(random(manchas),random(manchas),50,50);
  ellipse(random(manchas),random(manchas),30,30);
  ellipse(random(manchas),random(manchas),20,20);
  }
  //------------------------------------------------------------------------------
  if (pantalla >  600 && pantalla <  1000){
    background(0);
    float opaco = map(frameCount,600,1200,0,255);
    fill(255,opaco);
    textFont(titulo,50);
    text("Emma Stone", width/2,height/2);
    textFont(produccion, 20);
    text(" como Cruella/Estella", 400,350); 
    image(dalmatas,posX, 400, 233,200);
    posX = posX + velocidad2;
  }
 //------------------------------------------------------------------------------
 if( pantalla > 1000 && pantalla < 1400){
   background(0);
   float opaco = map(frameCount,1000,1400,0,255);
   fill(255,opaco);
   textFont(titulo,50);
   text("Emma Thompson", width/2,height/2);
   textFont(produccion,20);
   text("como la Baronesa", 400,350);
 }
 //---------------------------------------------------------------------------------
 if( pantalla > 1400 && pantalla < 1800){
   background(0);
   float opaco = map(frameCount,1400,1800,0,255);
   fill(255,opaco);
   textFont(titulo,40);
   text("Kirby Howell-Baptise",width/2,height/2);
   text("Joel Fly",150,100);
   text("Paul Walter Houser",600,100);
   text("Mark Strong",150,450);
   text("John McCrea",600,450);
   textFont(produccion,20);
   text("como Anita Darling",400,350);
   text("como Jasper",150,150);
   text("como Horace",600,150);
   text("como John",150,500);
   text("como Artie",600,500);
 }
 //----------------------------------------------------------------------------------------
 if(pantalla > 1800 && pantalla < 2200){
   background(0);
   float opaco = map(frameCount, 1800,2500,255,0);
   fill(255,opaco);
   textFont(produccion, 40);
   text("Dirección:",x,100 );
   text("Producción:",x1,250);
   textSize(30);
   text("Craig Gillespie", x,150);
   text("Gleen Close", x1,300);
   text("Kristin Burr",x1,350);
   text("Andrew Gunn",x1,400);
   text("Marc Platt",x1,450);
   x = x + velocidad;
   x1 = x1 - velocidad;
 }
 //--------------------------------------------------------------------------------------------
 if(pantalla > 2200 && pantalla < 2800){
   background(0);
   float opaco = map(frameCount,2200,2800,255,0);
   fill(255,opaco);
   textFont(produccion,40);
   text("Guion:",x,100);
   text("Musica:",x1,300);
   text("Dana Fox",x,150);
   text("Tony McNamara",x,200);
   text("Nicholas Brittel",x1, 350);
   x = x + velocidad;
   x1 = x1 - velocidad ;
 }
  if(pantalla > 2800 && pantalla < 3400){
 fill(255);
  noStroke();
  ellipse(random(manchas), random(manchas),90,90);
  ellipse(random(manchas),random(manchas),70,70);
  ellipse(random(manchas),random(manchas),50,50);
  ellipse(random(manchas),random(manchas),30,30);
  ellipse(random(manchas),random(manchas),20,20);
  }
 }
 void mousePressed() {
   pantalla = 0;
 }
