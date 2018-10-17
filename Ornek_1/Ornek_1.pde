/**
ilk ders, ilk örnek!!!
**/

//On hazirlik
void setup(){
  size(500,500);
  background(0);
}

//Tekrarli islem
void draw(){
  fill(mouseX/2,mouseY/2,mouseX/2);
  noStroke();
  ellipse(mouseX,mouseY,100,100);
}