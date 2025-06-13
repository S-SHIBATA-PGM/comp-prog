' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim ABC() As Integer = Array.ConvertAll(
        Console.ReadLine().Split(),
        Function(x As String) Integer.Parse(x))
        Const Yes As String = "Yes"
        Const No As string = "No"
        Array.Sort(Of Integer)(ABC)
        if ABC(0) = ABC(1) AndAlso ABC(1) = ABC(2) Then
            Console.WriteLine(Yes)
        ElseIf ABC(0) + ABC(1) = ABC(2) Then
            Console.WriteLine(Yes)
        Else
            Console.WriteLine(No)
        End If
        Return
    End Sub
End Class