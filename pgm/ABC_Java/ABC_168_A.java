import java.io.*;
import java.util.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        int N;
        N = Integer.parseInt (reader.readLine());
        if (Arrays.asList (2, 4, 5, 7, 9).contains (N % 10)) {
            System.out.println ("hon");
            return;
        }
        if (Arrays.asList (0, 1, 6, 8).contains (N % 10)) {
            System.out.println ("pon");
            return;
        }
        System.out.println ("bon");
        return;
    }
}
