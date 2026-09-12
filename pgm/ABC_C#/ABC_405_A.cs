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
        const int lower1 = 1600;
        const int lower2 = 1200;
        const int upper1 = 2999;
        const int upper2 = 2399;
        const int one = 1;
        const int zero = 0;
        int R = int.Parse(arr[zero]);
        int X = int.Parse(arr[one]);
        int[] lower = { lower1, lower2 };
        int[] upper = { upper1, upper2 };
        Console.WriteLine(
            lower[X - one] <= R && R <= upper[X - one] ? Yes : No);
        Environment.Exit(0);
    }
}