Star[] stars = new Star[800];

float speed;

void setup() {
    size(400, 400);
    for(int i = 0; i < stars.length; i++) {
        stars[i] = new Star();
    }
}

void draw() {
    speed = map (mouseX, 0, width, 0, 50);

    background(0);
    translate(width/2, height/2);
    for(int i = 0; i < stars.length; i++) {
        stars[i].update();//場所の更新に使う
        stars[i].show();//画面上に表示する
    }
}