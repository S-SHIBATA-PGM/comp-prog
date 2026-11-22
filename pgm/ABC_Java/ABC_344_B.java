import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader br =
            new BufferedReader (new InputStreamReader (System.in));
        List<Integer> A = new ArrayList<>();
        String line;
        while ((line = br.readLine()) != null) {
            A.add (Integer.parseInt (line));
        }
        br.close();
        final int one = 1;
        final int zero = 0;
        PrintWriter out = new PrintWriter (System.out);
        for (int i = A.size() - one; i >= zero; i--) {
            out.println (A.get (i));
        }
        out.flush();
        System.exit (0);
    }
}