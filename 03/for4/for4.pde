int r = 1;
int d = 20;
size(500, 500);
background(255);
noStroke();

for (int i = 0; i < 360; i++) {
    float x = r * (float)i * sin(radians(i));
    float y = r * (float)i * cos(radians(i));

    fill(0, 50);   
    ellipse(width / 2 + (int)x, height / 2 + (int)y, d, d);
}
