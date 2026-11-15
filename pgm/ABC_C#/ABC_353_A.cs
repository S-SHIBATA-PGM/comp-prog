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
        int[] H = Array.ConvertAll(
            Console.ReadLine().Trim().Split(' '), int.Parse);
        const int one = 1;
        const int zero = 0;
        int idx = -one;
        int H1 = H[zero];
        for (int i = zero; i < N; i++)
        {
            if (H[i] > H1)
            {
                idx = i + one;
                break;
            }
        }
        Console.WriteLine(idx);
        Environment.Exit(0);
    }
}