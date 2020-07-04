using System;
// using System.Collections.Generic;
// using System.Linq;
// using System.Text;

class Program
{
    static void Main()
    {
        string[] arr = Console.ReadLine().Split();
        int N;
        N = int.Parse(arr[0]);
        Console.WriteLine(Math.Floor((decimal)(N + 1) / 2) / N);
        return;
    }
}