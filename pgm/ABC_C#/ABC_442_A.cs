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
        const string pipe = "|";
        const string i = "i";
        const string j = "j";
        const string fmt = i + pipe + j;
        Console.WriteLine(Regex.Matches(S, fmt).Count);
        Environment.Exit(0);
    }
}