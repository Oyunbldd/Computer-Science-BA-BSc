public class Complex {

    double re, im;

    public double abs() {
        return Math.sqrt(re * re + im * im);
    }

    // immutable classes
    public Complex add(Complex c) {
        Complex o = new Complex();
        o.re = re + c.re;
        o.im = im + c.im;
        return o;
    }

    // mutable classes
    // public void add(Complex c) {
    // re += c.re;
    // im += c.im;
    // }

}
