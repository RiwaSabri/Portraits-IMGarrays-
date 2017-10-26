PImage img;

void setup() {
  size(500, 700);
  img = loadImage("portrait2.jpg");
  noStroke();
  rectMode(CENTER);
}



void draw() {
  background(255);
  
  int widthStep = 20;
  int heightStep = 20;
  
  for (int i = 0; i < width; i+=widthStep) {
    for (int j = 0; j < height; j+=heightStep) {
     
      color c = img.get(i, j);
   
      
     beginShape();

      rect(i, j,20,20);
     
     // float s= random(200);
      fill(c);
    rect(j,i,10,10);
   
  
    }
  }
}