import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        int i = Integer.parseInt (reader.readLine());
        final String zero = "0";
        String hex = Integer.toHexString (i);
        System.out.println (
            String.format ("%2s", hex).replace (" ", zero).toUpperCase());
        return;
    }
}