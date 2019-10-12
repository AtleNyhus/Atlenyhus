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


class Flower {
  float x;
  float y;
  float r;
  float centerr;
  int petals;
  color petalcolor;
  color flowercentercolor;
  float speedx;
  float speedy;

  Flower(float tx, float ty, float tr, float tcenterr, int tpetals, color tpetalcolor, color tflowercentercolor, float tspeedx, float tspeedy) {

    //I think theese temp variables was added, so they could be used outside the flower(); {bracket}
    x=tx;
    y=ty;
    r=tr;
    centerr=tcenterr;
    petals=tpetals;
    petalcolor=tpetalcolor;
    flowercentercolor=tflowercentercolor;
    speedx=tspeedx;
    speedy=tspeedy;
  }

  void display () { // call this function to display the flower
    float ballX;
    float ballY;
    fill(petalcolor);
    //This code draws the shape of the flower - Based on the code from "FlowerFunctionParameters"
    for (float i=0; i<PI*2; i+=2*PI/petals) { //draw "petals" amount of small petals. 
      ballX=r*cos(i);
      ballY=r*sin(i);
      ellipse(x+ballX, y+ballY, r, r);
    }
    fill(flowercentercolor);
    ellipse(x, y, centerr, centerr); //draws flower center
  }

  void move () { //call this function to make the flower move
    x = x + speedx;
    y = y + speedy;
    if (x >= width-centerr || x <= 0+centerr) {
      speedx = -speedx;
    }
    if (y >= height-centerr || y <= 0+centerr) {
      speedy=-speedy;
    }
  }

  void colorChange () { //call this function to change the collor of the flower
    if (mousePressed) {
      petalcolor = color(random(0, 255), random(0, 255), random(0, 255));
      flowercentercolor = color(random(0, 255), random(0, 255), random(0, 255));
    }
  }
}
