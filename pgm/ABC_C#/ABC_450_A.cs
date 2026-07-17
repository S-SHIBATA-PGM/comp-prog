using System;
// using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions

class Program
{
    static void Main()
    {
        int N = int.Parse(Console.ReadLine());
        const string comma = ",";
        const int one = 1;
        Console.WriteLine(string.Join(comma,
            Enumerable.Range(one, N)
                .Reverse()
                .Select(x => x.ToString())
        ));
        Environment.Exit(0);
    }
}