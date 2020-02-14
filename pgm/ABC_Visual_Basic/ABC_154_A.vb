Public Class Main
    Public Shared Sub Main(ByVal args() As String)
        Dim S, T, U as String
        Dim A, B as Integer
        Dim arr(2) as String
        arr = Split(Console.ReadLine())
        S = arr(0) : T = arr(1)
        arr = Split(Console.ReadLine())
        A = arr(0) : B = arr(1)
        U = Console.ReadLine()
        If S = U
            A -= 1
        Else
            B -= 1
        End If
        Console.WriteLine(A.ToString() & " " & B.ToString())
    End Sub
End Class
