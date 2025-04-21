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
        final String pi = "3."
                          + "14159265358979323846264338327950288419716939937510"
                          +
                          "58209749445923078164062862089986280348253421170679";
        System.out.println (pi.substring (0, N + 2));
        return;
    }
}