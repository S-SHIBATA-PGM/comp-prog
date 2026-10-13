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
        string[] arr = Console.ReadLine().Split(' ');
        const int one = 1;
        const int two = 2;
        const int zero = 0;
        char c1 = arr[one][zero];
        char c2 = arr[two][zero];
        string S = Console.ReadLine();
        Console.WriteLine(string.Concat(S.Select(c => c == c1 ? c1 : c2)));
        Environment.Exit(0);
    }
}