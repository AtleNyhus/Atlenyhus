package point;

public class MyPoint {
    private double x = 0.0;
    private double y = 0.0;

    MyPoint() {
       this(0.0,0.0);
    }

    MyPoint( double x, double y){
        this.x = x;
        this.y = y;
    }

    public double getX () {
        return this.x;
    }
    public double getY () {
        return this.y;
    }
    public double distance (MyPoint myOtherPoint){
        double myDistance;
        myDistance = Math.sqrt((myOtherPoint.x - this.x) * (myOtherPoint.x - this.x) + (myOtherPoint.y - this.y) * (myOtherPoint.y - this.y));
        return myDistance;
    }
    public static double distance (MyPoint point1, MyPoint point2){
        double myDistance;
        myDistance = Math.sqrt((point2.x - point1.x) * (point2.x - point1.x) + (point2.y - point1.y) * (point2.y - point1.y));
        return myDistance;
    }

}

