using System;
// using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
// using System.Linq;
// using System.Text;
using System.Text.RegularExpressions;

partial class Program
{
    [GeneratedRegex(@"\.+")] private static partial Regex pattern();
    static void Main()
    {
        string S = Console.ReadLine();
        const string blank = "";
        Console.WriteLine(pattern().Replace(S, blank));
        Environment.Exit(0);
    }
}