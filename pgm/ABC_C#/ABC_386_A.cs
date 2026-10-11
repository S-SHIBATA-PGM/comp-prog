using System;
using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        int[] ABCD =
            Array.ConvertAll(Console.ReadLine().Split(' '), int.Parse);
        const String Yes = "Yes";
        const String No = "No";
        const int one = 1;
        const int two = 2;
        const int three = 3;
        const int zero = 0;
        IEnumerable<int> cnt = ABCD.GroupBy(x => x).Select(g => g.Count());
        int threeCard = zero;
        int pair = zero;
        foreach (int c in cnt)
        {
            if (c == three)
            {
                threeCard++;
                break;
            }
            else if (c == two)
            {
                pair++;
            }
        }
        Console.WriteLine(threeCard == one || pair == two ? Yes : No);
        Environment.Exit(0);
    }
}