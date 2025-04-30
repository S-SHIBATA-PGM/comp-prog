import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] S = reader.readLine().split ("");
        for (int i = 0; i < S.length; i += 2) {
            System.out.print (S[i + 1]);
            System.out.print (S[i]);
        }
        System.out.println();
        return;
    }
}