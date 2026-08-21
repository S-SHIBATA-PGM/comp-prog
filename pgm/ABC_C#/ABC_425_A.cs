using System;
// using System.Collections.Generic;
// using System.Globalization;
// using System.IO;
// using System.Linq;
// using System.Text;
// using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        int N = int.Parse(Console.ReadLine());
        const int one = 1;
        const int two = 2;
        const int zero = 0;
        int cubes = zero;
        for (int i = one; i <= N; i++)
        {
            int cube = i * i * i;
            if (i % two != zero)
            {
                cubes -= cube;
            }
            else
            {
                cubes += cube;
            }
        }
        Console.WriteLine(cubes);
        Environment.Exit(0);
    }
}