void setup(){
    size(500, 300);
    background(240);
    frameRate(1);//1秒に一回draw関数を実行
}

void draw(){
    fill(255);
    smooth();
    stroke(0);
    strokeWeight(19);
    ellipse(120, 150, 200, 260);
    ellipse(380, 150, 200, 260);

    int s = second();
    if(s%2==0){
        fill(0);
        noStroke();
        ellipse(120+30, 150, 30, 40);
        ellipse(380+30, 150, 30, 40);
    }
    else{    
        fill(0);
        noStroke();  
        ellipse(120-30, 150, 30, 40);
        ellipse(380-30, 150, 30, 40);
    }
}