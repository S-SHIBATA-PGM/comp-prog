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
        const int two = 2;
        const int zero = 0;
        string[] arr = Console.ReadLine().Split(cSpace);
        int N = int.Parse(arr[zero]);
        int K = int.Parse(arr[one]);
        int X = int.Parse(arr[two]);
        int[] A = Array.ConvertAll(
            Console.ReadLine().Trim().Split(cSpace), int.Parse);
        Console.WriteLine(
            string.Join(cSpace, A.Take(K).Append(X).Concat(A.Skip(K))));
        Environment.Exit(0);
    }
}