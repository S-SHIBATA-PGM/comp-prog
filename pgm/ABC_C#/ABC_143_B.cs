using System;
using System.Collections.Generic;
// using System.Globalization;
using System.IO;
// using System.Linq;
// using System.Text;

class Program
{
    static void Main()
    {
        FastScanner sc = new FastScanner(Console.OpenStandardInput());
        int N = sc.nextInt();
        int[] d = sc.intArray(N);
        List<List<int>> com = combination(d, 2);
        int ans = 0;
        for (int i = 0; i < com.Count; i++)
        {
            ans += com[i][0] * com[i][1];
        }
        Console.WriteLine(ans);
        return;
    }
    static List<List<int>> combination(int[] nums, int k)
    {
        List<List<int>> ret = new List<List<int>>();
        if (nums.Length < k) return ret;
        if (k == 1) for (int i = 0; i < nums.Length; i++) ret.Add(new List<int>() { nums[i] });
        else
        {
            for (int i = 0; i < nums.Length - k + 1; i++)
            {
                int[] cur = new int[nums.Length - i - 1];
                Array.Copy(nums, i + 1, cur, 0, nums.Length - i - 1);
                List<List<int>> rows = combination(cur, k - 1);
                for (int j = 0; j < rows.Count; j++)
                {
                    rows[j].Insert(0, nums[i]);
                    ret.Add(rows[j]);
                }
            }
        }
        return ret;
    }
}

// FastScanner start
public class FastScanner
{
    public readonly Stream str;
    private readonly byte[] buf = new byte[1024];
    private int len, ptr;
    public bool isEof = false;
    public FastScanner(Stream stream)
    {
        str = stream;
    }
    private T[] enumerate<T>(int n, Func<T> f)
    {
        var a = new T[n];
        for (int i = 0; i < n; ++i) a[i] = f();
        return a;
    }
    public char nextChar()
    {
        byte b = 0;
        do
        {
            b = read();
        }
        while ((b < 33 || 126 < b) && !isEof);
        return (char)b;
    }
    public int nextInt()
    {
        return (isEof) ? int.MinValue : (int)nextLong();
    }
    public long nextLong()
    {
        if (isEof)
        {
            return long.MinValue;
        }
        long ret = 0;
        byte b = 0;
        var ng = false;
        do
        {
            b = read();
        }
        while (b != '-' && (b < '0' || '9' < b));
        if (b == '-')
        {
            ng = true;
            b = read();
        }
        for (; true; b = read())
        {
            if (b < '0' || '9' < b)
            {
                return ng ? -ret : ret;
            }
            else ret = ret * 10 + b - '0';
        }
    }
    public int[] intArray(int n)
    {
        return enumerate(n, nextInt);
    }
    public long[] longArray(int n)
    {
        return enumerate(n, nextLong);
    }
    public char[] charArray(int n)
    {
        return enumerate(n, nextChar);
    }
    private byte read()
    {
        if (isEof)
        {
            return 0;
        }
        if (ptr >= len)
        {
            ptr = 0;
            if ((len = str.Read(buf, 0, 1024)) <= 0)
            {
                isEof = true;
                return 0;
            }
        }
        return buf[ptr++];
    }
}
// FastScanner end