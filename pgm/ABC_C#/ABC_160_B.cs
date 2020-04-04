using System;
// using System.Collections.Generic;

class Program
{
    static void Main()
    {
        int X = int.Parse(Console.ReadLine());
        int rm = X % 500;
        Console.WriteLine(X / 500 * 1000 + rm / 5 * 5);
    }
}