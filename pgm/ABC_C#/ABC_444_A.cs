using System;
// using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        string S = Console.ReadLine();
        const string Yes = "Yes";
        const string No = "No";
        const int zero = 0;
        Console.WriteLine(S.All(s => s == S[zero]) ? Yes : No);
        Environment.Exit(0);
    }
}