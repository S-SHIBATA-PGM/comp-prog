using System;
using System.Collections.Generic;
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
        const string Unknown = "Unknown";
        const string red = "red";
        const string blue = "blue";
        const string green = "green";
        const string SSS = "SSS";
        const string FFF = "FFF";
        const string MMM = "MMM";
        Dictionary<string, string> language = new Dictionary<string, string>
        {
            { red, SSS },
            { blue, FFF },
            { green, MMM }
        };
        Console.WriteLine(language.GetValueOrDefault(S, Unknown));
        Environment.Exit(0);
    }
}