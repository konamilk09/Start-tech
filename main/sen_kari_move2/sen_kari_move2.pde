int ranges = 20;

void setup() {
  //fullScreen();
  size(600, 400);
}

void draw() {
  background(255);
  noFill();
  strokeWeight(1);

  for (int i = 0; i < ranges; i++) {
    float paint = map(i, 0, ranges, 155, 180);
    stroke(paint);
    
    beginShape();
    for (int x = -5; x < width + 5; x += 10) {
      float n = noise(x * 0.0007, i * 0.005, frameCount * 0.001);
      float y = map(n, 0, 1, 0, height);
      vertex(x, y);
    }
    endShape();
  }
}