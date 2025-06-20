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
        final int A = Integer.parseInt (arr[0]);
        final int B = Integer.parseInt (arr[1]);
        final int zero = 0;
        final String Gold = "Gold";
        final String Silver = "Silver";
        final String Alloy = "Alloy";
        if (A > zero && B > zero) {
            System.out.println (Alloy);
        } else if (A == zero) {
            System.out.println (Silver);
        } else {
            System.out.println (Gold);
        }
        return;
    }
}