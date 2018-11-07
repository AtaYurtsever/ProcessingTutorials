int g = 1; 
ArrayList<Ball> balls = new ArrayList<Ball>();
void setup(){
 size(800,800); 
}

void draw(){
  background(0);
  //for(int i = 0; i < balls.size(); i++){
  //  balls.get(i).show();
  //  balls.get(i).move();
    
  //  if(balls.get(i).y < 0 |balls.get(i).y > height){
  //   balls.get(i).ySpeed *= -1;
  //  }
  //}
  
  for(Ball b:balls){
    b.show();
    b.move();
    
    if(b.y < 0||b.y >= height){
       b.ySpeed *= -1; 
       b.ySpeed += 1;
       b.y = height;
    }
   
    b.ySpeed += g;
      
    
  }
}

void mouseClicked(){
   Ball b = new Ball(mouseX,mouseY,5);
   balls.add(b);
   
}
