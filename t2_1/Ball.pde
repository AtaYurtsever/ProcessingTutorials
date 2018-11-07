class Ball{
   int x;
   int y;
   int ySpeed;
   int r;
  
   Ball(int _x, int _y, int _ySpeed){
      x = _x;
      y = _y;
      ySpeed = _ySpeed;
      r = 40;
   }
   
   void move(){
     y += ySpeed;
   }
   
   void show(){
     ellipse(x,y,r,r);
   }
}
