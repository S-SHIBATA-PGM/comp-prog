using System;
// using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
// using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions

class Program
{
    static void Main()
    {
        string S = Console.ReadLine();
        int N = int.Parse(Console.ReadLine());
        const int one = 1;
        const int two = 2;
        Console.WriteLine(S.Substring(N, S.Length - (N * two)));
        Environment.Exit(0);
    }
}