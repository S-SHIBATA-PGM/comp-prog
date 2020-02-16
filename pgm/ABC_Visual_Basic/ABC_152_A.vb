Public Class Main
    Public Shared Sub Main(ByVal args() As String)
        Dim N, M as Integer
        Dim arr(2) as String
        arr = Split(Console.ReadLine())
        N = arr(0) : M = arr(1)
        Console.WriteLine(If(N = M, "Yes", "No"))
    End Sub
End Class
