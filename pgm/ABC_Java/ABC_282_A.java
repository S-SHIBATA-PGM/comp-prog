import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int K = Integer.parseInt (reader.readLine());
        List<Character> list = new ArrayList<>();
        final char A = 'A';
        char c = A;
        for (int i = 0; i < K; i++) {
            list.add (c);
            c++;
        }
        System.out.println (
            String.join ("", list.stream().map (String::valueOf).toList()));
        return;
    }
}