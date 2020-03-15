Class Main
    Public Shared Sub Main()
        Dim N As Integer
        Dim K As Integer
        Dim arr() As String
        arr = Split(Console.ReadLine())
        N = arr(0) : K = arr(1)
        Dim cnt As Integer = 1
        While K ^ cnt <= N
            cnt += 1
        End While
        Console.WriteLine(cnt)
    End Sub
End Class
