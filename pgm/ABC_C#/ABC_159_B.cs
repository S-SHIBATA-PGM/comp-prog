using System;
// using System.Collections.Generic;

class Program
{
    static bool checkPal(string s)
    {
        char[] arr = s.ToCharArray();
        Array.Reverse(arr);
        return s == new string(arr);
    }

    static void Main()
    {
        String S = Console.ReadLine();
        String str = S.Substring(0, S.Length / 2);
        Console.WriteLine(checkPal(S) && checkPal(str) ? "Yes" : "No");
    }
}