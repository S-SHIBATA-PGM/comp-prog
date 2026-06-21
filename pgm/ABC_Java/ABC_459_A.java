import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int X = Integer.parseInt (reader.readLine());
        reader.close();
        final String HelloWorld = "HelloWorld";
        final int one = 1;
        StringBuilder sb = new StringBuilder (HelloWorld);
        System.out.println (sb.deleteCharAt (X - one).toString());
        System.exit (0);
    }
}