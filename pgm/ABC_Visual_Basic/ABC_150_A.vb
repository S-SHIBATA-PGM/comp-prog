Public Class Main
    Public Shared Sub Main(ByVal args() As String)
        Dim K, X as Integer
        Dim arr(2) as String
        arr = Split(Console.ReadLine())
        K = arr(0) : X = arr(1)
        Console.WriteLine(if(X <= K * 500, "Yes", "No"))
    End Sub
End Class
