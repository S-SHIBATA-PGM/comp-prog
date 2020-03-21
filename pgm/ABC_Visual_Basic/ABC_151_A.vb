Public Class Main
    Public Shared Sub Main(ByVal args() As String)
        Dim C as Char
        C = Console.ReadLine()
        Console.WriteLine(Chr(Asc(C) + 1))
    End Sub
End Class