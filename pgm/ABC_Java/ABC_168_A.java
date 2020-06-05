import java.io.*;
import java.util.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String[] arr = reader.readLine().split (" ");
        int N;
        N = Integer.parseInt (arr[0]);
        Integer[] arrHon = {2, 4, 5, 7, 9};
        Integer[] arrPon = {0, 1, 6, 8};
        if (Arrays.asList (arrHon).contains (N % 10)) {
            System.out.println ("hon");
            return;
        }
        if (Arrays.asList (arrPon).contains (N % 10)) {
            System.out.println ("pon");
            return;
        }
        System.out.println ("bon");
        return;
    }
}
