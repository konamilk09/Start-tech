float s=10;
float m=1;

float sc=1;
float mc=0.01;

float xoff;
float yoff;
float offinc=0.01;

float c;

void setup(){
	//size(400, 400);
	fullScreen();//全画面表示
	frameRate(30);//1秒に30回drawを実行
	noFill();
	colorMode(HSB);
	background(0);
}

void draw(){
	s+=sc;
	m+=mc;
	xoff+=offinc;
	yoff+=offinc;
	translate(width/2, height/2);
	beginShape();
	float maxNumber=s;
	stroke(s%255, 100);
	for(int i=0; i<maxNumber; i++){
		float d=TAU/maxNumber*i;
		PVector p=PVector.fromAngle(d);
		float n=noise(p.x+xoff, p.y+yoff);
		p.mult(n*s);
		vertex(p.x, p.y);
	}
	
	endShape(CLOSE);
}