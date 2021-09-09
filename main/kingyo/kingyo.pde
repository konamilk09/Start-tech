PImage img;
float nx, ny;
//Kingyo direction;

void setup() {
  //fullScreen();
  size(600, 400);
  background(255);
  img = loadImage("kingyo_red2.png");
  //image(img, 0, 0);
  nx = random(600);
  ny = random(400);
}
 
void draw() {
  background(255);
  float x = noise(nx) * width;
  float y = noise(ny) * height;
  
  //ellipse(x, y, 30, 30);
  image(img, x-100, y-100);

  nx += 0.004;
  ny += 0.004;
}

  //colorMode(HSB, 360.0, 100.0, 100.0);
  //noFill();
  //stroke(0.0, 0.0, 0.0, 100.0);
  //strokeWeight(2.0);

  /*int div = 50;
  beginShape();
    for (int i = 0; i < div; i++) {
      float x = i * width / div;
      float y = noise(i * 0.05) * height;
      vertex(x, y);
      image(img, x, y);
      ellipse(x, y, 10.0, 10.0);
    }
  endShape();*/