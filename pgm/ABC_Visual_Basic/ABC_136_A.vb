' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim A, B, C As Integer
        Dim arr() As String
        arr = Split(Console.ReadLine())
        A = arr(0) : B = arr(1) : C = arr(2)
        Console.WriteLine(If(A < B + C, B + C - A, 0))
        Return
    End Sub
End Class