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
        string S = Console.ReadLine();
        string T = Console.ReadLine();
        int cnt = 0;
        for (int i = 0; i < N; i++)
        {
            if (S[i] != T[i])
            {
                cnt++;
            }
        }
        Console.WriteLine(cnt);
        return;
    }
}