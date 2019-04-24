size(500, 500);
background(255);

for (int i = 0; i < 5000; i++) {
    int x = (int)random(width);
    int y = (int)random(height);
    int w = (int)random(30);
    int h = (int)random(30);
    float d = dist(width / 2, height / 2, x, y);
    
    if (d >= 0 && d < 50) fill(110, 1, 107);
    else if (d >= 50 && d < 100) fill(136, 65, 157);
    else if (d >= 100 && d < 150) fill(140, 107, 177);
    else if (d >= 150 && d < 200) fill(140, 150, 198);
    else if (d >= 200 && d < 250) fill(158, 188, 218);
    else fill(191, 211, 230);
        
    rect(x, y, w, h);
}
