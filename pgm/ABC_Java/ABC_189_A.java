import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] C = reader.readLine().split ("");
        final int one = 1;
        final int two = 2;
        final int zero = 0;
        final String Won = "Won";
        final String Lost = "Lost";
        System.out.println (
            C[zero].equals (C[one]) && C[one].equals (C[two]) ? Won : Lost);
        return;
    }
}