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
        Const zero As Integer = 0
        const space As String = " "
        Dim M As Integer = Integer.Parse(arr(zero))
        Dim D As Integer = Integer.Parse(arr(one))
        Dim ymd() As String = Console.ReadLine().Split()
        Dim year As Integer = Integer.Parse(ymd(zero))
        Dim month As Integer = Integer.Parse(ymd(one))
        Dim day As Integer = Integer.Parse(ymd(two))
        day += one
        If day > D Then
            day -= D
            month += one
        End If
        If month > M Then
            month -= M
            year += one
        End If
        Console.Write(year)
        Console.Write(space)
        Console.Write(month)
        Console.Write(space)
        Console.WriteLine(day)
        Return
    End Sub
End Class