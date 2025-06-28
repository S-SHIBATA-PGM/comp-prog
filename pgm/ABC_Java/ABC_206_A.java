import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final double N = Double.parseDouble (reader.readLine());
        final String high = ":(";
        final int price = 206;
        final String soso = "so-so";
        final double tax = 1.08;
        final String yay = "Yay!";
        final int zero = 0;
        final double amount = Math.floor (N * tax);
        System.out.println (Double.compare (price, amount) < zero    ? high
                            : Double.compare (price, amount) == zero ? soso
                                                                     : yay);
        return;
    }
}