using System;
using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions

class Program
{
    static void Main()
    {
        string S = Console.ReadLine();
        HashSet<char> hs = new HashSet<char>(S);
        if (hs.Count() != 2) Console.WriteLine("No");
        else
        {
            int cnt = 0;
            foreach (char c in hs) if (S.Count(x => x == c) == 2) cnt++;
            if (cnt == 2) Console.WriteLine("Yes");
            else Console.WriteLine("No");
        }
        return;
    }
}