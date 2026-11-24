using System;
// using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
// using System.Linq;
// using System.Text;
using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        string S = Console.ReadLine();
        const string pattern = @"\|.*\|";
        const string blank = "";
        Console.WriteLine(Regex.Replace(S, pattern, blank));
        Environment.Exit(0);
    }
}