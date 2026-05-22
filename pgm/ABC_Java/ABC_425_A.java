import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        reader.close();
        final int zero = 0;
        final int one = 1;
        final int two = 2;
        int cubes = zero;
        for (int i = one; i <= N; i++) {
            int cube = i * i * i;
            if (i % two != zero) {
                cubes -= cube;
            } else {
                cubes += cube;
            }
        }
        System.out.println (cubes);
        System.exit (0);
    }
}