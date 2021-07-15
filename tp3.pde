//-------------------------TPn°3: Ilusión óptica - LAZALETTA Luna ----------------------//
// URL : https://youtu.be/4CIK45ZwM1c
int cant = 150;

void setup() {
  size(800, 800);
  colorMode(HSB, width, 100, 100);
}
void draw() {
  background(0);
  stroke(30);
//-------------------------------rectangulos--------------------------------------------//
  for(int i= 0; i<cant; i++){
    float tam = map(i,0,cant-1,width,10);
    float posx1 = map(i,0,cant-1,width/2,mouseX);
    float posy1 = map(i,0,cant-1,width/2,mouseY);
    float tono = map(i,0,cant-1,0,width);
    if(i%2==0){
   
      fill(tono,100,100);
      noStroke();
    }
    rectMode(CENTER);
    rect(posx1,posy1,tam,tam);

  }
  //------------------------------------lineas---------------------------------------//
  for(int c= 0; c<cant; c++){
  float posx = map(c,0,cant-1,width/2,mouseX);
  float posy = map(c,0,cant-1,width/2,mouseY);
  stroke(45);
  fill(0);
   line(0,0,posx,posy);
   line(0,800,posx,posy);
   line(800,800,posx,posy);
   line(800,0,posx,posy);
}}

//-------------------------- Reinicio de programa ---------------------------------------//
void keyPressed() { 
  if(key == 'a'){
    cant =0;
  }else {cant= 150;}
}
 
