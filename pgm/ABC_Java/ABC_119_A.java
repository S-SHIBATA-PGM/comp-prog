import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String S = reader.readLine();
        final String boundaryDate = "2019/04/30";
        final String Heisei = "Heisei";
        final String TBD = "TBD";
        final int zero = 0;
        if (S.compareTo (boundaryDate) <= zero) {
            System.out.println (Heisei);
        } else {
            System.out.println (TBD);
        }
        return;
    }
}