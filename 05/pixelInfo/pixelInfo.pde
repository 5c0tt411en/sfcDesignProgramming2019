PImage img;
int p = 30;

void setup() {
    img = loadImage("sfc.jpg");
    size(720, 450);
    ellipseMode(LEFT);
    noStroke();
}

void draw() {
    background(0);
    for (int y = 0; y < img.height; y+=p) {
        for (int x = 0; x < img.width; x+=p) {
            color c = img.get(x, y);
            fill(c);
            ellipse(x / 2, y / 2, p / 2, p / 2);
        }
    }
}
