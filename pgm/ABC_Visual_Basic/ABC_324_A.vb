' Option Strict On
Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Console.ReadLine()
        Dim arr() As Integer = Array.ConvertAll(
        Console.ReadLine().Split(),
        Function(x As String) Integer.Parse(x))
        Const Yes As String = "Yes"
        Const No As String = "No"
        Const one As Integer = 1
        Const zero As Integer = 0
        Dim A As New HashSet(Of Integer)()
        For i As Integer = zero To arr.Length - one
            A.add(arr(i))
        Next
        If A.Count = one Then
            Console.WriteLine(Yes)
        Else
            Console.WriteLine(No)
        End If
        Return
    End Sub
End Class