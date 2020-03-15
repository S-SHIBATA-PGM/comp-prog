using System;
using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        int N = int.Parse(Console.ReadLine());
        string S = Console.ReadLine();
        Regex reg = new Regex("ABC");
        Console.WriteLine(reg.Matches(S).Count);
    }
}