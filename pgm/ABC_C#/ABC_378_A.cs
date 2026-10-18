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
        int[] A = Array.ConvertAll(Console.ReadLine().Split(' '), int.Parse);
        const int two = 2;
        Console.WriteLine(
            A.GroupBy(a => a)
            .Select(g => g.Count() / two)
            .Sum()
        );
        Environment.Exit(0);
    }
}