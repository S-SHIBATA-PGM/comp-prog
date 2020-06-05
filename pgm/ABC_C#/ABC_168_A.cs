using System;
using System.Linq;

class Program
{
    static void Main()
    {
        int N = int.Parse(Console.ReadLine());
        if (new int[] { 2, 4, 5, 7, 9 }.Contains(N % 10))
            Console.WriteLine("hon");
        else if (new int[] { 0, 1, 4, 6, 8 }.Contains(N % 10))
            Console.WriteLine("pon");
        else
            Console.WriteLine("bon");
        return;
    }
}
