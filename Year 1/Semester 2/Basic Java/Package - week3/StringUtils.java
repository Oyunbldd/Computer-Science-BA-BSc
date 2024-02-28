package string.utils;

public class IterLetter {
    private String s;
    private int position;

    IterLetter(String s) {
        if (s == null)
            throw new IllegalArgumentException();
        // if (s.equals("test"))
        // throw new IllegalArgumentException();
    }

    public void printNext() {
        if (position >= s.length())
            System.out.println();
        System.out.print(s.charAt(position++));
    }
}