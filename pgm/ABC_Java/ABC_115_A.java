import java.io.*;
// import java.math.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final int D = Integer.parseInt (reader.readLine());
        final int twentyThird = 23;
        final int twentyFourth = 24;
        final int twentyFifth = 25;
        final String Christmas = "Christmas";
        final String ChristmasEve = "Christmas Eve";
        final String ChristmasEveEve = "Christmas Eve Eve";
        final String ChristmasEveEveEve = "Christmas Eve Eve Eve";
        System.out.println (D == twentyFifth    ? Christmas
                            : D == twentyFourth ? ChristmasEve
                            : D == twentyThird  ? ChristmasEveEve
                                                : ChristmasEveEveEve);
        return;
    }
}