using System;
using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        int[] A = Array.ConvertAll(Console.ReadLine().Split(' '), int.Parse);
        const string Yes = "Yes";
        const string No = "No";
        const int one = 1;
        const int zero = 0;
        int len = A.Length;
        List<int> indice = new();
        for (int i = zero; i < len - one; i++)
        {
            if (A[i] > A[i + one])
            {
                indice.Add(i);
            }
        }
        if (indice.Count == one)
        {
            int idx = indice[zero];
            int[] swap = (int[])A.Clone();
            (swap[idx], swap[idx + one]) = (swap[idx + one], swap[idx]);
            bool isStrictlyIncreasing = Enumerable.Range(zero, len - one)
                .All(i => swap[i] < swap[i + one]);
            Console.WriteLine(isStrictlyIncreasing ? Yes : No);
        }
        else
        {
            Console.WriteLine(No);
        }
        Environment.Exit(0);
    }
}