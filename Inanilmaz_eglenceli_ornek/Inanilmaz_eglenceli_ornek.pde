
int i = 3;
int r = 150;
void setup(){
  size(800,800);
  background(0);
}

void draw(){
  int alpha = mouseX;
  r = mouseY;
  float theta = 2 * PI / i;
  for(int t = 1; t <= i; t++){
      stroke(mouseX/3,mouseY/3,150);
      float x1 = cos(t*theta +alpha)*r + 400;
      float y1 = sin(t*theta +alpha)*r + 400;
      float x2 = cos((t-1)*theta +alpha)*r + 400;
      float y2 = sin((t-1)*theta +alpha)*r + 400;
      line(x1,y1,x2,y2);
  }
}

void mouseClicked(){
   i++; 
}
