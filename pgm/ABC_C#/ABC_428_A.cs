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
        const int two = 2;
        const int three = 3;
        const int zero = 0;
        int S = int.Parse(arr[zero]);
        int A = int.Parse(arr[one]);
        int B = int.Parse(arr[two]);
        int X = int.Parse(arr[three]);
        Console.WriteLine(S * A * (X / (A + B)) + S * Math.Min(A, X % (A + B)));
        Environment.Exit(0);
    }
}