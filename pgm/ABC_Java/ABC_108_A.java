import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int K = Integer.parseInt (reader.readLine());
        final int two = 2;
        System.out.println (K / two * (K / two + K % two));
        return;
    }
}