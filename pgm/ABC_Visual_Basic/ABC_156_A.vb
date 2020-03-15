Class Main
    Public Shared Sub Main()
        Dim N, R As Integer
        Dim arr(2) As String
        arr = Split(Console.ReadLine())
        N = arr(0) : R = arr(1)
        Console.WriteLine(if(10 <= N, R, R + 100 * (10 - N)))
    End Sub
End Class
