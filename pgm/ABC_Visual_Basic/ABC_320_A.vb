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
        Const one As Integer = 1
        Const zero As Integer = 0
        Dim A = Integer.parse(arr(zero))
        Dim B = Integer.parse(arr(one))
        Console.WriteLine(A ^ B + B ^ A)
        Return
    End Sub
End Class