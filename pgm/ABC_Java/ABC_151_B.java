import java.io.*;
import java.util.*;
import java.util.stream.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String[] arr = reader.readLine().split(" ");
        int N = Integer.parseInt(arr[0]), K = Integer.parseInt(arr[1]), M = Integer.parseInt(arr[2]);
        arr = reader.readLine().split(" ");
        int[] A = Stream.of(arr).mapToInt(Integer::parseInt).toArray();
        int ans = N * M - Arrays.stream(A).sum();
        System.out.println(ans < 0 ? 0 : K < ans ? -1 : ans);
    }
}