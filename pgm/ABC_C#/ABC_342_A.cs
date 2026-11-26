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
        const int only = 1;
        const int one = 1;
        Console.WriteLine(
            S.IndexOf(
                S.GroupBy(c => c)
                    .First(g => g.Count() == only)
                    .Key
            ) + one
        );
        Environment.Exit(0);
    }
}