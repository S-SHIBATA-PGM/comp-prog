using System;
// using System.Collections.Generic;

class Program
{
    static void Main()
    {
        String[] arr = Console.ReadLine().Split();
        int X, Y, Z;
        X = int.Parse(arr[0]);
        Y = int.Parse(arr[1]);
        Z = int.Parse(arr[2]);
        Console.WriteLine(
            Z.ToString() + " " + X.ToString() + " " + Y.ToString());
    }
}