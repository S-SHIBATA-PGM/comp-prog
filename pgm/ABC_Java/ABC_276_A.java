import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final char a = 'a';
        final String S = reader.readLine();
        if (S.lastIndexOf (a) < 0) {
            System.out.println (S.lastIndexOf (a));
        } else {
            System.out.println (S.lastIndexOf (a) + 1);
        }
        return;
    }
}