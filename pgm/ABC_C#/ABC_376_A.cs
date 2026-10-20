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
        const int one = 1;
        const int zero = 0;
        int C = int.Parse(arr[one]);
        int[] T = Array.ConvertAll(Console.ReadLine().Split(' '), int.Parse);
        int prev = -C;
        int candy = zero;
        foreach (int t in T)
        {
            if (t - prev >= C)
            {
                candy++;
                prev = t;
            }
        }
        Console.WriteLine(candy);
        Environment.Exit(0);
    }
}