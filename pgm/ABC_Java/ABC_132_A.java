import java.io.*;
// import java.math.*;
import java.util.*;
import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        String[] S = reader.readLine().split ("");
        Counter<String> c = new Counter<String>();
        Arrays.stream (S).forEach (v -> c.add (v));
        System.out.println (c.size() == 2 && c.get (S[0]) == 2 ? "Yes" : "No");
        return;
    }
}

// JDK 1.8 Map.getOrDefault
class Counter<T> {
    private Map<T, Integer> map = new HashMap<>();

    public void add (T key) {
        int v = get (key);
        map.put (key, v + 1);
    }

    public int get (T key) {
        return map.getOrDefault (key, 0);
    }

    public Set<T> keySet() {
        return map.keySet();
    }

    public Set<Entry<T, Integer>> entrySet() {
        return map.entrySet();
    }

    public Collection<Integer> values() {
        return map.values();
    }

    public int size() {
        return map.size();
    }
}