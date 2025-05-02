import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        int N = Integer.parseInt (reader.readLine());
        String line = "";
        List<String> S = new ArrayList<>();
        while ((line = reader.readLine()) != null) {
            S.add (line);
        }
        Collections.reverse (S);
        for (int i = 0; i < N; i++) {
            System.out.println (S.get (i));
        }
        return;
    }
}