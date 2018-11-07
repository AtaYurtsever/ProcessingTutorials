class Nokta {
  float x, y;
  int name;
  Nokta( int name, float x, float y) {
    this.name = name;
    this.x = x;
    this.y = y;
  }
  
  void show() {
    ellipse(x,y,10,10);
  }
  
  void drawLines(Nokta other) {
    line(x,y,other.x,other.y);
  }
  
}