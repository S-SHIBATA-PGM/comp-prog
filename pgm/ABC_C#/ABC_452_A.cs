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
        string[] arr = Console.ReadLine().Split(' ');
        const string Yes = "Yes";
        const string No = "No";
        const int M1 = 1;
        const int M3 = 3;
        const int M5 = 5;
        const int M7 = 7;
        const int M9 = 9;
        const int D3 = 3;
        const int D5 = 5;
        const int D7 = 7;
        const int D9 = 9;
        const int one = 1;
        const int zero = 0;
        int M = int.Parse(arr[zero]);
        int D = int.Parse(arr[one]);
        HashSet<Gosekku> g = new HashSet<Gosekku>();
        g.Add(new Gosekku(M1, D7));
        g.Add(new Gosekku(M3, D3));
        g.Add(new Gosekku(M5, D5));
        g.Add(new Gosekku(M7, D7));
        g.Add(new Gosekku(M9, D9));
        Console.WriteLine(g.Contains(new Gosekku(M, D)) ? Yes : No);
        Environment.Exit(0);
    }
    readonly record struct Gosekku(int M, int D);
}