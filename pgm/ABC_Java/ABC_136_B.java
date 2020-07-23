import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        int N = Integer.parseInt (reader.readLine());
        int ans = 0;
        for (int i = 1; i < N + 1; i++)
            if ((Math.floor (Math.log10 (i)) + 1) % 2 == 1)
                ans++;
        System.out.println (ans);
        return;
    }
}