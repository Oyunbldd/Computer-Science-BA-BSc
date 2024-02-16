public class Greeting {
    public static void main(String[] args) {
        System.out.print("Enter your name: ");
        String name = System.console().readLine();
        if (args.length >= 1)
            System.out.println("Greetings " + args[0] + "!");

    }
}
