final int times = 2;
final int r = 540;
ArrayList<Nokta> noktalar = new ArrayList<Nokta>();
int n = 300;



void setup() {
  size(1080, 1080);
  
  float theta = 2 * PI / n;
  
  for( int i = 0; i < n; i++) {
   Nokta nok = new Nokta( i + 1, cos(i * theta) * r + width/2, sin(i * theta) * r + height/2);
   noktalar.add(nok);
  }
  
  
}

void draw() {
  
  
  
  for(int i = 0; i < n; i++) {
   Nokta j = noktalar.get(i);
   int hedef = times * (i + 1) % n;
   j.show();
   if ( hedef != 0) {
   j.drawLines(noktalar.get(hedef - 1));
   }
   
   //noktalar.get(i).drawLines(noktalar.get(i+1));
  }
}