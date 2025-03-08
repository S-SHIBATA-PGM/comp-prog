import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;
// import java.util.Arrays;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        char[] N = reader.readLine().toCharArray();
        System.out.println (new StringBuilder()
                                .append (N[1])
                                .append (N[2])
                                .append (N[0])
                                .append (" ")
                                .append (N[2])
                                .append (N[0])
                                .append (N[1])
                                .toString());
        return;
    }
}