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
        string[] arr = Console.ReadLine().Split(' ');
        const int one = 1;
        const int zero = 0;
        int N = int.Parse(arr[zero]);
        int X = int.Parse(arr[one]);
        int[] A = Console
            .ReadLine()
            .Trim()
            .Split(" ")
            .Select(int.Parse)
            .ToArray();
        int len = A.Length;
        for (int i = zero; i < len; i++)
        {
            if (A[i] < X)
            {
                X = A[i];
                Console.WriteLine(one);
            }
            else
            {
                Console.WriteLine(zero);
            }
        }
        Environment.Exit(0);
    }
}