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
        const int two = 2;
        const int zero = 0;
        Console.WriteLine(
            (int)char.GetNumericValue(S[zero])
            * (int)char.GetNumericValue(S[two]));
        Environment.Exit(0);
    }
}