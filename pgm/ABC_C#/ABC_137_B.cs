using System;
using System.Collections.Generic;
// using System.Linq;
// using System.Text;

class Program
{
    static void Main()
    {
        string[] arr = Console.ReadLine().Split();
        int K, X;
        K = int.Parse(arr[0]);
        X = int.Parse(arr[1]);
        List<int> ans = new List<int>();
        for (int i = X - K + 1; i < X + K; i++) ans.Add(i);
        Console.WriteLine(String.Join(" ", ans));
        return;
    }
}