package oppg6part2;

public class Circle extends GeometricObject {
    int radius;

    Circle() {
    }

    Circle(int radius) {
    this.radius = radius;
    
    }



    public double getArea() {
        return Math.PI * radius * radius;
    }

    public double getPerimeter() {
        return 2 * Math.PI * radius;
    }
}

