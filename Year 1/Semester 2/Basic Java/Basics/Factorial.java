public class Factorial {
    public static long factorial(int n) {

        long value = 1;
        while (n >= 2)
            value *= n--;
        return value;

    }

    public static void main(String[] args) {
        System.out.println(args[0] + "!=" + factorial(Integer.parseInt(args[0])));
    }
}
