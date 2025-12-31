import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        final int solid15 = 15;
        final int solid10 = 10;
        final int solid3 = 3;
        final int fat8 = 8;
        final int fat3 = 3;
        final int one = 1;
        final int two = 2;
        final int three = 3;
        final int four = 4;
        final int zero = 0;
        final int A = Integer.parseInt (arr[zero]);
        final int B = Integer.parseInt (arr[one]);
        final int AB = A + B;
        if (solid15 <= AB && fat8 <= B) {
            System.out.println (one);
        } else if (solid10 <= AB && fat3 <= B) {
            System.out.println (two);
        } else if (solid3 <= AB) {
            System.out.println (three);
        } else {
            System.out.println (four);
        }
        return;
    }
}