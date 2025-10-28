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
        final String HelloWorld = "Hello World";
        if (N == 1) {
            System.out.println (HelloWorld);
        } else {
            int A = Integer.parseInt (reader.readLine());
            int B = Integer.parseInt (reader.readLine());
            System.out.println (A + B);
        }
        return;
    }
}