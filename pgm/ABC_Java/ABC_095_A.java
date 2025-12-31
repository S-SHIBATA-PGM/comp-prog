import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split ("");
        final int sevenHundred = 700;
        final int hundred = 100;
        final String o = "o";
        final int zero = 0;
        int price = sevenHundred;
        for (int i = zero; i < arr.length; i++) {
            if (o.equals (arr[i])) {
                price += hundred;
            }
        }
        System.out.println (price);
        System.exit (0);
    }
}