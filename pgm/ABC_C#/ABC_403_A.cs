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
        int[] A = Array.ConvertAll(Console.ReadLine().Split(' '), int.Parse);
        const int two = 2;
        const int zero = 0;
        Console.WriteLine(A.Where((a, i) => i % two == zero).Sum());
        Environment.Exit(0);
    }
}