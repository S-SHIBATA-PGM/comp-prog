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
        const int zero = 0;
        int N = int.Parse(arr[zero]);
        int L = int.Parse(arr[one]);
        int R = int.Parse(arr[two]);
        int cnt = zero;
        for (int i = zero; i < N; i++)
        {
            arr = Console.ReadLine().Split(' ');
            int X = int.Parse(arr[zero]);
            int Y = int.Parse(arr[one]);
            if (X <= L && R <= Y)
            {
                cnt++;
            }
        }
        Console.WriteLine(cnt);
        Environment.Exit(0);
    }
}