' (N * (L + (L + N - 1))) / 2
' (N * (2 * L + N - 1)) / 2
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N, L As Integer
        Dim arr() As String
        arr = Split(Console.ReadLine())
        N = arr(0) : L = arr(1)
        Dim ans As Integer = (N * (2 * L + N - 1)) / 2
        If 0 < L
            ans -= L
        ElseIf L + N - 1 < 0
            ans -= L + N - 1
        End If
        Console.WriteLine(ans)
        Return
    End Sub
End Class