import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        final String zero = "0";
        final String one = "1";
        System.out.println (
            String.join ("", Collections.nCopies (N, one.concat (zero)))
                .concat (one));
        return;
    }
}