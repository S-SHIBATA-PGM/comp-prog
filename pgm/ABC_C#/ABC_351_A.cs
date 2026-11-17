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
        int[] A = Array.ConvertAll(
            Console.ReadLine().Trim().Split(' '), int.Parse);
        int[] B = Array.ConvertAll(
            Console.ReadLine().Trim().Split(' '), int.Parse);
        const int one = 1;
        Console.WriteLine(A.Sum() - B.Sum() + one);
        Environment.Exit(0);
    }
}