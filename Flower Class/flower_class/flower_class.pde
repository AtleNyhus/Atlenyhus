float x = 400;
float y = 500;
float x1 = 100;
float y1 = 100;
float petalr = 60;
int  petals = 5;
color backgroundcolor = color(255);
color petalcolor = color(255, 0, 0);
color flowercentercolor = color(0, 255, 0);

float speedx1 = 3;
float speedy1 = 3;

float speedx2 = 5;
float speedy2 = 5;

float centerr = 80;

Flower flower1 = new Flower(x, y, petalr, centerr, petals, petalcolor, flowercentercolor, speedx1, speedy1);
Flower flower2 = new Flower(x1, y1, petalr, centerr, petals, petalcolor, flowercentercolor, speedx2, speedy2); //this flower had the same size and colors, but different start position and speed. 

void setup () {
  size(600, 800);
}

void draw () {
  background(backgroundcolor);
  flower1.display();
  flower1.move();
  flower1.colorChange();
  flower2.display();
  flower2.move();  
}
