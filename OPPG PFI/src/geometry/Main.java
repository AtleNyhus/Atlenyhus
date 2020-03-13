package geometry;

public class Main {
    public static void main(String[] args) {
        double side1 = 1.0;
        double side2 = 1.5;
        double side3 = 1.0;
        Triangle triangle = new Triangle(side1, side2, side3);
        triangle.setColor("yellow");
        triangle.setFilled(true);
        System.out.println(triangle.toString());
        System.out.println("area " +triangle.getArea());
        System.out.println("perimeter " +triangle.getPerimeter());
        System.out.println("color "+triangle.getColor());
        System.out.println("filled "+triangle.isFilled()) ;

    }
}

