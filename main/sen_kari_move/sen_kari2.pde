float x1 = random(200);
float y1 = random(200);
float x2 = random(200);
float y2 = random(200);
float x3 = random(200);
float y3 = random(200);
float x4 = random(200);
float y4 = random(200);

void setup() {
  size( 500, 500 );
  background( #ffffff );
  colorMode(HSB, 360, 100, 100);  
}

void draw() {
  background( #ffffff );
  
  noFill();
  bezier( 250 + noise(x1)*width/2, 
          350 + noise(y1)*height/2, 
          350 + noise(x2)*width/2, 
          350 + noise(y2)*height/2, 
          400 + noise(x3)*width/2, 
          330 + noise(y3)*height/2, 
          200 + noise(x4)*width/2, 
          320 + noise(y4)*height/2);
  x1 += 0.01;
  y1 += 0.01;
  x2 += 0.01;
  y2 += 0.01;
  x3 += 0.01;
  y3 += 0.01;
  x4 += 0.01;
  y4 += 0.01;
}
