// (N * (L + (L + N - 1))) / 2
// (N * (2 * L + N - 1)) / 2
using System;
// using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
// using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions

class Program
{
    static void Main()
    {
        string[] arr = Console.ReadLine().Split();
        int N, L;
        N = int.Parse(arr[0]);
        L = int.Parse(arr[1]);
        int ans = (N * (2 * L + N - 1)) / 2;
        if (0 < L) ans -= L;
        else if (L + N - 1 < 0) ans -= L + N - 1;
        Console.WriteLine(ans);
        return;
    }
}