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
        Const Yes As String = "Yes"
        Const No As String = "No"
        Const one As Integer = 1
        Const two As Integer = 2
        Const three As Integer = 3
        Const zero As Integer = 0
        Dim X As Integer = Integer.Parse (arr(zero))
        Dim Y As Integer = Integer.Parse (arr(one))
        If X < Y AndAlso Y - X <= two Then
            Console.WriteLine(Yes)
        ElseIf X > Y AndAlso X - Y <= three Then
            Console.WriteLine(Yes)
        Else
            Console.WriteLine(No)
        End If
        Return
    End Sub
End Class