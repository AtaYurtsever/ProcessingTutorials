//https://pastebin.com/WtrNaJFm
float [][] kernel = { {0,0,0},
                      {1,0,-1},
                      {0,0,0}};
              
 PImage img;
 color getColor(int x,int y){
     int pos = (y)*img.width + (x);
     return img.pixels[pos];
 }
 void setup(){
    size(1600,800);
    img =  loadImage("squirrel.jpg");
    noLoop();
   
   
 }
 
 void draw(){
   image(img,0,0);
   img.loadPixels();
   
   PImage edgeImg = createImage(img.width, img.height, RGB);
   
   for(int y = 1 ; y < img.height-1;y++){
     for(int x = 1; x < img.width-1; x++){
       float c = 0;
       for(int kx =-1; kx <=1; kx++){
         for(int ky = -1; ky <= 1; ky++){
           c += kernel[ky+1][kx+1] * red(getColor(x+kx,y+ky));
           
         }
       }
       edgeImg.pixels[y*img.width + x] = color(c,c,c);
     }
   }
   edgeImg.updatePixels();
   image(edgeImg, width/2,0);
 }
