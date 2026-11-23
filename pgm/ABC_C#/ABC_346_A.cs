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
        const char cSpace = ' ';
        const int one = 1;
        const int zero = 0;
        int[] A = Array.ConvertAll(Console.ReadLine().Split(cSpace), int.Parse);
        Console.WriteLine(
            string.Join(
                cSpace
                , Enumerable.Range(zero, A.Length - one)
                    .Select(i => A[i] * A[i + one])
            )
        );
        Environment.Exit(0);
    }
}