import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String S1 = reader.readLine();
        final String S2 = reader.readLine();
        final char SHP = '#';
        final String Yes = "Yes";
        final String No = "No";
        if (S1.charAt (0) == SHP && S1.charAt (1) != SHP &&
            S2.charAt (0) != SHP && S2.charAt (1) == SHP) {
            System.out.println (No);
        } else if (S1.charAt (0) != SHP && S1.charAt (1) == SHP &&
                   S2.charAt (0) == SHP && S2.charAt (1) != SHP) {
            System.out.println (No);
        } else {
            System.out.println (Yes);
        }
        return;
    }
}