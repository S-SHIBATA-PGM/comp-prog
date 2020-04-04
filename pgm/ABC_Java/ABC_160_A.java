import java.io.*;

public class Main {
    static Character[] toCharacterArray (String s) {
        if (s == null) {
            return null;
        }
        int len = s.length();
        Character[] array = new Character[len];
        for (int i = 0; i < len; i++) {
            array[i] = new Character (s.charAt (i));
        }
        return array;
    }
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        Character[] S = toCharacterArray (reader.readLine());
        boolean flg = S[2].equals (S[3]) && S[4].equals (S[5]);
        System.out.println (flg ? "Yes" : "No");
    }
}