  float ballX=500;
  float ballY=250;
  float ballradius = 15;
  float ballspeed = -2;
  float yspeed = 0;
  float ballYspeed = 0;
  float originalballYspeed = 0;
  float originalballspeed = -2;
  float ballaceleration = 1;
  float fieldcolorR = 78;
  float fieldcolorG = 214;
  float fieldcolorB = 88;
  color ballfillcolor = color(255,0,0);
  float fieldlineColor = 220;
  float fieldlineStrokeWeight = 10;
  float fieldlineX = 300;
  float fieldlineY1 = 0;
  float fieldlineY2 = 500;
  float fieldcircleX = 300;
  float fieldcircleY = 250;
  float fieldcircleradius = 120;
  //Player
  float playerstrokeweight = 10;
  float playerline1x = 20;
  float scoresize = 40;
  
  //scoreboard
  float scoreX = 30;
  float scoreY = 35;
  float scorenumX = 150;
  float scorenumY = 35;
  String scoretext = "score: ";
  int scorenumber = 0;
  float difficultup = 3;
void setup() {  
  size(500,500);
  frameRate(120);
}

void draw() {
  float playerline1ytop = mouseY+60;
  float playerline1ybot = mouseY-60;
  float randomyspeed = random(-3, 3);
if(scene == 1); {
  //Fotball field
  background(fieldcolorR, fieldcolorG, fieldcolorB);
  stroke(fieldlineColor);
  strokeWeight(fieldlineStrokeWeight);
  fill(fieldcolorR, fieldcolorG, fieldcolorB);
  circle(fieldcircleX, fieldcircleY, fieldcircleradius);
  line(fieldlineX, fieldlineY1, fieldlineX, fieldlineY2);
  
  //Playable goalkeeper  
  strokeWeight(playerstrokeweight);
  line(playerline1x, playerline1ytop, playerline1x, playerline1ybot);
  
  //the balls speed
  ballX = ballX+ballspeed;
  ballY = ballY+yspeed;
  
  //Making the ball
  strokeWeight(1);
  fill(ballfillcolor);
  circle(ballX, ballY, ballradius);
  if(ballX <= playerline1x && ballX >= playerline1x-10 && ballY <= playerline1ytop && ballY >= playerline1ybot) { //Makes the ball bounce
    ballspeed = ballspeed*-1;
  }
  if(ballX == width) { //Returns ball and ads to score
     ballspeed = (ballspeed +ballaceleration)*-1;
     ballY = random(0, height);
     scorenumber = scorenumber+1;
     
  }
  if(ballX <= playerline1x-200) { //returns ball after goal (fail)
    ballspeed = originalballspeed;
    ballYspeed = originalballYspeed;
    ballX = width;
    ballY = random(0,height);
    yspeed = originalballYspeed;
    scorenumber = 0;
  }
  
  if(scorenumber >= difficultup && ballX == width){ //Introduces Yspeed   
    yspeed = randomyspeed;
  }
  if(ballY == 0 || ballY >= height || ballY <= 0) {
    yspeed = - yspeed;
  }
}
  //scoreboard
  textSize(scoresize); 
  text(scoretext, scoreX, scoreY);
  text(scorenumber, scorenumX, scorenumY);
}
