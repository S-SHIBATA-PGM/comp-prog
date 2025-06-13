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
        final int no = -1;
        final int zero = 0;
        final int A = Integer.parseInt (arr[0]);
        final int B = Integer.parseInt (arr[1]);
        final int C = Integer.parseInt (arr[2]);
        final int multiple = A + C - A % C;
        if (A % C == zero) {
            System.out.println (A);
        } else if (A <= multiple && multiple <= B) {
            System.out.println (multiple);
        } else {
            System.out.println (no);
        }
        return;
    }
}