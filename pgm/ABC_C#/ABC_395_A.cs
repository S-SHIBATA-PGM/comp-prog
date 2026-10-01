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
        const String Yes = "Yes";
        const String No = "No";
        const int one = 1;
        const int zero = 0;
        int len = A.Length;
        Console.WriteLine(
            Enumerable.Range(zero, len - one)
                .All(i => A[i] < A[i + one])
            ? Yes
            : No
        );
        Environment.Exit(0);
    }
}