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
        int X = int.Parse(Console.ReadLine());
        const string HelloWorld = "HelloWorld";
        const int one = 1;
        Console.WriteLine(HelloWorld.Remove(X - one, one));
        Environment.Exit(0);
    }
}