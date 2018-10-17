float g = 0.5;
float ySpeed = -20;
float xSpeed = 3;
float x = 100;
float y = 500;
int r = 100;
void setup(){
  size(500,500);
  background(0);
}

void draw(){
  background(0);
  ellipse(x,y,r,r);
  
  if(ySpeed < 20){
    ySpeed += g;
  }
  y = y+ySpeed;
  x = x+xSpeed;
  delay(50);
}

void mouseClicked(){
  if(pow(r,2) > pow(mouseX - x,2) + pow(mouseY - y,2)){
    ySpeed = -ySpeed;
    xSpeed = -xSpeed;
  }
}