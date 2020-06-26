using System;
// using System.Collections.Generic;
// using System.Linq;
// using System.Text;

class Program
{
    static void Main()
    {
        int N = int.Parse(Console.ReadLine());
        bool flg = false;
        for (int i = 1; i < 10; i++)
        {
            for (int j = 1; j < 10; j++)
            {
                if (i * j == N)
                {
                    flg = true;
                    break;
                }
            }
            if (flg) break;
        }
        Console.WriteLine(flg ? "Yes" : "No");
        return;
    }
}