import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String S = reader.readLine();
        final String hello = "Hello,World!";
        final String AC = "AC";
        final String WA = "WA";
        if (hello.equals (S)) {
            System.out.println (AC);
        } else {
            System.out.println (WA);
        }
        return;
    }
}