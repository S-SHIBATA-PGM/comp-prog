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
        const string OK = "OK";
        const string Too = "Too Many Requests";
        const int one = 1;
        const int zero = 0;
        int N = int.Parse(arr[zero]);
        int M = int.Parse(arr[one]);
        for (int i = one; i <= N; i++)
        {
            Console.WriteLine(i <= M ? OK : Too);
        }
        Environment.Exit(0);
    }
}