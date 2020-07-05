using System;
// using System.Collections.Generic;
// using System.Linq;
// using System.Text;

class Program
{
    static void Main()
    {
        string S = Console.ReadLine();
        string O = "RUD";
        string E = "LUD";
        bool flg = true;
        for (int i = 0; i < S.Length; i++)
        {
            if (1 == (i + 1) % 2 && !O.Contains(S[i]))
            {
                flg = false;
                break;
            }
            if (1 == i % 2 && !E.Contains(S[i]))
            {
                flg = false;
                break;
            }
        }
        Console.WriteLine(flg ? "Yes" : "No");
        return;
    }
}