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
        int K = int.Parse(Console.ReadLine());
        Console.WriteLine(A.Count(a => a >= K));
        Environment.Exit(0);
    }
}