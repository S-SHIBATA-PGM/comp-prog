using System;
// using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
// using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        int[] A = Array.ConvertAll(Console.ReadLine().Split(' '), int.Parse);
        const String Yes = "Yes";
        const String No = "No";
        const int one = 1;
        const int two = 2;
        const int zero = 0;
        Array.Sort(A);
        Console.WriteLine(A[zero] * A[one] == A[two] ? Yes : No);
        Environment.Exit(0);
    }
}