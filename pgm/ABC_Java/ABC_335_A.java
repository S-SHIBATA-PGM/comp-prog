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
        final char four = '4';
        S[S.length - 1] = four;
        System.out.println (String.valueOf (S));
        return;
    }
}