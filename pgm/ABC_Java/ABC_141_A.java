import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String S = reader.readLine();
        String[] W = {"Sunny", "Cloudy", "Rainy"};
        System.out.println (W[(Arrays.asList (W).indexOf (S) + 1) % 3]);
        return;
    }
}