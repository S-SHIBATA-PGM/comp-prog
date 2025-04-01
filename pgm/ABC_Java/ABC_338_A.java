import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final char[] S = reader.readLine().toCharArray();
        final String Yes = "Yes";
        final String No = "No";
        if (!Character.isUpperCase (S[0])) {
            System.out.println (No);
            return;
        } else {
            for (int i = 1; i < S.length; i++) {
                if (!Character.isLowerCase (S[i])) {
                    System.out.println (No);
                    return;
                }
            }
        }
        System.out.println (Yes);
        return;
    }
}