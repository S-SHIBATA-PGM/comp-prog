import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int N = Integer.parseInt (reader.readLine());
        final String sp = " ";
        final String sZero = "0";
        final int one = 1;
        final int zero = 0;
        List<List<Integer>> data = Stream.generate (ArrayList<Integer>::new)
                                       .limit (N)
                                       .collect (Collectors.toList());
        for (int i = zero; i < N; i++) {
            String line = reader.readLine();
            StringTokenizer st = new StringTokenizer (line);
            int K = Integer.parseInt (st.nextToken());
            for (int j = zero; j < K; j++) {
                data.get (Integer.parseInt (st.nextToken()) - one)
                    .add (i + one);
            }
        }
        reader.close();
        for (List<Integer> row : data) {
            String elm = row.stream()
                             .map (String::valueOf)
                             .collect (Collectors.joining (sp));
            System.out.println (row.isEmpty() ? sZero : row.size() + sp + elm);
        }
        System.exit (0);
    }
}