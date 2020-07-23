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
        int N = int.Parse(Console.ReadLine());
        int ans = 0;
        for (int i = 1; i < N + 1; i++)
            if ((Math.Floor(Math.Log10(i)) + 1) % 2 == 1) ans++;
        Console.WriteLine(ans);
        return;
    }
}