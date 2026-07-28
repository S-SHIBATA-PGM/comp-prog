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
        string[] arr = Console.ReadLine().Split(' ');
        const string Yes = "Yes";
        const string No = "No";
        const int one = 1;
        const int two = 2;
        const int zero = 0;
        int N = int.Parse(arr[zero]);
        int M = int.Parse(arr[one]);
        Console.WriteLine(M <= (N + one) / two ? Yes : No);
        Environment.Exit(0);
    }
}