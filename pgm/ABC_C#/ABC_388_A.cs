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
        string S = Console.ReadLine();
        const string UPC = "UPC";
        const int zero = 0;
        Console.WriteLine(string.Concat(S[zero], UPC));
        Environment.Exit(0);
    }
}