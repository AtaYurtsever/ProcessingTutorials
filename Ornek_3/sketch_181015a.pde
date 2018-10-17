float x = 100;
float y = 255;
float g = 0.25;
float xSpeed = 3;
float ySpeed = -5;
int r = 40;
void setup(){
  size(520,520);
  background(0);
  }
void draw(){
  background(0);
  ySpeed = ySpeed + g;
  ellipse(x,y,2*r,2*r);
  y = y + ySpeed;
  x = x + xSpeed;
  }
void mouseClicked(){
   boolean inside = pow(r,2) > pow(mouseX - x,2) + pow(mouseY - y,2); 
   if(inside){
      xSpeed = -xSpeed;
      ySpeed = -30;
   }
}