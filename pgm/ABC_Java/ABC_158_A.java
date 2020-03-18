import java.io.*;
import java.util.*;

public class Main {
    static Character[] toCharacterArray(String s) {
        if (s == null) {
            return null;
        }
        int len = s.length();
        Character[] array = new Character[len];
        for (int i = 0; i < len; i++) {
            array[i] = new Character(s.charAt(i));
        }
        return array;
    }

    public static void main(String[] args) throws Exception {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        String arr = reader.readLine();

        Set<Character> S = new HashSet<Character>(Arrays.asList(toCharacterArray(arr)));
        System.out.println(1 < S.size() ? "Yes" : "No");
    }
}