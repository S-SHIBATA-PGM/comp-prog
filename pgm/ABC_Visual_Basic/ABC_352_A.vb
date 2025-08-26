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
        Const two As Integer = 2
        Const three As Integer = 3
        Const zero As Integer = 0
        Dim N As Integer = Integer.Parse(arr(zero))
        Dim X As Integer = Integer.Parse(arr(one))
        Dim Y As Integer = Integer.Parse(arr(two))
        Dim Z As Integer = Integer.Parse(arr(three))
        Const Yes As String = "Yes"
        Const No As String = "No"
        If Math.Min(X, Y) <= Z AndAlso Z <= Math.Max(X, Y) Then
            Console.WriteLine(Yes)
        Else
            Console.WriteLine(No)
        End If
        Return
    End Sub
End Class