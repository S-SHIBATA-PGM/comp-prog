import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        char[] S = reader.readLine().toCharArray();
        final int zero = 0;
        final int nine = 9;
        Arrays.sort (S);
        for (int i = zero; i < nine; i++) {
            if (i != Character.getNumericValue (S[i])) {
                System.out.println (i);
                break;
            } else if (i == nine - 1) {
                System.out.println (nine);
            }
        }
        return;
    }
}