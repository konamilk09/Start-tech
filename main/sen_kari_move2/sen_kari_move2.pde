int ranges = 20;

void setup() {
  size(600, 400);
  background(255);
}

void draw() {
  background(255);
  noFill();
  strokeWeight(1);

  for (int i = 0; i < ranges; i++) {
    float paint = map(i, 0, ranges, 155, 180);
    stroke(paint);
    
    beginShape();
    for (int y = -5; y < height + 5; y += 10) {
      float n = noise(i * 0.0007, y * 0.005, frameCount * 0.001);
      float x = map(n, 0, 1, 0, width);
      vertex(x, y);
    }
    endShape();
  }
}