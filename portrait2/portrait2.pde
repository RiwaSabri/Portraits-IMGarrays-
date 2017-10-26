PImage img;

void setup() {
  size(500, 700);
  img = loadImage("portrait2.jpg");
  noStroke();
  rectMode(CENTER);
}

void draw() {
  background(255);
  
  int widthStep = 2;
  int heightStep = 15;
  
  for (int i = 0; i < width; i+=widthStep) {
    for (int j = 0; j < height; j+=heightStep) {
      color c = img.get(i, j);
      
      fill(c,random(255));
      ellipse(i, j, 10, 10);
      
      
     
    }
  }
}