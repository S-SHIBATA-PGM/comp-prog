' Imports System.Collections.Generic
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim A, B As Integer
        Dim arr() As String
        arr = Split(Console.ReadLine())
        A = arr(0) : B = arr(1)
        Console.WriteLine(If(2 * B < A, A - 2 * B, 0))
        Return
    End Sub
End Class