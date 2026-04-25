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
        final String[] arr = reader.readLine().split (" ");
        reader.close();
        final String Yes = "Yes";
        final String No = "No";
        final int M1 = 1;
        final int M3 = 3;
        final int M5 = 5;
        final int M7 = 7;
        final int M9 = 9;
        final int D3 = 3;
        final int D5 = 5;
        final int D7 = 7;
        final int D9 = 9;
        final int one = 1;
        final int zero = 0;
        final int M = Integer.parseInt (arr[zero]);
        final int D = Integer.parseInt (arr[one]);
        Set<Gosekku> g = new HashSet<>();
        g.add (new Gosekku (M1, D7));
        g.add (new Gosekku (M3, D3));
        g.add (new Gosekku (M5, D5));
        g.add (new Gosekku (M7, D7));
        g.add (new Gosekku (M9, D9));
        System.out.println (g.contains (new Gosekku (M, D)) ? Yes : No);
        System.exit (0);
    }
}

class Gosekku {
    private final int M, D;
    public Gosekku (int M, int D) {
        this.M = M;
        this.D = D;
    }

    @Override
    public boolean equals (Object o) {
        if (this == o)
            return true;
        if (!(o instanceof Gosekku g))
            return false;
        return M == g.M && D == g.D;
    }

    @Override
    public int hashCode() {
        return Objects.hash (M, D);
    }
}