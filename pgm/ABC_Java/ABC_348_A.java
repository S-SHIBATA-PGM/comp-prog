import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        final String fail = "x";
        final String success = "o";
        final int num = 3;
        StringBuilder sb = new StringBuilder();
        for (int i = 1; i <= N; i++) {
            if (i % num != 0) {
                sb.append (success);
            } else {
                sb.append (fail);
            }
        }
        System.out.println (sb.toString());
        return;
    }
}