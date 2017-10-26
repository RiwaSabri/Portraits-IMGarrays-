
int COL_NUM = 5;
int ROW_NUM=5;


PImage[][] texture1 = new PImage[COL_NUM][ROW_NUM];
PImage [][] lineimage = new PImage[COL_NUM][ROW_NUM];
PImage [][] texture2 = new PImage[COL_NUM][ROW_NUM];
PImage [][] texture4 = new PImage[COL_NUM][ROW_NUM];

void setup() {
  size(860,860);
  imageMode(CENTER);
  
  //load all the images into our array
  for (int i = 0; i <COL_NUM ; i++) {
    for (int j = 0; j < ROW_NUM ; j++) {
    texture1[i][j] = loadImage("textureimage1.jpg");
    lineimage[i][j] = loadImage ("textureimage3.jpg");
    texture2[i][j] = loadImage ("textureimage2.jpg");
    texture4 [i][j]= loadImage ("textureimage4.jpg");
    
  }
}}

void draw() {
  println();
  background(210);

  

  for (int i = 0; i < (int)sqrt(10); i++) {
    for (int j = 0; j < (int)sqrt(10); j++) {
     
      image(texture1[i][j], 200 + i * 300, 200 + j * 300, 150, 150);
      image(lineimage[i][j],50+i*300,50+j*300,150,150);
        pushMatrix();
        float x=150;
      x=x+10;
      translate(200+i*300, 50+j*300);
      rotate((frameCount * 0.03) + i + j);
      image(texture2 [i][j], 0, 0, x, x);
      popMatrix();
      image(texture4 [i][j],50+i*300,200+j*300,150,150);
    }
  }
  
}