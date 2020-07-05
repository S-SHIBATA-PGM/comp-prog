using System;
// using System.Collections.Generic;
// using System.Linq;
// using System.Text;

class Program
{
    static void Main()
    {
        string S = Console.ReadLine();
        string[] W = { "Sunny", "Cloudy", "Rainy" };
        Console.WriteLine(W[(Array.IndexOf(W, S) + 1) % 3]);
        return;
    }
}