
int i = 6;
int r = 150;
void setup(){
  size(800,800);
}

void draw(){
  float theta = 2 * PI / i;
  for(int t = 1; t <= i; t++){
      line(cos(t*theta)*r + 400,sin(t*theta)*r + 400,cos((t-1)*theta)*r + 400,sin((t-1)*theta)*r + 400);
  }
}