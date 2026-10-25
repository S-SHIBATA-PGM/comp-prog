using System;
using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
// using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        string[] S = Console.ReadLine().Split(' ');
        const string gt = ">";
        const char cA = 'A';
        const char cB = 'B';
        const char cC = 'C';
        const int one = 1;
        const int two = 2;
        const int zero = 0;

        void RankABC(string s, char a, char b, List<char> list)
        {
            int indexA = list.IndexOf(a);
            int indexB = list.IndexOf(b);
            if (s == gt)
            {
                if (indexA > indexB)
                {
                    list.RemoveAt(indexA);
                    list.Insert(indexB, a);
                }
            }
            else
            {
                if (indexA < indexB)
                {
                    list.RemoveAt(indexB);
                    list.Insert(indexA, b);
                }
            }
        }

        List<char> abc = [cA, cB, cC];
        RankABC(S[zero], cA, cB, abc);
        RankABC(S[one], cA, cC, abc);
        RankABC(S[two], cB, cC, abc);
        Console.WriteLine(abc[one]);
        Environment.Exit(0);
    }
}