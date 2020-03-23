' Imports System.Collections.Generic
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N, M As Integer
        Dim arr() As String
        arr = Split(Console.ReadLine())
        N = arr(0) : M = arr(1)
        Console.WriteLine( _
            Math.Ceiling(N * (N - 1) / 2) + Math.Ceiling(M * (M - 1) / 2))
    End Sub
End Class
