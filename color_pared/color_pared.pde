size(500, 500);

int square = 50;
for(int i = 0; i < 10; i++){
    for(int j = 0; j < 10; j++){
        fill(255-j*28, 255-i*28, 0);
        rect(i*50, j*50, square, square);
    }
}