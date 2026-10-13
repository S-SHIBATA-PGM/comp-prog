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
        const int one = 1;
        const int zero = 0;
        int time = zero;
        int water = zero;
        for (int i = zero; i < N; i++)
        {
            int[] TV = Array.ConvertAll(Console.ReadLine().Split(' '), int.Parse);
            int t = TV[zero];
            int v = TV[one];
            water = Math.Max(zero, water - t + time);
            water += v;
            time = t;
        }
        Console.WriteLine(water);
        Environment.Exit(0);
    }
}