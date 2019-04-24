int r = 200;
int d = 20;
size(500, 500);
background(255);
noStroke();

for (int i = 0; i < 360; i++) {
    float x = r * sin(radians(i));
    float y = r * cos(radians(i));

    fill(0, 50);   
    ellipse(width / 2 + (int)x, height / 2 + (int)y, d, d);
}
