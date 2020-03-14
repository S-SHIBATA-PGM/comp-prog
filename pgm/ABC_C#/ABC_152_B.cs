using System;

class Program
{
    static void Main()
    {
        String[] arr = Console.ReadLine().Split();
        string a = arr[0], b = arr[1];
        Console.WriteLine(
            int.Parse(a) < int.Parse(b) ?
            new string(a[0], int.Parse(b)) : new string(b[0], int.Parse(a)));
    }
}