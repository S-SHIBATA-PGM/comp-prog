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
        const string target = "#.#";
        string pattern = $"{Regex.Escape(target)}";
        Console.WriteLine(
            Regex.Matches(S, $"(?={Regex.Escape(target)})").Count);
        Environment.Exit(0);
    }
}