Class Main
    Public Shared Sub Main()
        Dim N, A, B As Long
        Dim arr() As String
        arr = Split(Console.ReadLine())
        N = arr(0) : A = arr(1) : B = arr(2)
        Dim dv, rm As Long
        dv = Math.Floor(N / (A + B))
        rm = N Mod (A + B)
        Console.WriteLine(A * dv + Math.Min(A, rm))
    End Sub
End Class