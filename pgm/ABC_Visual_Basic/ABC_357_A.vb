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
        Dim H() As Integer = Array.ConvertAll(
            Console.ReadLine().Split(),
            Function (x As String) Integer.Parse(x))
        Const one As Integer = 1
        Dim N As Integer = Integer.Parse(arr(0))
        Dim M As Integer = Integer.Parse(arr(1))
        Dim ans As Integer = 0
        Dim sum As Integer = 0
        For Each num As Integer In H
            sum += num
            If sum > M Then
                Exit For
            End If
            ans += one
        Next
        Console.WriteLine(ans)
        Return
    End Sub
End Class