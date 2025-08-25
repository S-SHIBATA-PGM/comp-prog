' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim H As Integer = Integer.parse(Console.ReadLine())
        Const one As Integer = 1
        Const base As Integer = 2
        Dim ans As Integer = 1
        Dim e As Integer = 1
        Dim val As Integer = 1
        While val <= H
            e *= base
            val += e
            ans += one
        End While
        Console.WriteLine(ans)
        Return
    End Sub
End Class