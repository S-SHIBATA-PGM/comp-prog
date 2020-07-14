import java.io.*;
// import java.math.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

@SuppressWarnings ("unchecked")
public class Main {
    public static <T> List<List<T>> zip (List<T>... lists) {
        List<List<T>> zipped = new ArrayList<List<T>>();
        for (List<T> list : lists) {
            for (int i = 0, listSize = list.size(); i < listSize; i++) {
                List<T> list2;
                if (i >= zipped.size())
                    zipped.add (list2 = new ArrayList<T>());
                else
                    list2 = zipped.get (i);
                list2.add (list.get (i));
            }
        }
        return zipped;
    }
    static List<Character> toCharacterList (String s) {
        if (s == null) {
            return null;
        }
        int len = s.length();
        List<Character> lst = new ArrayList<Character>();
        for (int i = 0; i < len; i++) {
            lst.add (Character.valueOf (s.charAt (i)));
        }
        return lst;
    }
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        List<Character> S = toCharacterList (reader.readLine());
        List<Character> T = toCharacterList (reader.readLine());
        List<List<Character>> z = zip (S, T);
        int ans = 0;
        for (List<Character> v : z) {
            if (v.get (0).equals (v.get (1)))
                ans++;
        }
        System.out.println (ans);
        return;
    }
}