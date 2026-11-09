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
        const char cSpace = ' ';
        const int one = 1;
        const int two = 2;
        const int zero = 0;
        string[] arr = Console.ReadLine().Split(cSpace);
        int N = int.Parse(arr[zero]);
        int L = int.Parse(arr[one]);
        int R = int.Parse(arr[two]);
        int[] A = Enumerable.Range(one, N).ToArray();
        ReverseArray(A, L - one, R - one);
        Console.WriteLine(string.Join(cSpace, A));
        Environment.Exit(0);
    }
    static void ReverseArray(int[] arr, int start, int end)
    {
        int i = start;
        int j = end;
        while (i < j)
        {
            int keep = arr[i];
            arr[i] = arr[j];
            arr[j] = keep;
            i++;
            j--;
        }
    }
}