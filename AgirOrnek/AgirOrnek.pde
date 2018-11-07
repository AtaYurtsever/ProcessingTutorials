//Ikinci dersi gorduk saskinim hdsdf

ArrayList<Location> loc;
void setup(){
  size(800,800);
  loc = new ArrayList<Location>();
}

void draw(){
  loc.add(new Location(mouseX,mouseY));
  /*
  for( Location i : loc){
    line(i.x,i.y,mouseX,mouseY);
  }
  */
  
  for(int i = loc.size()-1; i > loc.size() - 10 && i > 0 ; i--){
    line(loc.get(i).x, loc.get(i).y,mouseX,mouseY);
  }
  
  
}