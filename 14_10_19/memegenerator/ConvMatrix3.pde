//kernel[x][y]
float[][] kernel ={{0,-1,0},
                   {-1,5,-1},
                   {0,-1,0}};
PImage img;
int pos(int x, int y){
   return  y * img.width+x;
}
void setup(){
  size(800,800);
  img = loadImage("ders.png");
  noLoop();
}

void draw(){
  img.loadPixels();
  
  PImage newImg = createImage(img.width,img.height,RGB);
  for(int x = 1; x < img.width-1 ; x++){
    for(int y = 1; y < img.height-1; y++){
      float r = 0;
      float g = 0;
      float b = 0;
      for(int kx = 0; kx < 3; kx++){
        for(int ky = 0; ky < 3; ky++){
          r = r+ PI*kernel[kx][ky]*red(img.pixels[pos(x+kx-1,y+ky-1)]);
          g = g+ 0.5*kernel[kx][ky]*green(img.pixels[pos(x+kx-1,y+ky-1)]);
          b = b+ 0.5*kernel[kx][ky]*blue(img.pixels[pos(x+kx-1,y+ky-1)]);
        }
      }
      newImg.pixels[pos(x,y)] = color(r,g,b);
    }
  }
  image(newImg,0,0);
  String[] memes = {"WASTED","To be continued","Such Beauty","When Coding Kicks in","CLOSE IT","FBI OPEN UP","NOICE"};
  textSize(50);
  text(memes[(int)random(7)], 100, 100); 
}
