' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim arr() As String = Console.ReadLine().Split()
        Const blank As String = ""
        Const space As String = " "
        Const one As Integer = 1
        Const two As Integer = 2
        Const zero As Integer = 0
        Dim A As Integer = Integer.Parse(arr(zero))
        Dim B As Integer = Integer.Parse(arr(one))
        Dim D As Integer = Integer.Parse(arr(two))
        Dim s As String = blank
        For i As Integer = A To B Step D
            Console.Write(s)
            Console.Write(i)
            s = space
        Next
        Console.WriteLine()
        Return
    End Sub
End Class