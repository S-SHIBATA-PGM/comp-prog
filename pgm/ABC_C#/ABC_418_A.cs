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
        Console.ReadLine();
        String S = Console.ReadLine();
        const string Yes = "Yes";
        const string No = "No";
        const string tea = "tea";
        Console.WriteLine(S.EndsWith(tea) ? Yes : No);
        Environment.Exit(0);
    }
}