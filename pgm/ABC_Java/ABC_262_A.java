import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int Y = Integer.parseInt (reader.readLine());
        final int two = 2;
        final int four = 4;
        final int mod = Y % four;
        int year = Y + (four - two) - mod;
        if (mod > two) {
            year += four;
        }
        System.out.println (year);
        return;
    }
}