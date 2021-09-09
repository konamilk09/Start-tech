float[] x = new float[10];
float[] y = new float[10];

void setup(){
 size(400,400);
 x[2] = -40;
 x[3] = -40;
 x[4] = -80;
 x[5] = -80;
 x[6] = -120;
 x[7] = -120;
 x[8] = -160;
 x[9] = -160;
 background(255);
}

void draw(){
  background(0);
  for(int i=0;i<x.length;i++){
    if(i%2==0){
      y[i] = 30*sin(radians(x[i]))+50*cos(radians(x[i]));
    }
    else if(i%2==1){
      y[i] = 30*cos(radians(x[i]));
    }
    stroke(232,57,197);
    ellipse(x[i],y[i]+200,10,10);
  }
  
  stroke(232,57,197);
  for(int j = 0;j<=8;j=j+2){
   line(x[j], y[j]+200,x[j+1],y[j+1]+200);
  }
  for(int a =0;a<=7;a++){
    line(x[a],y[a]+200,x[a+2],y[a+2]+200);
  }
  for(int b = 0;b<=6;b++){
  line(x[b],y[b]+200,x[b+3],y[b+3]+200);
  }
  for(int c = 0;c<=5;c++){
   line(x[c],y[c]+200,x[c+4],y[c+4]+200); 
  }
  for(int d = 0;d<=9;d++){
 x[d]+=1;
  }
 if(x[7]>width){
   x[0] = 0;
   x[1] = 0;
   x[2] = -40;
   x[3] = -40;
   x[4] = -80;
   x[5] = -80;
   x[6] = -120;
   x[7] = -120;
   x[8] = -160;
   x[9] = -160;
 }
}