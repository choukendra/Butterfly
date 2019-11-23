//butterfly
//based on https://www.youtube.com/watch?v=O_0fRV4MTZo

float x, y, a, r, xoff, yoff, n, da, dx;

void setup() {
  size(200, 200);
}

void draw() {
  background(80);
  translate(width/2, height/2);
  stroke(255);
  fill(#553030, 100);
  strokeWeight(1);

  rotate(PI/2);

  beginShape();
  da = PI/100;
  dx = 0.1;

  xoff = 0;
  for (a = -PI/2; a <= PI*2; a += da) {
    n = noise(xoff, yoff);
    r = sin(2*a) * map(n, 0, 1, 50, 100);
    x = r * cos(a);
    y = r * sin(a); 

    vertex(x, y);

    if (a <= PI/2) {
      xoff += dx;
    } else {
      xoff -= dx;
    }
  }

  //for (a = -PI/2; a <= PI/2; a += da) {
  //  n = noise(xoff, yoff);
  //  r = sin(2*a) * map(n, 0, 1, 50, 100);
  //  x = r * cos(a);
  //  y = r * sin(a); 
  //  xoff += dx;
  //  vertex(x, y);
  //}

  //for (a = PI/2; a <= 3*PI/2; a += da) {
  //  n = noise(xoff, yoff);    
  //  r = sin(2*a) * map(n, 0, 1, 50, 100);
  //  x = r * cos(a);
  //  y = r * sin(a); 
  //  xoff -= dx;
  //  vertex(x, y);
  //}
  endShape();
}

void mouseReleased() {
  yoff += 0.5;
  xoff += 0.5;
}
