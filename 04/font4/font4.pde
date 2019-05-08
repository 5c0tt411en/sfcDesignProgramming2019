String s = "";

void setup() {
    size(500, 500);
    fill(0);
}
void draw() {
    background(255);
    text(s, 0, height / 2);
}
void keyPressed() {
    if (key == BACKSPACE) {
        if (s.length() >= 1) {
            s = s.substring(0, s.length() - 1);
        }
    } else {
        s += key;
    }
}
