// Salvatierra Braian 90338/1
//tp 3 comision 1
//https://youtu.be/2bNgcXoon_A

PImage opArt;
void setup() {
  size(800, 400); // Tamaño del lienzo
  opArt = loadImage("D_17.jpg"); // Cargar la imagen
  image(opArt, 0, 0, 400, 400);
}

void draw() {
   
 

  ciclodecuadrados(); 
  noStroke();
}
