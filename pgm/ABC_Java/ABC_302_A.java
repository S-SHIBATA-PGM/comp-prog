import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        final long A = Long.parseLong (arr[0]);
        final long B = Long.parseLong (arr[1]);
        System.out.println ((A + B - 1) / B);
        return;
    }
}