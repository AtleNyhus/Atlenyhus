/*
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

*/
