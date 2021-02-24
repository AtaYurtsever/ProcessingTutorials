class Character{
   final int VIEW_DISTANCE = 500;
   final float FOV = 0.2;
   final float THROTTLE_SPEED = 3;
   final float ROTATION = PI/100;
   PVector pos;
   PVector looksAt;
   PVector movesAt;
   PImage img;
   
   public Character(PVector pos, PVector looksAt, PVector movesAt, PImage img){
      this.pos = pos;
      this.looksAt = looksAt.normalize();
      this.movesAt = movesAt;
      this.img = img;
   }
   
   public void render(){
      //noStroke();
      //fill(255);
      image(img,width/2-100,height-200,200,200);
   }
   
   public void update(){
      int loc = getLoc(pos.x,pos.y);
      if(loc == 0)
        movesAt.mult(0);
      else if(loc == 1)
        movesAt.mult(0.6);
      else 
        movesAt.mult(0.85);
      pos.add(movesAt); 
   }
   
   public void renderWorld(){
       PVector cameraPos = pos.copy().sub(looksAt.copy().mult(10));
       for(int i=0; i < VIEW_DISTANCE; i++){
           int chunks = floor(i*FOV+1);
           float y = height - i*height/VIEW_DISTANCE;
           PVector leftToRight = looksAt.copy().rotate(PI/4);
           PVector left = cameraPos.copy()
                         .sub(leftToRight.copy().mult(chunks/2))
                         .add(looksAt.copy().mult(i));
           for(int j = 0; j < chunks; j++){
              PVector c = left.copy().add(leftToRight.copy().mult(j+0.5));
              int loc = getLoc(c.x,c.y);
              color lcolor;
              switch(loc){
                 case 0: lcolor = color(0,0,255); break;
                 case 1: lcolor = color(0,255,0); break;
                 case 2: lcolor = color(255,0,0); break;
                 default: lcolor = color(0);
                
              }
              stroke(lcolor);
              strokeWeight(3);
              line(j*width/chunks,y,(j+1)*width/chunks,y);
           }
       }
   }
   
   public void moveForward(){
      movesAt.add(looksAt.copy().mult(THROTTLE_SPEED));
   }
   
   public void moveBackward(){
      movesAt.sub(looksAt.copy().mult(THROTTLE_SPEED));
   }
   
   public void turnLeft(){
      looksAt.rotate(-ROTATION);
   }
   
   public void  turnRight(){
     looksAt.rotate(ROTATION);
   }
}
