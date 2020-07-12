' Imports System.Collections.Generic
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim A, B As Integer
        Dim arr() As String
        arr = Split(Console.ReadLine())
        A = arr(0) : B = arr(1)
        Dim ans As Integer = 0
        DIm cur As Integer = 1
        While cur < B
            ans += 1
            cur += A - 1
        End While
        Console.WriteLine(ans)
        Return
    End Sub
End Class