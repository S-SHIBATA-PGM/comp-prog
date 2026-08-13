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
        const String Yes = "Yes";
        const String No = "No";
        const int one = 1;
        const int two = 2;
        const int zero = 0;
        int X = int.Parse(arr[zero]);
        int Y = int.Parse(arr[one]);
        int Z = int.Parse(arr[two]);
        // 計算過程
        // X + k = Z * (Y + k)
        // X + k = Z * Y + Z * k
        // k - Z * k = Z * Y - X
        // k(1 - Z) = Z * Y - X
        // k(Z - 1) = X - Z * Y
        // k = (X - Z * Y) / (Z - 1)
        Console.WriteLine(
            (X - Y * Z) >= zero && (X - Y * Z) % (Z - one) == zero ? Yes : No);
        Environment.Exit(0);
    }
}