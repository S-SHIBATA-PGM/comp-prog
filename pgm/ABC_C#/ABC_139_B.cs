using System;
// using System.Collections.Generic;
// using System.Linq;
// using System.Text;

class Program
{
    static void Main()
    {
        string[] arr = Console.ReadLine().Split();
        int A, B;
        A = int.Parse(arr[0]);
        B = int.Parse(arr[1]);
        int ans = 0;
        int cur = 1;
        while (cur < B)
        {
            ans++;
            cur += A - 1;
        }
        Console.WriteLine(ans);
        return;
    }
}