int curX,curY;
int oldX,oldY;

void setup(){
  size(800,800);
  curY = mouseY;
  oldY = mouseY;
  curX = mouseX;
  oldX = mouseX;
}

void draw(){
  curY = mouseY;
  curX = mouseX;
  line(curX,curY,oldX,oldY);
  oldX = curX;
  oldY = curY;
  delay(100);
}