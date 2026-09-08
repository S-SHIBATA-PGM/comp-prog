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
        const string Yes = "Yes";
        const string No = "No";
        const char cSpace = ' ';
        const int zero = 0;
        const int one = 1;
        string[] arr = Console.ReadLine().Split(cSpace);
        int N = int.Parse(arr[zero]);
        int S = int.Parse(arr[one]);
        int[] T = Array.ConvertAll(Console.ReadLine().Split(cSpace), int.Parse);
        int pre = zero;
        bool isAwake = true;
        foreach (int t in T)
        {
            if (S < t - pre)
            {
                isAwake = false;
                break;
            }
            pre = t;
        }
        Console.WriteLine(isAwake ? Yes : No);
        Environment.Exit(0);
    }
}