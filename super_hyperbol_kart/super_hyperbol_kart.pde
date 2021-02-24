Character c;
void setup(){
   size(800,800); 
   frameRate(60);
   PImage img = loadImage("koopa.png");
   c = new Character(
       new PVector(300,300),
       new PVector(1,1),
       new PVector(0,0),
       img
   );
}

void draw(){
    background(0);
    c.update();
    
    c.renderWorld();
    c.render();
}

void keyPressed(){
   if(key == 'w')
     c.moveForward();
   if(key == 's')
     c.moveBackward();
   if(key == 'a')
     c.turnLeft();
   if(key == 'd')
     c.turnRight();
  
}
