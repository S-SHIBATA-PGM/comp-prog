using System;
// using System.Collections.Generic;
// using System.Linq;
using System.Text;

class Program
{
    static void Main()
    {
        int N = int.Parse(Console.ReadLine());
        string S = Console.ReadLine();
        string alp = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        Console.WriteLine(tran(S, alp, alp.Substring(N) + alp.Substring(0, N)));
        return;
    }
    static string tran(string S, string f, string t)
    {
        StringBuilder sb = new StringBuilder(S.Length);
        for (int i = 0; i < S.Length; i++)
        {
            int idx = f.IndexOf(S[i]);
            sb.Append(t[idx]);
        }
        return sb.ToString();
    }
}