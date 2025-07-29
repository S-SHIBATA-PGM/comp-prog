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
        final int one = 1;
        final int zero = 0;
        System.out.println (zero < N - one ? N - one : zero);
        return;
    }
}