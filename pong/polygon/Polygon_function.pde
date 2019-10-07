void polygon (int n, int edgelenght, int centerX, int centerY, color colorpoly) {

  size(800, 600);

  float [] pX = new float [n]; //Storage for X cordinates - INTERNAL variable for the function (eventually we can ask it to be an OUTPUT)
  float [] pY = new float [n]; //Storage for Y cordinates - INTERNAL variable for the function (eventually we can ask it to be an OUTPUT)

  fill(colorpoly);
  float step=TWO_PI/n; //step = the angelse we need to make the n-tagon
  for (int i=0; i<n; i++) {
    pX[i]=edgelenght*cos(step*i);
    pY[i]=edgelenght*sin(step*i);
  }

  beginShape(); //Finds the points, and makes the pentagon 
  for (int i=0; i<n; i++) {
    vertex(pX[i]+centerX, pY[i] + centerY);
  }
  endShape(CLOSE);
}
