int tn=10;
int tedgelenght = 100;
int tcenterX;
int tcenterY;
color tcolorpoly = color(random(255), random(255), random(255));

void setup() {
  size(800, 600);
}

void draw() {
  int tcenterX = width/2;
  int tcenterY = height/2;
  polygon (tn, tedgelenght, tcenterX, tcenterY, tcolorpoly);
  polygon (7, 50, 100, 100, color(0,255,0));
}
