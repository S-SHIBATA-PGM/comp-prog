using System;
// using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
// using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        String S = Console.ReadLine();
        const string Yes = "Yes";
        const string No = "No";
        const int end = 349;
        const int cancel = 316;
        const int three = 3;
        const int zero = 0;
        int edition = int.Parse(S.Substring(three, three));
        Console.WriteLine(
            edition <= end && edition != cancel && edition != zero ? Yes : No);
        Environment.Exit(0);
    }
}