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
        int N = int.Parse(Console.ReadLine());
        string[] S = new string[N];
        const string Yes = "Yes";
        const string No = "No";
        const char space = ' ';
        const int one = 1;
        const int zero = 0;
        for (int i = zero; i < N; i++)
        {
            S[i] = Console.ReadLine();
        }
        string[] arr = Console.ReadLine().Split(space);
        int X = int.Parse(arr[zero]);
        string Y = arr[one];
        Console.WriteLine(S[X - one] == Y ? Yes : No);
        Environment.Exit(0);
    }
}