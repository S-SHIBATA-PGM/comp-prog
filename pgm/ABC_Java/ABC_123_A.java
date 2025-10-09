import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String no = ":(";
        final String Yay = "Yay!";
        final int init = -1;
        int a = init;
        int e = init;
        int k = init;
        int coordinate = init;
        String line = "";
        while ((line = reader.readLine()) != null) {
            coordinate = Integer.parseInt (line);
            a = a == init ? coordinate : a;
            e = k;
            k = coordinate;
        }
        System.out.println (e - a > k ? no : Yay);
        return;
    }
}