import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        final int A, B;
        A = Integer.parseInt (arr[0]);
        B = Integer.parseInt (arr[1]);
        for (int i = 0; i < 9; i++) {
            if (i != A + B) {
                System.out.println (i);
                return;
            }
        }
        return;
    }
}