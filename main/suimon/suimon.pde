PImage = img;

int cols;
int rows;
float[][] current;// = new float[cols][rows];
float[][] previous;// = new float[cols][rows];

float dampening = 0.99;

void setup() {
  size(600, 400);
  cols = width;
  rows = height;
  current = new float[cols][rows];
  previous = new float[cols][rows];
  //previous[500][500] = 50000;
  img = loadImage("kingyo_red.pde");
}

void mouseDragged() {
  previous[mouseX][mouseY] = 10000;
}

void mousePressed() {
  previous[mouseX][mouseY] = 10000;
}

void draw() {
  background(img);

  loadPixels();
  for(int i = 1; i < cols-1; i++) {
    for(int j = 1; j < rows-1; j++) {
      stroke(255);
      strokeWeight(5);
      line(0 ,0 ,1000, 600);
      current[i][j] = (
        previous[i-1][j] + 
        previous[i+1][j] +
        previous[i][j-1] + 
        previous[i][j+1]) / 2 -
        current[i][j];
      current[i][j] = current[i][j] * dampening;
      int index = i + j * cols;
      pixels[index] = color(current[i][j]);
    }
  }
  updatePixels();

  float[][] temp = previous;
  previous = current;
  current = temp;
  

}