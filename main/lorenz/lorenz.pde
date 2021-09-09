float x = 0.01;
float y = 0;
float z = 0;

float a = 10;
float b = 28;
float c = 8.0/3.0;

//ArrayList<PVector> points = new ArrayList<PVector>();

void setup() {
  //fullScreen();
  size(800, 600, P3D);
  background(0);
}

void draw() {
  //image(img, 0, 0);
  //background(0);
  
  float dt = 0.01;
  float dx = (a * (y - x)) * dt;
  float dy = (x * (b - z) - y) * dt;
  float dz = (x * y - c * z) * dt;
  x += dx;
  y += dy;
  z += dz;

  //points.add(new PVectors(x, y, z));

  translate(width/2, height/2, -80);
  scale(5);
  stroke(255);

  /*for(PVector v : points) {
    point(v.x, v.y, v.z);
  }*/
  
  point(x, y, z);
}
