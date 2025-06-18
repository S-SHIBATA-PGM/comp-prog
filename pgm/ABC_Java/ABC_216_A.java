import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String dot = "\\.";
        final String[] arr = reader.readLine().split (dot);
        final String minus = "-";
        final String plus = "+";
        final int two = 2;
        final int six = 6;
        int X = Integer.parseInt (arr[0]);
        final int Y = Integer.parseInt (arr[1]);
        if (Y <= two) {
            System.out.print (X);
            System.out.print (minus);
        } else if (Y <= six) {
            System.out.print (X);
        } else {
            System.out.print (X);
            System.out.print (plus);
        }
        System.out.println();
        return;
    }
}