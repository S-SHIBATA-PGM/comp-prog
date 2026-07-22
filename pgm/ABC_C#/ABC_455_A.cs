using System;
// using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
// using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions

class Program
{
    static void Main()
    {
        string[] arr = Console.ReadLine().Split();
        const string Yes = "Yes";
        const string No = "No";
        const int one = 1;
        const int two = 2;
        const int zero = 0;
        int A = int.Parse(arr[zero]);
        int B = int.Parse(arr[one]);
        int C = int.Parse(arr[two]);
        Console.WriteLine(A != B && B == C ? Yes : No);
        Environment.Exit(0);
    }
}