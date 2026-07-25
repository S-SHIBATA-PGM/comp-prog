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
        Console.ReadLine();
        string S = Console.ReadLine();
        const string caret = "^";
        const string plus = "+";
        const string o = "o";
        const string black = "";
        string pattern = string.Concat(caret, o, plus);
        Console.WriteLine(Regex.Replace(S, pattern, black));
        Environment.Exit(0);
    }
}