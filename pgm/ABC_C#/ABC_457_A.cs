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
        Console.ReadLine();
        int[] A = Console
            .ReadLine()
            .Trim()
            .Split(" ")
            .Select(int.Parse)
            .ToArray();
        int X = int.Parse(Console.ReadLine());
        const int one = 1;
        Console.WriteLine(A[X - one]);
        Environment.Exit(0);
    }
}