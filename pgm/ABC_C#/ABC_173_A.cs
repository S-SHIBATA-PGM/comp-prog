using System;
// using System.Collections.Generic;
// using System.Linq;
// using System.Text;

class Program
{
    static void Main()
    {
        int N = int.Parse(Console.ReadLine());
        Console.WriteLine((1000 - N % 1000) % 1000);
        return;
    }
}