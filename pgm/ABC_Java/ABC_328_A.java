import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int X = Integer.parseInt (reader.readLine().split (" ")[1]);
        final int[] S = Arrays.stream (reader.readLine().split (" "))
                            .mapToInt (Integer::parseInt)
                            .toArray();
        System.out.println (Arrays.stream (S).filter (s -> s <= X).sum());
        return;
    }
}