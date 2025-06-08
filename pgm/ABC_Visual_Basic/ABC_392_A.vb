' Option Strict On
' Imports System.Collections.Generic
' Imports System.Globalization
' Imports System.IO
' Imports System.Linq
' Imports System.Text
' Imports System.Text.RegularExpressions

Class Main
    Public Shared Sub Main()
        Dim A() As Integer = Array.ConvertAll(
        Console.ReadLine().Split(),
        Function(x As String) Integer.Parse(x))
        Const Yes As String = "Yes"
        Const No As String = "No"
        Dim B() As Integer = A
        Array.Sort(Of Integer)(B)
        If B(0) * B(1) = B(2) Then
            Console.WriteLine(Yes)
        Else
            Console.WriteLine(No)
        End If
        Return
    End Sub
End Class