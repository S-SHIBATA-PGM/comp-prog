using System;
// using System.Collections.Generic;

class Program
{
    static void Main()
    {
        String line = Console.ReadLine();
        Console.WriteLine(line.IndexOf("7") == -1 ? "No" : "Yes");
    }
}