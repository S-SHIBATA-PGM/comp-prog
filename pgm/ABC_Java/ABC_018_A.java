import java.io.*;
// import java.math.*;
// import java.time.*;
import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int A = Integer.parseInt (reader.readLine());
        final int B = Integer.parseInt (reader.readLine());
        final int C = Integer.parseInt (reader.readLine());
        final String strA = "A";
        final String strB = "B";
        final String strC = "C";
        final int zero = 0;
        List<Mame> list = new ArrayList<>();
        list.add (new Mame (strA, A, zero));
        list.add (new Mame (strB, B, zero));
        list.add (new Mame (strC, C, zero));
        list.sort ((m1, m2) -> {
            int ret = Integer.compare (m2.point, m1.point);
            if (ret == zero)
                ret = m2.abc.compareTo (m1.abc);
            return ret;
        });
        for (int i = 0; i < list.size(); i++) {
            list.get (i).rank = i + 1;
        }
        list.sort ((m1, m2) -> m1.abc.compareTo (m2.abc));
        for (Mame m : list) {
            System.out.println (m.rank);
        }
        System.exit (0);
    }
}

class Mame {
    String abc;
    int point;
    int rank;

    Mame (String abc, int point, int rank) {
        this.abc = abc;
        this.point = point;
        this.rank = rank;
    }
}