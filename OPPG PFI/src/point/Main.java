package point;

public class Main {
    public static void main(String[] args) {
        MyPoint point1 = new MyPoint();
        MyPoint point2 = new MyPoint(10.0, 30.5);

        double d =  point1.distance(point2);
        double d2 = MyPoint.distance(point1, point2);
        System.out.println(d);

    }
}
