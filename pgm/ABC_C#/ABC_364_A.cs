using System;
using System.Collections.Generic;
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
        const string Yes = "Yes";
        const string No = "No";
        const string sweet = "sweet";
        const int one = 1;
        const int two = 2;
        const int zero = 0;
        List<string> S = [];
        for (int i = zero; i < N; i++)
        {
            S.Add(Console.ReadLine());
        }
        bool hasConsecutiveSweet = false;
        for (int i = zero; i < N - two; i++)
        {
            if (S[i] == sweet && S[i + one] == sweet)
            {
                hasConsecutiveSweet = true;
                break;
            }
        }
        Console.WriteLine(hasConsecutiveSweet ? No : Yes);
        Environment.Exit(0);
    }
}