import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final char[] S = reader.readLine().toCharArray();
        final int no = -1;
        final int idx = IntStream.range (1, S.length + 1)
                            .filter (i -> Character.isUpperCase (S[i - 1]))
                            .findFirst()
                            .orElse (no);
        System.out.println (idx);
        return;
    }
}