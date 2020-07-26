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
        string S = Console.ReadLine();
        bool flg = false;
        for (int i = 1; i < S.Length; i++)
        {
            if (S[i - 1] == S[i])
            {
                flg = true;
                break;
            }
        }
        Console.WriteLine(flg ? "Bad" : "Good");
        return;
    }
}