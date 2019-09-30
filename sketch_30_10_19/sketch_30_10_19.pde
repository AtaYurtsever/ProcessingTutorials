int x = 100;
int y = 100;
int speedX = 4;
int speedY = 5;
void setup(){
 size(500,500);
}
void draw(){
  background(0);
  noStroke();
  fill(x,y,150);
  x = x+speedX;
  if(x > 400 || x < 0){
    speedX = -speedX;
  }
  y = y+speedY;
  if(y>400||y<0){
     speedY = -speedY; 
  }
  
}