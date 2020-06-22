' Imports System.Collections.Generic
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N As Integer
        N = Console.ReadLine()
        Dim S, T As String
        Dim arr() As String
        arr = Split(Console.ReadLine())
        S = arr(0) : T = arr(1)
        Dim ans As String = String.Empty
        For i As Integer = 0 To N - 1
            ans = ans & S(i) & T(i)
        Next
        Console.WriteLine(ans)
        Return
    End Sub
End Class
