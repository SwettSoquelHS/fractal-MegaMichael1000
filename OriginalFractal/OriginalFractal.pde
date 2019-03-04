float rad1 = 250;

void setup() {
  frameRate(60);
  size(900,650);
}

void draw() {
  background(0);
  ellipseMode(CENTER);
  noStroke();
  fill(0);
  ellipse(width/2,height/2,200,200);
  fractal(width/2,height/2,rad1);
  noFill();
  rad1 = rad1 - 1;
  if (rad1 < 225)
    rad1 = 250;
}

void fractal(float x, float y, float r) {
  pushMatrix();
  noFill();
  stroke(0,255,0);
  if (250 - r < 5)
    strokeWeight(250 - r);
  else
    strokeWeight(5);
  translate(x,y);
  ellipseMode(CENTER);
  ellipse(0,0,r,r);
  popMatrix();
  if (r > 25) {
    fractal(x,y,r-25);
  }
}

void fractal2(float x, float y, float r) {
  pushMatrix();
  noFill();
  stroke(0,255,0);
  strokeWeight(4);
  translate(x,y);
  ellipseMode(CENTER);
  ellipse(0,0,r,r);
  popMatrix();
  if (r > 1) {
    fractal(x,y,r-25);
  }
}
