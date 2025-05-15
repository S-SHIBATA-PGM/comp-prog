import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        List<String> S = Arrays.stream (reader.readLine().split (""))
                             .collect (Collectors.toList());
        final String zero = "0";
        S.remove (S.size() - 1);
        S.add (0, zero);
        System.out.println (String.join ("", S));
        return;
    }
}