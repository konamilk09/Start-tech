float ball_x, ball_y, ball_r;
float speed_x, speed_y;
float bar_w =100, bar_h = 30;
float block_w = 100, block_h = 30;

void setup(){
    size(500,500);
    ball_x = 250;
    ball_y = 250;
    ball_r = 100;
    speed_x = 1;
    speed_y = -2;
    
}

void draw(){  //何回も実行される処理
  background(255); //背景を白に
  circle(ball_x, ball_y, ball_r); //円
  ball_x += speed_x;
  ball_y += speed_y;
  
  if(ball_x + ball_r/2 > width) speed_x *= -1;
  if(ball_x - ball_r/2 < 0) speed_x *= -1;
  if(ball_y - ball_r/2 < 0) speed_y *= -1;
  
  rect(mouseX-bar_w/2, mouseY-bar_h/2, bar_w, bar_h);
  
  if((mouseX-bar_w/2 < ball_x+ball_r/2 && mouseX+bar_w/2 > ball_x-ball_r/2) 
    && (mouseY-bar_h/2 < ball_y+ball_r/2 && mouseY+bar_w/2 > ball_y+ball_r/2)){
      speed_y *= -1;
    }
    
  for(int i=0; i<5; i++){
      for(int j=0; j<5; j++){
        rect(i*block_w, j*block_h, block_w, block_h);
        
        if(ball_x + ball_r/2 > i*block_w && ball_x + ball_r/2 > (i+1)*block_w) speed_x *= -1;
        if(ball_x - ball_r/2 < 0) speed_x *= -1;
        if(ball_y + ball_r/2 < 0) speed_y *= -1;
      }
    }  
  
  if(ball_x + ball_r/2 > block_w) speed_x *= -1;
  if(ball_x - ball_r/2 < 0) speed_x *= -1;
  if(ball_y + ball_r/2 < 0) speed_y *= -1;
}
