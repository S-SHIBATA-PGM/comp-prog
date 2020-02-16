Public Class Main
    Public Shared Sub Main(ByVal args() As String)
        Dim H, A as Integer
        Dim arr(2) as String
        arr = Split(Console.ReadLine())
        H = arr(0) : A = arr(1)
        Console.WriteLine(IIf(H mod A <> 0, Math.Floor(H / A) + 1, H / A))
    End Sub
End Class
