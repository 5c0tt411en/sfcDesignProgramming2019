//配列を宣言
int n = 100;
int[] x = new int[n];
int[] y = new int[n];
int[] vx = new int[n];
int[] vy = new int[n];
int[] d = new int[n];
color[] c = new color[n];

void setup() {
    size(1000, 700);
    //代入
    for (int i = 0; i < x.length; i++) {
        d[i] = (int)random(2, 20);
        x[i] = (int)random(d[i] / 2, width - d[i] / 2);
        y[i] = (int)random(d[i] / 2, height - d[i] / 2);
        while (vx[i] == 0) vx[i] = (int)random(-5, 5);
        while (vy[i] == 0) vy[i] = (int)random(-5, 5);
        c[i] = color(255, 255, random(50, 255));
    }
}

void draw() {
    background(0);
    //値を呼び出す
    for (int i = 0; i < x.length; i++) {
        fill(c[i]);
        ellipse(x[i], y[i], d[i], d[i]);
        //pingpong(i);
        mouseAtractionForce(i);
        info(i);
        connect(i);
    }
}

void pingpong(int i) {
    if (x[i] >= width - d[i] / 2 || x[i] <= d[i] / 2) {
        vx[i] = -vx[i];
    }
    if (y[i] >= height - d[i] / 2 || y[i] <= d[i] / 2) {
        vy[i] = -vy[i];
    }
    x[i] += vx[i];
    y[i] += vy[i];
}

void mouseAtractionForce(int i) {
    if (dist(mouseX, mouseY, x[i], y[i]) <= 200) {
        vx[i] += (mouseX - x[i]) >= 0 ? 1 : -1;
        vy[i] += (mouseY - y[i]) >= 0 ? 1 : -1;
        x[i] += vx[i];
        y[i] += vy[i];
    }
}

void info(int i) {
    fill(255);
    String s = "";
    s = "position: (" + x[i] + ", " + y[i] + ")";
    s += '\n' + "velocity: (" + vx[i] + ", " + vy[i] + ")";
    text(s, x[i] + 20, y[i] + 20);
}

void connect(int i) {
    stroke(c[i]);
    for (int j = 0; j < n; j++) {
        if (i != j && i < j) {
            if (dist(x[i], y[i], x[j], y[j]) <= 100) {
                line(x[i], y[i], x[j], y[j]);
            }
        }
    }
}
