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
        int[] ABC =
            Array.ConvertAll(Console.ReadLine().Split(' '), int.Parse);
        const string Yes = "Yes";
        const string No = "No";
        const int one = 1;
        const int two = 2;
        const int zero = 0;
        Array.Sort(ABC);
        (int A, int B, int C) = (ABC[zero], ABC[one], ABC[two]);
        Console.WriteLine((A == B && B == C) || (A + B == C) ? Yes : No);
        Environment.Exit(0);
    }
}