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
        int N, A, B;
        N = int.Parse(arr[0]);
        A = int.Parse(arr[1]);
        B = int.Parse(arr[2]);
        Console.WriteLine(Math.Min(A * N, B));
        return;
    }
}