import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        int N = Integer.parseInt (reader.readLine());
        final String For = "For";
        final String Yes = "Yes";
        final String No = "No";
        int most = (N + 1) / 2;
        String line = "";
        int cntFor = 0;
        int cntAgainst = 0;
        while ((line = reader.readLine()) != null) {
            if (For.equals (line)) {
                cntFor++;
            } else {
                cntAgainst++;
            }
            if (cntFor >= most) {
                System.out.println (Yes);
                break;
            } else if (cntAgainst >= most) {
                System.out.println (No);
                break;
            }
        }
        return;
    }
}