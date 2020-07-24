' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim N, D As Integer
        Dim arr() As String
        arr = Split(Console.ReadLine())
        N = arr(0) : D = arr(1)
        Console.WriteLine(Math.Ceiling(N / (2 * D + 1)))
        Return
    End Sub
End Class