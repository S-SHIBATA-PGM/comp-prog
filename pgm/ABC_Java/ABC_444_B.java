import java.io.*;
// import java.math.*;
// import java.time.*;
// import java.util.*;
// import java.util.Map.*;
// import java.util.stream.*;

public class Main {
    public static void main (String[] args) throws Exception {
        BufferedReader reader =
            new BufferedReader (new InputStreamReader (System.in));
        final String[] arr = reader.readLine().split (" ");
        final int one = 1;
        final int ten = 10;
        final int hundred = 100;
        final int thousand = 1000;
        final int tenThousand = 10000;
        final int hundredThousand = 100000;
        final int zero = 0;
        final int N = Integer.parseInt (arr[zero]);
        final int K = Integer.parseInt (arr[one]);
        int cnt = zero;
        for (int i = 0; i <= N; i++) {
            int num = i;
            int hundredThousandsPlace = num / hundredThousand;
            num -= hundredThousandsPlace * hundredThousand;
            int tenThousandsPlace = num / tenThousand;
            num -= tenThousandsPlace * tenThousand;
            int thousandsPlace = num / thousand;
            num -= thousandsPlace * thousand;
            int hundredsPlace = num / hundred;
            num -= hundredsPlace * hundred;
            int tensPlace = num / ten;
            num -= tensPlace * ten;
            int onesPlace = num;
            if (hundredThousandsPlace + tenThousandsPlace + thousandsPlace +
                    hundredsPlace + tensPlace + onesPlace ==
                K) {
                cnt++;
            }
        }
        System.out.println (cnt);
        System.exit (0);
    }
}