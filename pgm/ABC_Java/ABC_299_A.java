import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        reader.readLine();
        final String[] S = reader.readLine().split ("\\|");
        final String Treasure = "*";
        final String in = "in";
        final String out = "out";
        if (S.length <= 1) {
            System.out.println (out);
        } else if (S[1].contains (Treasure)) {
            System.out.println (in);
        } else {
            System.out.println (out);
        }
        return;
    }
}