import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String S = reader.readLine();
        reader.close();
        final char a = 'a';
        final char z = 'z';
        final int one = 1;
        for (char c = a; c <= z; c++) {
            if (S.indexOf (c) == -one) {
                System.out.println (c);
                break;
            }
        }
        System.exit (0);
    }
}