import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        final String[] S = reader.readLine().split ("");
        final int two = 2;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < N; i++) {
            sb.append (String.join ("", Collections.nCopies (two, S[i])));
        }
        System.out.println (sb.toString());
        return;
    }
}