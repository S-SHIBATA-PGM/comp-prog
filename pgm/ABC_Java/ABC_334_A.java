import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] BG = reader.readLine().split (" ");
        final String Bat = "Bat";
        final String Glove = "Glove";
        final int B = Integer.parseInt (BG[0]);
        final int G = Integer.parseInt (BG[1]);
        System.out.println (B > G ? Bat : Glove);
        return;
    }
}