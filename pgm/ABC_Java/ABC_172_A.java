import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        int a = Integer.parseInt (reader.readLine());
        System.out.println (
            String.format ("%.0f", a + Math.pow (a, 2) + Math.pow (a, 3)));
        return;
    }
}