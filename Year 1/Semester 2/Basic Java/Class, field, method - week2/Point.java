
public class Point {
    double x, y; // , <-variable initializer seperator

    public void move(double dx, double dy) {
        x += dx;
        y += dy;
    }

    public void mirror(double cx, double cy) {
        x = 2 * cx - x;
        y = 2 * cy - y;
    }
}

class PointMain {

    public static void main(String[] args) {
        Point p = new Point();
        p.x = 3;
        p.y = 4;
        p.move(1, 1);
        System.out.printf("(%f,%f)\n", p.x, p.y);
        // p.mirror(-1, -1);
        System.out.printf("(%f,%f)\n", p.x, p.y);
    }
}