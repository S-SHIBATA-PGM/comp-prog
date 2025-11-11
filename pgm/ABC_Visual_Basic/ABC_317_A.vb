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
        Dim N As Integer = Integer.parse(arr(zero))
        Dim H As Integer = Integer.parse(arr(one))
        Dim X As Integer = Integer.parse(arr(two))
        Dim P() As Integer = Array.ConvertAll(
        Console.ReadLine().Split(), Function(a) Integer.Parse(a))
        For i As Integer = zero To N - one
            If H + P(i) >= X Then
                Console.WriteLine(i + one)
                Exit For
            End If
        Next
        Return
    End Sub
End Class