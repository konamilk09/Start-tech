PImage img;
 
void setup() {
  size(750, 500);
  img = loadImage("yukata_foreigner.jpg");
}
 
void draw() {
  image(img, 0, 0);
}