using System;
// using System.Collections.Generic;
// using System.Linq;
// using System.Text;

class Program
{
    static void Main()
    {
        int N = int.Parse(Console.ReadLine());
        string S = Console.ReadLine();
        Console.WriteLine(N % 2 == 0 ?
            S.Substring(0, N / 2) == S.Substring(N / 2) ? "Yes" : "No" : "No");
        return;
    }
}