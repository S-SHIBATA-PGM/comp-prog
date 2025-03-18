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
        final String Yes = "Yes";
        final String No = "No";
        final String AtCoder = "AtCoder";
        final String Land = "Land";
        System.out.println (
            AtCoder.equals (arr[0]) && Land.equals (arr[1]) ? Yes : No);
        return;
    }
}