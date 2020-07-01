using System;
using System.Collections.Generic;
using System.Linq;
// using System.Text;

class Program
{
    static void Main()
    {
        string S = Console.ReadLine();
        string T = Console.ReadLine();
        var z = S.Zip(T, (first, second) => new char[] { first, second });
        int ans = 0;
        foreach (var v in z) if (v[0] != v[1]) ans++;
        Console.WriteLine(ans);
        return;
    }
    IEnumerable<TResult> Zip<TResult, T1, T2>
        (IEnumerable<T1> a,
         IEnumerable<T2> b,
         Func<T1, T2, TResult> combine)
    {
        using (var f = a.GetEnumerator())
        using (var s = b.GetEnumerator())
        {
            while (f.MoveNext() && s.MoveNext())
                yield return combine(f.Current, s.Current);
        }
    }
}