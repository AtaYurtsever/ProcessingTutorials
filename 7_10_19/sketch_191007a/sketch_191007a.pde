//          0   1   2
//3 int x:[100,200,300]

int y[]={100,200,300};
int x[] ={100,200,300};
int ySpeed[] = {0,0,0};
int tiklama = 0;
void setup(){
 size(500,500);
 background(0);
}
void draw(){
  background(0);
  noStroke();
  fill(255,255,0);
   for(int i = 0; i < 3; i = i+1){
      ellipse(x[i],y[i],50,50);
      y[i] = y[i]+ySpeed[i];
      ySpeed[i] = ySpeed[i] +1;
      if(y[i] >500){
         ySpeed[i] = -ySpeed[i]; 
      }
   }
}
//0 1 2 
void mousePressed(){
  x[tiklama] = mouseX;
  y[tiklama] = mouseY;
  ySpeed[tiklama] = 0;
  tiklama = tiklama +1;
  tiklama = tiklama%3;
}
