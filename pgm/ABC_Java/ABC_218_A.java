import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        final String S = reader.readLine();
        final char circle = 'o';
        final String Yes = "Yes";
        final String No = "No";
        if (S.charAt (N - 1) == circle) {
            System.out.println (Yes);
        } else {
            System.out.println (No);
        }
        return;
    }
}