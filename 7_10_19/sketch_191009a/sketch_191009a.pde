void setup(){
 size(500,500);
 background(0);
}
int n = 3;
void draw(){
  stroke(mouseX,mouseY,200);
  int r = mouseY;
  float theta = 2*PI/n;
  float alpha = mouseX;
  for(int i = 0; i < n; ++i){
      //line(x1,y1,x2,y2);
      line( r*cos(theta*i + alpha)+width/2,      //x1
            r*sin(theta*i + alpha)+height/2,     //y1
            r*cos(theta*(i+1) + alpha)+width/2,  //x2
            r*sin(theta*(i+1) + alpha)+height/2);//y2
          }}
void mousePressed(){
   n++; 
}
