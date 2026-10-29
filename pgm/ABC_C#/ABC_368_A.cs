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
        const string space = " ";
        const int one = 1;
        const int zero = 0;
        int K = int.Parse(arr[one]);
        int[] A = Array.ConvertAll(
            Console.ReadLine().Trim().Split(' '), int.Parse);
        int len = A.Length;
        static void ReverseArray(int[] arr, int start, int end)
        {
            int i = start;
            int j = end - one;
            while (i < j)
            {
                int keep = arr[i];
                arr[i] = arr[j];
                arr[j] = keep;
                i++;
                j--;
            }
        }
        ReverseArray(A, zero, len);
        ReverseArray(A, zero, K);
        ReverseArray(A, K, len);
        Console.WriteLine(string.Join(space, A));
        Environment.Exit(0);
    }
}