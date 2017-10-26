PImage img;

void setup() {
  size(500, 700);
  img = loadImage("portrait2.jpg");
  noSmooth();
  stroke(255);
  noFill();
}

void draw() {
  noStroke(); 
  fill(0,50);
 line(0,0,width,height);
  stroke(255);
  int widthStep = 5;
  int heightStep = 10;
  
  for (int i = 0; i <= height; i += heightStep) {
    beginShape();
    for (int j = 0; j <= width; j += widthStep) {
      
      color c = img.get(j, i);
 
      
      float r = red(c);
      float g = green(c);
      float b = blue(c);

      float brightness = (r+g+b)/3;

      

     
      stroke(c);
      line(j, i,width,i*2);
      pushMatrix();
      translate(i,j);
      stroke(c);
      fill(c);
      rect(i,j,10,10);
      popMatrix();
      
     
    }
    endShape();}}