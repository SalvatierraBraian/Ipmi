//Braian Salvatierra
//legajo: 90338/1
PImage img1, img2, img3, img4;
PFont letra; 
int inicio;
int pantalla = 1;
int movimientoDePantallas = 9000;
float posX, posY; 
float velocidadX = 1; // velocidad en x
float velocidadY = 1; // velocidad en y
float texto3 = 0; // tamaño del texto de la pantalla 3 

void setup() {
  size(640, 480);
  img1 = loadImage("pool1.jpg");
  img2= loadImage("pool2.jpg");
  img3= loadImage("pool3.jpg");
  img4= loadImage("deadpool4.jpg");
  letra = loadFont("bookantiqua.vlw"); // tipografia
  textFont(letra);
  inicio = millis(); //controlo el tiempo
}

void draw() {
  textAlign(CENTER, CENTER);
  if (pantalla == 1) {
    image(img1, 0, 0, 640, 480);
    fill(0); 
    text("Se acerca el estreno de la tercera \n pelicula de esta saga el 25 \n de julio solo en cines", posX, height/2); 
    posX += velocidadX; // muevo de izquierda a derecha
  } else if (pantalla == 2) {
    image(img2, 0, 0, 640, 480);
    fill(255);
    text("Y hay un casteo sorpresa que te dejara \n la boca abierta, queres saber quien es?", width/2, posY);
    posY -= velocidadY; // muevo de abajo a arriba
  } else if (pantalla == 3) {
    image(img3, 0, 0, 640, 480);
    fill(255);
    textSize(texto3); // el tamaño de la pntalla 3
    text("La aparicion de Wolverine en la cinta, \n el mayor idolo de deadpool  ", width/2, height/2);
    texto3 += 0.1; //hago crecer el texto
    if (texto3 >= 30) { 
      texto3 = 30; // lo detengo en 30px 
    }
  } else if (pantalla == 4) {
    image(img4, 0, 0, 640, 480);
    fill(185,0,0);  
    rect(500, 400, 130, 50);// marco del boton
    fill(255);
    text("Reiniciar", 505, 400, 120, 45);// texto del boton
  }
  
  // reviso si inicio es igual a los segundos que le di a movimiento de pantalla 
  if (millis() - inicio >= movimientoDePantallas) {
    pantalla++; // cambio a la siguiente pantalla
    inicio = millis(); // reinicio el tiempo de millis
    if (pantalla > 1 && pantalla <= 3) { // reinicio la pocision de los textos
      posX = 0;
      posY = height;
      texto3 = 0;
    }
  }
}

void mousePressed() {
  if (pantalla >= 3 && mouseX >= 500 && mouseX <= 630 && mouseY >= 400 && mouseY <= 450) {
    pantalla = 1; // reiniciar de pantallas
    inicio = millis(); // reiniciar de tiempo
  }
  println(mouseX+","+mouseY);
}
