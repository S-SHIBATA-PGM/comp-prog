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
        Console.ReadLine();
        const string Yes = "Yes";
        const string No = "No";
        const char cSlash = '/';
        const int one = 1;
        const int two = 2;
        const int zero = 0;
        string[] S = Console.ReadLine().Split(cSlash);
        Console.WriteLine(
            (
                S.Length == two
                && S[zero].Length > zero
                && S[zero].Length == S[one].Length
                && S[zero].All(c => c == '1')
                && S[one].All(c => c == '2')
            )
            ||
            (
                S.Length == two
                && S[zero].Length == zero
                && S[one].Length == zero
            )
            ? Yes
            : No
        );
        Environment.Exit(0);
    }
}