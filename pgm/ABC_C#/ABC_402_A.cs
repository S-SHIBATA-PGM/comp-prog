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
        const string caret = "^";
        const string hyphen = "-";
        const string lbrack = "[";
        const string rbrack = "]";
        const string A = "A";
        const string Z = "Z";
        const string blank = "";
        string pattern = $"{lbrack}{caret}{A}{hyphen}{Z}{rbrack}";
        Console.WriteLine(Regex.Replace(S, pattern, blank));
        Environment.Exit(0);
    }
}