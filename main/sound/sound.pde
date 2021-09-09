var analyzer; 
var waveform;
var level;
var phi = [];
var r = [];
var time;
var mu;
var taco;
function preload(){
  sound = loadSound('ton_-_junichi_akagawa.mp3');
	sound.setVolume(1.1);
  amplitude = new p5.Amplitude();
	for(var i = 0; i < 255; ++i)
		phi[i] =  TWO_PI * i / 255;
	time = 0;
	mu = PI * 0.3;
	
}
function setup() {
  sound.play();
  cnv = createCanvas(700,700);
  // create an FFT to analyze the audio
  analyzer = new p5.FFT();
  background(0);
}
function draw() {
  // analyze the waveform
  waveform = analyzer.waveform();
	level = amplitude.getLevel();
	//if(time % 1 == 0)
	print(level);
		for(var i = 0; i < 255; i+=4)
				 r[i] = (1+(waveform[i]+waveform[i+1]+waveform[i+2]+waveform[i+3])/4)*width/3;
	
	if(time < 200)
  	translate(time * width/400, height/2);
	else{
  image(taco, -1, 0, width, height);
  	translate(width/2, height/2);
	}
	stroke(time % 255);
	noFill();
		curveTightness(level);
		beginShape();
			 for(var i = 0; i < 255; i+=4)
					curveVertex(r[i] *  cos(phi[i]) * cos(mu), r[i] * sin(phi[i])) * sin(mu);
			 for(var i = 0; i < 9; i+=4)
					curveVertex(r[i] *  cos(phi[i]) * cos(mu), r[i] * sin(phi[i])) * sin(mu);
		endShape();
  taco = get();
	time += 1;
}