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
        const int one = 1;
        const int zero = 0;
        int N = int.Parse(arr[zero]);
        int M = int.Parse(arr[one]);
        int cnt = zero;
        while (M > zero) {
            cnt++;
            M = N % M;
        }
        Console.WriteLine(cnt);
        Environment.Exit(0);
    }
}