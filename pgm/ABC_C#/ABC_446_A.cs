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
        const string Of = "Of";
        const int one = 1;
        const int zero = 0;
        Console.WriteLine(
            string.Concat(Of, char.ToLower(S[zero]) + S.Substring(one)));
        Environment.Exit(0);
    }
}