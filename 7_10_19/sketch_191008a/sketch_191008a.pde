//          0   1   2
//3 int x:[100,200,300]


void setup(){
 size(500,500);
 background(0);
}
void draw(){
  fill(mouseX,mouseY,100);
  noStroke();
  for(int i = mouseY; i < 500; i = i + 1){
     ellipse(mouseX, i,20,20); 
  }
}
