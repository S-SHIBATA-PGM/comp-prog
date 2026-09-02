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
        int N = int.Parse(Console.ReadLine());
        const int one = 1;
        const int zero = 0;
        int cnt = zero;
        for (int i = one; i <= N; i++)
        {
            string[] arr = Console.ReadLine().Split(' ');
            int A = int.Parse(arr[zero]);
            int B = int.Parse(arr[one]);
            if (A < B)
            {
                cnt++;
            }
        }
        Console.WriteLine(cnt);
        Environment.Exit(0);
    }
}