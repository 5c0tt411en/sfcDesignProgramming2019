void setup() {
    size(500, 500);
    rectMode(CENTER);
}

void draw() {
    background(0);
    pushMatrix();
    translate(width / 2, height / 2); 
    rotate(radians(frameCount));  
    rect(0, 0, 100, 100);
    popMatrix();
}
