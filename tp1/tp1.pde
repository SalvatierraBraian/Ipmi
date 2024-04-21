
PImage mono;
void setup(){
size (800,400);
mono =loadImage("mono.jpg");

}
void draw(){
 background(148,167,75);
image(mono,0,0,400,400);
fill(8,9,3);
rect(400,250,400,200);
fill(30);
noStroke();
ellipse(600,280,400,420);
fill(108,109,104);
ellipse(600,220,250,350);//cuerpo
fill(8,9,3);
quad(401,400,510,192,680,192,800,400);//panza
fill(210,210,212);
rect(510,68,180,30);//frente
triangle(509,68,512,100,493,86);
triangle(690,68,705,84,691,100);
fill(20,20,12);
rect(510,72,180,30);//frente
triangle(510,72,510,102,491,86);
triangle(690,72,707,86,690,103);
fill(16,16,6);
ellipse(545,121,71,36);//ojo parpado
ellipse(650,121,71,36);
fill(196,198,187);
ellipse(545,125,71,24);
ellipse(650,125,71,24);//ojos
fill(137,74,9);
stroke(1);
strokeWeight(3);
ellipse(650,125,40,24);
ellipse(545,125,40,24);//ojo1
noStroke();
fill(0);
circle(545,125,20);//ojos
circle(650,125,20);//ojos
ellipse(596,187,60,20);//naiz
fill(57,57,49);
strokeWeight(1);
stroke(0);
ellipse(656,190,75,50);//ondas de nariz
ellipse(540,190,75,50);//ondas de nariz
ellipse(540,200,75,55);//ondas de nariz
ellipse(656,200,75,55);//ondas de nariz
ellipse(655,210,80,60);//ondas de nariz
ellipse(540,210,80,60);//ondas de nariz
ellipse(653,220,90,70);//ondas de nariz
ellipse(543,220,90,70);//ondas de nariz
noStroke();
ellipse(550,230,110,80);//ondas de nariz
ellipse(645,230,110,80);//ondas de nariz
quad(566,187,589,146,609,146,627,187);//tronco de nariz
fill(31,28,19);
quad(501,246,695,244,660,300,540,300);//pera
fill(95,58,32);
quad(508,245,524,222,668,222,688,245);//boca
quad(508,245,535,265,660,265,688,245);
fill(139,64,32);
ellipse(600,255,80,20); //lengua
rect(525,222,144,10);//mandibula
fill(131,115,64);
triangle(662,255,673,241,677,252);//diente en punta
quad(645,257,662,249,665,261,655,265);//diente
triangle(617,265,638,254,653,265);//dientes en punta
triangle(532,257,525,238,545,253);
quad(562,222,594,222,595,245,573,250);//diente
quad(594,222,626,222,620,250,595,245);
quad(627,223,645,223,642,238,639,239);
quad(578,256,593,255,599,265,571,265);
quad(605,256,625,255,630,265,600,265);
quad(540,266,535,245,551,249,554,264);
quad(547,265,551,255,567,257,571,265);
noFill();
stroke(1);
curve(700,100,565,78,546,46,440,0);//pelos de la ceja
curve(700,100,530,81,518,50,440,0);
curve(700,100,606,85,626,43,440,0);
curve(700,100,668,86,696,40,440,0);
stroke(255);
line(518,197,453,199);//bigotes
line(521,202,467,236);
line(512,226,473,258);
line(562,213,540,227);
line(580,215,567,224);
line(633,209,651,224);
line(656,199,736,207);
line(683,215,736,233);
line(729,258,689,235);

}
void mousePressed(){
  println(mouseX+","+mouseY);
}
