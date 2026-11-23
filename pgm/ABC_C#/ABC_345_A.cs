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
        string S = Console.ReadLine();
        const string Yes = "Yes";
        const string No = "No";
        const char lt = '<';
        const char eq = '=';
        const char gt = '>';
        const int one = 1;
        const int two = 2;
        int len = S.Length;
        Console.WriteLine(
            S.StartsWith(lt)
                && S.EndsWith(gt)
                && S.Substring(one, len - two) == new string(eq, len - two)
            ? Yes
            : No
        );
        Environment.Exit(0);
    }
}