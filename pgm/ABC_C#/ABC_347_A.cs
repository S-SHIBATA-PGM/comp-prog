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
        const char cSpace = ' ';
        const int one = 1;
        const int zero = 0;
        string[] arr = Console.ReadLine().Split(cSpace);
        int[] A = Array.ConvertAll(Console.ReadLine().Split(cSpace), int.Parse);
        int N = int.Parse(arr[zero]);
        int K = int.Parse(arr[one]);
        Console.WriteLine(
            string.Join(
                cSpace,
                A
                .Where(a => a % K == zero)
                .Select(a => a / K)
            )
        );
        Environment.Exit(0);
    }
}