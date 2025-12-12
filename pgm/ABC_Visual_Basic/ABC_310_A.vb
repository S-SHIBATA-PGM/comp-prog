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
        DIm N As Integer = Integer.parse(arr(zero))
        DIm P As Integer = Integer.parse(arr(one))
        DIm Q As Integer = Integer.parse(arr(two))
        Dim D() As Integer = Array.ConvertAll(
        Console.ReadLine().Split(), Function(x) Integer.Parse(x))
        Dim price = Q + D.min()
        If P < price Then
            Console.WriteLine(P)
        Else
            Console.WriteLine(price)
        End If
        Return
    End Sub
End Class