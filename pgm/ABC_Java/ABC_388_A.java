import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String S = reader.readLine();
        final String UPC = "UPC";
        System.out.println (S.substring (0, 1).concat (UPC));
        return;
    }
}