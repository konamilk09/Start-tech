int cols;
int rows;
float[][] current;
float[][] previous;
float dampening = 0.98;


float x;
float y;
float[][] cur;
float[][] pre;
PImage img;
float nx, ny;
//Kingyo direction;

void setup() {
  //fullScreen();
  size(600, 400);
  background(255);
  cols = width;
  rows = height;
  current = new float[cols][rows];
  previous = new float[cols][rows];
  //previous[500][500] = 50000;

  img = loadImage("kingyo_red2.png");
  //image(img, 0, 0);
  nx = 100;
  ny = 100;

}

void mouseDragged() {
  previous[mouseX][mouseY] = 7000;
}


void mousePressed() {
  previous[mouseX][mouseY] = 7000;
}

void draw() 
{


  loadPixels();
  for(int i = 1; i < cols-1; i++) {
    for(int j = 1; j < rows-1; j++) {
      current[i][j] = (
        previous[i-1][j] + 
        previous[i+1][j] +
        previous[i][j-1] + 
        previous[i][j+1]) / 2 -
        current[i][j];
      current[i][j] = current[i][j] * dampening;
      int index = i + j * cols;
      pixels[index] = color(255 - current[i][j]);
    }
  }
      
  updatePixels();
  
  x = noise(nx) * width;
  y = noise(ny) * height;
  image(img, x-100, y-100);
  //cur = new float[x][y];

  //ellipse(x, y, 30, 30);
  nx += 0.004;
  ny += 0.004;
  
  //pre = new float[x][];

  float[][] temp = previous;
  previous = current;
  current = temp;
}

