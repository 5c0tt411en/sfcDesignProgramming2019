PImage img;
int p = 30;

void setup() {
    img = loadImage("sfc.jpg");
    size(720, 450);
    noFill();
}

void draw() {
    background(0);
    for (int y = 0; y < img.height; y+=p) {
        for (int x = 0; x < img.width; x+=p) {
            color c = img.get(x, y);
            stroke(255);
            int r = (int)(red(c) + green(c) + blue(c)) / 100;
            ellipse(x / 2 + p / 4, y / 2 + p / 4, r, r);
        }
    }
}
