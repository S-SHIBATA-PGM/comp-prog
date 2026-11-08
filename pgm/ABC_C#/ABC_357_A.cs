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
        const int zero = 0;
        int M = int.Parse(arr[one]);
        int[] H = Array.ConvertAll(
            Console.ReadLine().Trim().Split(' '), int.Parse);
        int cnt = zero;
        int sum = zero;
        foreach (int h in H)
        {
            sum += h;
            if (sum > M)
            {
                break;
            }
            cnt++;
        }
        Console.WriteLine(cnt);
        Environment.Exit(0);
    }
}