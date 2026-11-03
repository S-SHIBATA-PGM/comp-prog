using System;
using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        string[] arr = Console.ReadLine().Split(' ');
        string C = Console.ReadLine();
        const string Red = "Red";
        const string Green = "Green";
        const string Blue = "Blue";
        const int one = 1;
        const int two = 2;
        const int zero = 0;
        int R = int.Parse(arr[zero]);
        int G = int.Parse(arr[one]);
        int B = int.Parse(arr[two]);
        Dictionary<string, int> rgb = new()
        {
            { Red, R },
            { Green, G },
            { Blue, B }
        };
        rgb.Remove(C);
        Console.WriteLine(rgb.Values.Min());
        Environment.Exit(0);
    }
}