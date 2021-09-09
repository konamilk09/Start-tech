import processing.opengl.*;

float cameraX, cameraY, cameraZ;

void setup()
{
  background(0);  // 背景の色指定 白に指定
  size(displayWidth,displayHeight, OPENGL);  // windowのサイズを画面いっぱいにする
  translate(width/2, height/2, 0);  // 原点を画面の中心に
  cameraX = 250.0;
  cameraY = 250.0;
  cameraZ = 250.0;
  camera(cameraX, cameraY, cameraZ, 0.0, 0.0, 0.0, 0.0, 0.0, -1.0);
  arrow(0, 0, 0, 150, 0, 0, 150, 0, 0);
  arrow(0, 0, 0, 0, 150, 0, 0, 150, 0);
  arrow(0, 0, 0, 0, 0, 150, 0, 0, 150);
}

void draw()
{
  background(0);  // 背景の色指定 黒に指定
  if (keyPressed) {
    if (keyCode == LEFT) cameraX -= 10;
    if (keyCode == RIGHT) cameraX += 10;
    if (keyCode == UP) cameraY -= 10;
    if (keyCode == DOWN) cameraY += 10;
    if (keyCode == CONTROL) cameraZ -= 10;
    if (keyCode == SHIFT) cameraZ += 10;
  }
  camera(cameraX, cameraY, cameraZ, 0.0, 0.0, 0.0, 0.0, 0.0, -1.0);
  stroke(50);
  for(int i=-500; i<=500;)
  {
    line(-500, i, 0, 500, i, 0);
    line(i, -500, 0, i, 500, 0);
    i += 20;
  }
  arrow(0, 0, 0, 150, 0, 0, 150, 0, 0);
  arrow(0, 0, 0, 0, 150, 0, 0, 150, 0);
  arrow(0, 0, 0, 0, 0, 150, 0, 0, 150);
}

void cone(int L, float radius, int Color1, int Color2, int Color3)
{
  float x, y;
  noStroke();
  fill(Color1, Color2, Color3);
  beginShape(TRIANGLE_FAN);  // 底面の円の作成
  vertex(0, 0, -L);
  for(float i=0; i<2*PI; )
  {
    x = radius*cos(i);
    y = radius*sin(i);
    vertex(x, y, -L);
    i = i+0.01;
  }
  endShape(CLOSE);
  beginShape(TRIANGLE_FAN);  // 側面の作成
  vertex(0, 0, 0);
  for(float i=0; i<2*PI; )
  {
    x = radius*cos(i);
    y = radius*sin(i);
    vertex(x, y, -L);
    i = i+0.01;
  }
  endShape(CLOSE);
}

void arrow(int x1, int y1, int z1, int x2, int y2, int z2, int Color1, int Color2, int Color3)
{
  int arrowLength = 10;
  float arrowAngle = 0.5;
  float phi = -atan2(y2-y1, x2-x1);
  float theta = PI/2-atan2(z2-z1, x2-x1);
  stroke(Color1, Color2, Color3);
  strokeWeight(4); 
  line(x1, y1, z1, x2, y2, z2);
  strokeWeight(1); 
  pushMatrix();
  translate(x2, y2, z2);
  rotateY(theta);
  rotateX(phi);
  cone(arrowLength, arrowLength*sin(arrowAngle), Color1, Color2, Color3);
  popMatrix();
}