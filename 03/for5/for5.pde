float r = 0.02;
int d = 4;
size(500, 500);
background(255);
noStroke();

for (int i = 0; i < 10000; i++) {
    float x = r * (float)i * sin(radians(i));
    float y = r * (float)i * cos(radians(i));

    fill(102, 194, 255 * float(i) / 10000);  
    ellipse(width / 2 + (int)x, height / 2 + (int)y, d, d);
}
