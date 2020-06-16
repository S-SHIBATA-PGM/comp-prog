import java.io.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        long N = Long.parseLong (reader.readLine());
        System.out.println (calc (1, N) - calc (3, N) - calc (5, N) +
                            calc (15, N));
        return;
    }

    static long calc (long n, long N) {
        return (n + N / n * n) * (N / n) / 2;
    }
}